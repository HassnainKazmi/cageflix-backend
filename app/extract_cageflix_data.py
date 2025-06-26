import logging
from pathlib import Path

import pandas as pd

logger = logging.getLogger(__name__)


DATA_DIR = Path("./files")
NAME_BASICS = DATA_DIR / "name.basics.tsv"
TITLE_PRINCIPALS = DATA_DIR / "title.principals.tsv"
TITLE_BASICS = DATA_DIR / "title.basics.tsv"
TITLE_RATINGS = DATA_DIR / "title.ratings.tsv"


def find_nicolas_cage_nconst():
    """Find Nicolas Cage's unique nconst from name.basics.tsv"""
    logger.info("Loading name.basics.tsv ...")
    df_names = pd.read_csv(NAME_BASICS, sep="\t", dtype=str, na_values="\\N")
    cage_row = df_names[df_names["primaryName"] == "Nicolas Cage"]
    if cage_row.empty:
        logger.error("Nicolas Cage not found in name.basics.tsv!")
        raise Exception("Nicolas Cage not found in name.basics.tsv!")
    nconst = cage_row.iloc[0]["nconst"]
    return nconst


def get_cage_titles(nconst):
    """Find all tconsts where Nicolas Cage appears as actor, self, director, producer."""
    logger.info("Loading title.principals.tsv ...")
    usecols = ["tconst", "nconst", "category", "job", "characters"]
    df_principals = pd.read_csv(
        TITLE_PRINCIPALS, sep="\t", dtype=str, na_values="\\N", usecols=usecols
    )
    cage_roles = df_principals[
        (df_principals["nconst"] == nconst)
        & (df_principals["category"].isin(["actor", "self", "director", "producer"]))
    ]
    tconsts = cage_roles["tconst"].unique().tolist()
    return tconsts, df_principals


def get_titles_metadata(tconsts):
    """Extract movie/show metadata for given tconsts."""
    logger.info("Loading title.basics.tsv ...")
    usecols = [
        "tconst",
        "titleType",
        "primaryTitle",
        "originalTitle",
        "isAdult",
        "startYear",
        "endYear",
        "runtimeMinutes",
        "genres",
    ]
    df_titles = pd.read_csv(
        TITLE_BASICS, sep="\t", dtype=str, na_values="\\N", usecols=usecols
    )
    df_cage_titles = df_titles[df_titles["tconst"].isin(tconsts)].copy()
    df_cage_titles["isAdult"] = df_cage_titles["isAdult"].astype("Int64")
    if "isAdult" in df_cage_titles.columns:
        df_cage_titles["isAdult"] = pd.to_numeric(
            df_cage_titles["isAdult"], errors="coerce"
        ).astype("boolean")
    return df_cage_titles


def get_ratings(tconsts):
    """Extract ratings for Cage's titles."""
    logger.info("Loading title.ratings.tsv ...")
    df_ratings = pd.read_csv(TITLE_RATINGS, sep="\t", dtype=str, na_values="\\N")
    df_cage_ratings = df_ratings[df_ratings["tconst"].isin(tconsts)].copy()

    df_ratings["numVotes"] = pd.to_numeric(
        df_ratings["numVotes"], errors="coerce"
    ).astype("Int64")

    df_ratings["averageRating"] = pd.to_numeric(
        df_ratings["averageRating"], errors="coerce"
    )
    return df_cage_ratings


def get_cast_for_titles(tconsts):
    """Extract all actors for each Cage title (for fellow actor search)."""
    logger.info("Loading title.principals.tsv (for cast extraction) ...")
    usecols = ["tconst", "nconst", "category", "job", "characters"]
    df_principals = pd.read_csv(
        TITLE_PRINCIPALS, sep="\t", dtype=str, na_values="\\N", usecols=usecols
    )
    # Only interested in actors/actresses
    df_cast = df_principals[
        (df_principals["tconst"].isin(tconsts))
        & (df_principals["category"].isin(["actor", "actress"]))
    ].copy()
    df_cast = df_cast.drop_duplicates(subset=["tconst", "nconst"])
    all_actor_nconsts = df_cast["nconst"].unique().tolist()
    return df_cast, all_actor_nconsts


def get_person_names(nconsts):
    """Map nconsts to display names."""
    logger.info("Loading name.basics.tsv ...")
    df_names = pd.read_csv(
        NAME_BASICS,
        sep="\t",
        dtype=str,
        na_values="\\N",
        usecols=[
            "nconst",
            "primaryName",
            "birthYear",
            "deathYear",
            "primaryProfession",
        ],
    )
    df_persons = df_names[df_names["nconst"].isin(nconsts)].copy()
    df_persons = df_persons.drop_duplicates(subset=["nconst"])
    return df_persons


def extract_cageflix_data():
    # Find Nicolas Cage's nconst
    cage_nconst = find_nicolas_cage_nconst()

    # Get all titles where Nicolas Cage is actor
    cage_tconsts, df_principals = get_cage_titles(cage_nconst)

    # Get metadata for these titles
    df_titles = get_titles_metadata(cage_tconsts)

    # Get ratings for these titles
    df_ratings = get_ratings(cage_tconsts)

    # Get all cast (fellow actors of Nicolas Cage) for these titles
    df_cast, all_actor_nconsts = get_cast_for_titles(cage_tconsts)

    # Get names for all persons (Nicolas Cage + all fellow actors)
    df_persons = get_person_names(all_actor_nconsts + [cage_nconst])

    return {
        "titles": df_titles,
        "ratings": df_ratings,
        "cast": df_cast,
        "persons": df_persons,
    }
