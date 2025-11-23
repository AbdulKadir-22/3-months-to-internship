import os
from typing import Optional
from pydantic_settings import BaseSettings
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

class Settings(BaseSettings):
    """
    Application configuration settings loaded from environment variables
    """
    
    # Google AI Configuration
    google_ai_api_key: str = os.getenv("GOOGLE_AI_API_KEY", "")
    gemini_model: str = os.getenv("GEMINI_MODEL", "gemini-1.5-flash")
    max_tokens: int = int(os.getenv("MAX_TOKENS", "2048"))
    temperature: float = float(os.getenv("TEMPERATURE", "0.7"))
    
    # Application Settings
    app_name: str = os.getenv("APP_NAME", "Adaptive Learning System")
    environment: str = os.getenv("ENVIRONMENT", "development")
    debug: bool = os.getenv("DEBUG", "True").lower() == "true"
    
    # Server Configuration
    host: str = os.getenv("HOST", "0.0.0.0")
    port: int = int(os.getenv("PORT", "8000"))
    
    # Database Configuration
    database_url: str = os.getenv("DATABASE_URL", "sqlite:///./adaptive_learning.db")
    
    # Security
    secret_key: str = os.getenv("SECRET_KEY", "your-secret-key-change-this")
    algorithm: str = os.getenv("ALGORITHM", "HS256")
    access_token_expire_minutes: int = int(os.getenv("ACCESS_TOKEN_EXPIRE_MINUTES", "30"))
    
    # CORS Settings
    frontend_url: str = os.getenv("FRONTEND_URL", "http://localhost:5173")
    
    class Config:
        env_file = ".env"
        case_sensitive = False

    def validate_config(self) -> bool:
        """
        Validate critical configuration values
        """
        if not self.google_ai_api_key or self.google_ai_api_key == "your_google_ai_api_key_here":
            raise ValueError("GOOGLE_AI_API_KEY must be set in .env file")
        
        return True

# Create a global settings instance
settings = Settings()

# Validate settings on import (optional - comment out during initial setup)
# settings.validate_config()