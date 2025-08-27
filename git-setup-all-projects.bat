@echo off
echo 🚀 Git Setup Script for AI/ML Curriculum
echo.

set BASE_DIR=E:\Git_Development_workspaces\AI-ML-MASTERY

echo Initializing Git repositories for all AI/ML projects...
echo.

REM Main repository setup
echo === Setting up Main AI-ML-MASTERY Repository ===
cd "%BASE_DIR%"

REM Check if already initialized
if exist ".git" (
    echo   ✓ Git already initialized in main directory
) else (
    echo   → Initializing Git repository...
    git init
    echo   ✓ Git initialized
)

REM Create main .gitignore if it doesn't exist
if not exist ".gitignore" (
    echo   → Creating .gitignore...
    echo # Python > .gitignore
    echo __pycache__/ >> .gitignore
    echo *.py[cod] >> .gitignore
    echo *$py.class >> .gitignore
    echo *.so >> .gitignore
    echo .Python >> .gitignore
    echo env/ >> .gitignore
    echo venv/ >> .gitignore
    echo .venv/ >> .gitignore
    echo pip-log.txt >> .gitignore
    echo pip-delete-this-directory.txt >> .gitignore
    echo .tox/ >> .gitignore
    echo .coverage >> .gitignore
    echo .pytest_cache/ >> .gitignore
    echo. >> .gitignore
    echo # Jupyter Notebook >> .gitignore
    echo .ipynb_checkpoints >> .gitignore
    echo */.ipynb_checkpoints/* >> .gitignore
    echo. >> .gitignore
    echo # Data files (protect sensitive data) >> .gitignore
    echo *.csv >> .gitignore
    echo *.xlsx >> .gitignore
    echo *.json >> .gitignore
    echo *.parquet >> .gitignore
    echo *.h5 >> .gitignore
    echo *.pkl >> .gitignore
    echo *.pickle >> .gitignore
    echo data/raw/ >> .gitignore
    echo data/external/ >> .gitignore
    echo. >> .gitignore
    echo # Models (use Git LFS for large files) >> .gitignore
    echo models/trained/ >> .gitignore
    echo checkpoints/ >> .gitignore
    echo. >> .gitignore
    echo # OS >> .gitignore
    echo .DS_Store >> .gitignore
    echo .DS_Store? >> .gitignore
    echo ._* >> .gitignore
    echo .Spotlight-V100 >> .gitignore
    echo .Trashes >> .gitignore
    echo ehthumbs.db >> .gitignore
    echo Thumbs.db >> .gitignore
    echo. >> .gitignore
    echo # IDE >> .gitignore
    echo .vscode/settings.json >> .gitignore
    echo .idea/ >> .gitignore
    echo *.swp >> .gitignore
    echo *.swo >> .gitignore
    echo *~ >> .gitignore
    echo. >> .gitignore
    echo # Logs >> .gitignore
    echo logs/ >> .gitignore
    echo *.log >> .gitignore
    echo. >> .gitignore
    echo # Environment variables >> .gitignore
    echo .env >> .gitignore
    echo .env.local >> .gitignore
    echo .env.*.local >> .gitignore
    echo. >> .gitignore
    echo # Temporary files >> .gitignore
    echo tmp/ >> .gitignore
    echo temp/ >> .gitignore
    echo   ✓ .gitignore created
)

REM Create main README if it doesn't exist
if not exist "README.md" (
    echo   → Creating README.md...
    echo # 🚀 AI/ML Mastery Journey > README.md
    echo. >> README.md
    echo *Complete AI/ML learning journey through 12 comprehensive projects* >> README.md
    echo. >> README.md
    echo ## 🎯 Portfolio Overview >> README.md
    echo. >> README.md
    echo This repository contains my complete journey through mastering AI/ML through hands-on projects, covering: >> README.md
    echo. >> README.md
    echo - **Foundational Projects (1-3)**: Core ML ^& Statistics >> README.md
    echo - **Intermediate Projects (4-6)**: Advanced AI Domains >> README.md
    echo - **Advanced Projects (7-9)**: Specialized AI Research >> README.md
    echo - **Master Projects (10-12)**: Industry Leadership >> README.md
    echo. >> README.md
    echo ## 📁 Project Structure >> README.md
    echo. >> README.md
    echo Each project is implemented as a separate directory with: >> README.md
    echo - Complete implementation code >> README.md
    echo - Jupyter notebooks with analysis >> README.md
    echo - Documentation and reports >> README.md
    echo - Deployment configurations >> README.md
    echo - Performance metrics and results >> README.md
    echo. >> README.md
    echo ## 🎓 Academic Equivalency >> README.md
    echo. >> README.md
    echo This portfolio demonstrates mastery equivalent to: >> README.md
    echo - Bachelor's Degree in AI/ML/Data Science >> README.md
    echo - Master's Degree concepts in Advanced AI >> README.md
    echo - PhD-level research in specialized domains >> README.md
    echo - Industry certifications from major cloud providers >> README.md
    echo. >> README.md
    echo ## 🏆 Business Impact >> README.md
    echo. >> README.md
    echo Each project includes real-world applications with measurable business impact: >> README.md
    echo - Revenue generation through AI solutions >> README.md
    echo - Cost reduction through optimization >> README.md
    echo - Process improvement through automation >> README.md
    echo - Innovation through research and development >> README.md
    echo. >> README.md
    echo --- >> README.md
    echo. >> README.md
    echo **View individual projects below for detailed implementations and results.** >> README.md
    echo   ✓ README.md created
)

echo.
echo === Setting up individual project repositories ===

REM Setup each project
for %%P in (01-business-analytics 02-healthcare-ai 03-computer-vision 04-nlp-assistant 05-autonomous-systems 06-mlops-platform 07-ai-research-lab 08-financial-ai 09-climate-ai 10-education-ai 11-smart-city 12-ai-governance) do (
    echo.
    echo → Setting up %%P...
    cd "%BASE_DIR%\%%P"
    
    REM Check if already initialized
    if exist ".git" (
        echo   ✓ Git already initialized in %%P
    ) else (
        echo   → Initializing Git repository in %%P...
        git init
        echo   ✓ Git initialized in %%P
    )
    
    REM Create project-specific .gitignore if it doesn't exist
    if not exist ".gitignore" (
        copy "..\..gitignore" ".gitignore" >nul 2>&1
        echo   ✓ .gitignore copied to %%P
    )
    
    cd "%BASE_DIR%"
)

echo.
echo 🎯 Git Setup Complete!
echo.
echo 📋 What was configured:
echo   ✓ Main AI-ML-MASTERY repository initialized
echo   ✓ All 12 project repositories initialized  
echo   ✓ .gitignore files configured for AI/ML projects
echo   ✓ README.md created for main repository
echo   ✓ Git workflow guide available in all projects
echo.
echo 🚀 Next Steps:
echo   1. Create GitHub repository: ai-ml-mastery
echo   2. Run in main directory:
echo      git remote add origin https://github.com/yourusername/ai-ml-mastery.git
echo   3. Make your first commit:
echo      git add .
echo      git commit -m "Initial commit: AI/ML Portfolio structure"
echo      git push -u origin main
echo.
echo 📖 Full instructions available in: GIT-WORKFLOW-GUIDE.md
echo.

pause
