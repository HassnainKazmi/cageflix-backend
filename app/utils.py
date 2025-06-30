import logging

import pandas as pd
from sqlalchemy import select

from app.database import database

logger = logging.getLogger(__name__)


def deduplicate_df(df: pd.DataFrame, pk_columns):
    """Remove duplicate rows based on primary key columns. Keeps the first occurrence."""
    return df.drop_duplicates(subset=pk_columns, keep="first")


async def bulk_insert(table, df: pd.DataFrame, pk_columns):
    """
    Bulk insert dataframe into a postgres table using the databases module.
    Deduplicates rows based on primary key columns before insert.
    Converts NaNs to None to avoid DB errors.
    """
    logger.info(f"Inserting into {table.name}: {len(df)} rows")

    df = deduplicate_df(df, pk_columns)
    df = df.where(pd.notnull(df), None)
    values = df.to_dict(orient="records")
    if not values:
        logger.info(f"No data to insert for table {table.name}.")
        return

    query = table.insert()
    try:
        await database.execute_many(query=query, values=values)
        logger.info(f"Inserted {len(values)} rows into {table.name}")
    except Exception:
        logger.error(f"Failed to insert data into {table.name}", exc_info=True)


async def is_table_populated(database, table):
    """Return True if the table has at least one record."""
    query = select(table).limit(1)
    result = await database.fetch_one(query)
    return result is not None
