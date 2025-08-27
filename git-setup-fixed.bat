@echo off
echo Git Setup Script for AI/ML Curriculum
echo.

set BASE_DIR=E:\Git_Development_workspaces\AI-ML-MASTERY

echo Initializing Git repositories for all AI/ML projects...
echo.

REM Main repository setup
echo === Setting up Main AI-ML-MASTERY Repository ===
cd "%BASE_DIR%"

REM Check if already initialized
if exist ".git" (
    echo   - Git already initialized in main directory
) else (
    echo   - Initializing Git repository...
    git init
    echo   - Git initialized
)

REM Create main .gitignore if it doesn't exist
if not exist ".gitignore" (
    echo   - Creating .gitignore...
    (
        echo # Python
        echo __pycache__/
        echo *.py[cod]
        echo *$py.class
        echo *.so
        echo .Python
        echo env/
        echo venv/
        echo .venv/
        echo pip-log.txt
        echo pip-delete-this-directory.txt
        echo .tox/
        echo .coverage
        echo .pytest_cache/
        echo.
        echo # Jupyter Notebook
        echo .ipynb_checkpoints
        echo */.ipynb_checkpoints/*
        echo.
        echo # Data files
        echo *.csv
        echo *.xlsx
        echo *.json
        echo *.parquet
        echo *.h5
        echo *.pkl
        echo *.pickle
        echo data/raw/
        echo data/external/
        echo.
        echo # Models
        echo models/trained/
        echo checkpoints/
        echo.
        echo # OS
        echo .DS_Store
        echo .DS_Store?
        echo ._*
        echo .Spotlight-V100
        echo .Trashes
        echo ehthumbs.db
        echo Thumbs.db
        echo.
        echo # IDE
        echo .vscode/settings.json
        echo .idea/
        echo *.swp
        echo *.swo
        echo *~
        echo.
        echo # Logs
        echo logs/
        echo *.log
        echo.
        echo # Environment variables
        echo .env
        echo .env.local
        echo .env.*.local
        echo.
        echo # Temporary files
        echo tmp/
        echo temp/
    ) > .gitignore
    echo   - .gitignore created
)

REM Create main README if it doesn't exist
if not exist "README.md" (
    echo   - Creating README.md...
    (
        echo # AI/ML Mastery Journey
        echo.
        echo Complete AI/ML learning journey through 12 comprehensive projects
        echo.
        echo ## Portfolio Overview
        echo.
        echo This repository contains my complete journey through mastering AI/ML through hands-on projects, covering:
        echo.
        echo - **Foundational Projects ^(1-3^)**: Core ML and Statistics
        echo - **Intermediate Projects ^(4-6^)**: Advanced AI Domains
        echo - **Advanced Projects ^(7-9^)**: Specialized AI Research
        echo - **Master Projects ^(10-12^)**: Industry Leadership
        echo.
        echo ## Project Structure
        echo.
        echo Each project is implemented as a separate directory with:
        echo - Complete implementation code
        echo - Jupyter notebooks with analysis
        echo - Documentation and reports
        echo - Deployment configurations
        echo - Performance metrics and results
        echo.
        echo ## Academic Equivalency
        echo.
        echo This portfolio demonstrates mastery equivalent to:
        echo - Bachelor's Degree in AI/ML/Data Science
        echo - Master's Degree concepts in Advanced AI
        echo - PhD-level research in specialized domains
        echo - Industry certifications from major cloud providers
        echo.
        echo ## Business Impact
        echo.
        echo Each project includes real-world applications with measurable business impact:
        echo - Revenue generation through AI solutions
        echo - Cost reduction through optimization
        echo - Process improvement through automation
        echo - Innovation through research and development
        echo.
        echo **View individual projects below for detailed implementations and results.**
    ) > README.md
    echo   - README.md created
)

echo.
echo === Setting up individual project repositories ===

REM Setup each project
for %%P in (01-business-analytics 02-healthcare-ai 03-computer-vision 04-nlp-assistant 05-autonomous-systems 06-mlops-platform 07-ai-research-lab 08-financial-ai 09-climate-ai 10-education-ai 11-smart-city 12-ai-governance) do (
    echo.
    echo - Setting up %%P...
    cd "%BASE_DIR%\%%P"
    
    REM Check if already initialized
    if exist ".git" (
        echo   - Git already initialized in %%P
    ) else (
        echo   - Initializing Git repository in %%P...
        git init
        echo   - Git initialized in %%P
    )
    
    REM Create project-specific .gitignore if it doesn't exist
    if not exist ".gitignore" (
        copy "%BASE_DIR%\.gitignore" ".gitignore" >nul 2>&1
        echo   - .gitignore copied to %%P
    )
    
    cd "%BASE_DIR%"
)

echo.
echo Git Setup Complete!
echo.
echo What was configured:
echo   - Main AI-ML-MASTERY repository initialized
echo   - All 12 project repositories initialized  
echo   - .gitignore files configured for AI/ML projects
echo   - README.md created for main repository
echo   - Git workflow guide available in all projects
echo.
echo Next Steps:
echo   1. Connect to your GitHub repository:
echo      git remote add origin https://github.com/mibrahimai/ai-ml-mastery.git
echo   2. Make your first commit:
echo      git add .
echo      git commit -m "Initial commit: AI/ML Portfolio structure"
echo      git push -u origin main
echo.
echo Full instructions available in: GIT-WORKFLOW-GUIDE.md
echo.
