from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker
import os

DATABASE_URL = os.getenv("DATABASE_URL")
engine = create_engine(DATABASE_URL, future=True)
SessionLocal = sessionmaker(bind=engine, autocommit=False, autoflush=False)

def init_db():
    # run SQL init (assumes sql/init.sql exists)
    with engine.connect() as conn:
        with open('sql/init.sql', 'r', encoding='utf-8') as f:
            sql = f.read()
            conn.execute(text(sql))
            conn.commit()
