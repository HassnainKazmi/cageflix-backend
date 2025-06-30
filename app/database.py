import logging

import databases
import psycopg2
import sqlalchemy
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

from app.config import config

logger = logging.getLogger(__name__)


def create_database(db_name: str):
    """Check if the target PostgreSQL database exists, create it if it does not."""
    conn = None
    try:
        conn = psycopg2.connect(
            dbname="postgres",
            user=config.DATABASE_USER,
            password=config.DATABASE_PASSWORD,
            host=config.DATABASE_HOST,
            port=config.DATABASE_PORT,
        )
        conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
        with conn.cursor() as cursor:
            cursor.execute("SELECT 1 FROM pg_database WHERE datname = %s", (db_name,))
            exists = cursor.fetchone()
            if not exists:
                logger.info(f"Database '{db_name}' does not exist. Creating it...")
                cursor.execute(f'CREATE DATABASE "{db_name}"')
                logger.info(f"Database '{db_name}' created successfully.")
            else:
                logger.info(f"Database '{db_name}' already exists.")
    except Exception:
        logger.error("Error while creating database", exc_info=True)
        raise
    finally:
        if conn:
            conn.close()


create_database(config.DATABASE_NAME)

metadata = sqlalchemy.MetaData()

persons = sqlalchemy.Table(
    "persons",
    metadata,
    sqlalchemy.Column("nconst", sqlalchemy.String, primary_key=True),
    sqlalchemy.Column("primaryName", sqlalchemy.String, nullable=False),
    sqlalchemy.Column("birthYear", sqlalchemy.String),
    sqlalchemy.Column("deathYear", sqlalchemy.String),
    sqlalchemy.Column("primaryProfession", sqlalchemy.String),
)

titles = sqlalchemy.Table(
    "titles",
    metadata,
    sqlalchemy.Column("tconst", sqlalchemy.String, primary_key=True),
    sqlalchemy.Column("titleType", sqlalchemy.String),
    sqlalchemy.Column("primaryTitle", sqlalchemy.String, nullable=False),
    sqlalchemy.Column("originalTitle", sqlalchemy.String),
    sqlalchemy.Column("isAdult", sqlalchemy.Boolean),
    sqlalchemy.Column("startYear", sqlalchemy.String),
    sqlalchemy.Column("endYear", sqlalchemy.String),
    sqlalchemy.Column("runtimeMinutes", sqlalchemy.String),
    sqlalchemy.Column("genres", sqlalchemy.String),
)

ratings = sqlalchemy.Table(
    "ratings",
    metadata,
    sqlalchemy.Column(
        "tconst",
        sqlalchemy.String,
        sqlalchemy.ForeignKey("titles.tconst"),
        primary_key=True,
    ),
    sqlalchemy.Column("averageRating", sqlalchemy.Numeric),
    sqlalchemy.Column("numVotes", sqlalchemy.Integer),
)

cast = sqlalchemy.Table(
    "cast",
    metadata,
    sqlalchemy.Column(
        "tconst",
        sqlalchemy.String,
        sqlalchemy.ForeignKey("titles.tconst"),
        primary_key=True,
    ),
    sqlalchemy.Column(
        "nconst",
        sqlalchemy.String,
        sqlalchemy.ForeignKey("persons.nconst"),
        primary_key=True,
    ),
    sqlalchemy.Column("category", sqlalchemy.String),
    sqlalchemy.Column("job", sqlalchemy.String),
    sqlalchemy.Column("characters", sqlalchemy.String),
)

engine = sqlalchemy.create_engine(config.DATABASE_URL.replace("+asyncpg", ""))

metadata.create_all(engine)

database = databases.Database(config.DATABASE_URL)
