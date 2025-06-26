import databases
import sqlalchemy

from app.config import config

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
