from pydantic_settings import BaseSettings
from typing import List


class Settings(BaseSettings):
    PROJECT_NAME: str = "My SaaS App"
    SECRET_KEY: str
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 30

    DATABASE_URL: str

    ALLOWED_ORIGINS: List[str] = [
        "http://localhost:3000",
        "http://localhost",
    ]

    class Config:
        env_file = ".env"
        case_sensitive = True


settings = Settings()
