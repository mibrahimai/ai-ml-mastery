# AI/ML Project Custom Instructions for GitHub Copilot

## Project Context
- **Domain**: Artificial Intelligence & Machine Learning
- **Primary Language**: Python
- **ML Frameworks**: TensorFlow, PyTorch, Scikit-learn, Transformers
- **Data Tools**: Pandas, NumPy, Matplotlib, Seaborn, Plotly
- **MLOps Stack**: MLflow, Docker, Jupyter, Poetry/UV
- **Architecture**: Research → Development → Training → Deployment → Monitoring
- **Standards**: Clean Code, SOLID Principles, ML Engineering Best Practices

## Core Development Guidelines

### Python Code Standards
- Use type hints for all function signatures and return types
- Follow PEP 8 style guidelines strictly with line length 88 characters
- Implement comprehensive docstrings using Google style format
- Use dataclasses and Pydantic models for structured data
- Prefer pathlib over os.path for file operations
- Use logging instead of print statements with appropriate log levels
- Implement error handling with specific exception types
- Use f-strings for string formatting
- Follow naming conventions: snake_case for functions/variables, PascalCase for classes

### Machine Learning Specific Guidelines
- Always set random seeds for reproducibility (random, numpy, torch, tensorflow)
- Use configuration files (YAML/JSON) for all hyperparameters and settings
- Implement proper data validation and preprocessing pipelines with error checks
- Create modular, reusable ML components with clear interfaces
- Follow MLOps practices for model versioning and experiment tracking
- Implement comprehensive experiment logging with metrics, parameters, and artifacts
- Use cross-validation for robust model evaluation
- Implement early stopping and checkpointing for long training runs
- Save models with proper versioning and metadata
- Include model performance baselines for comparison

### Data Handling Standards
- Validate data schemas and types before processing
- Implement data versioning for reproducibility and lineage tracking
- Use proper train/validation/test splits with stratification when appropriate
- Handle missing data explicitly with documented strategies
- Implement comprehensive data quality checks and monitoring
- Use efficient data formats (Parquet, HDF5) for large datasets
- Implement data caching and lazy loading for performance
- Profile memory usage and optimize data pipelines
- Use vectorized operations with NumPy and Pandas
- Implement proper data sampling techniques for large datasets

### Testing Requirements
- Unit tests for all utility functions with pytest
- Integration tests for complete data pipelines
- Model performance tests with baseline comparisons and statistical significance
- Data quality tests and schema validation with pytest-datadir
- Property-based testing for data transformations with Hypothesis
- Mock external dependencies and APIs in tests
- Use parametrized tests for multiple scenarios and edge cases
- Implement regression tests for model performance
- Test data preprocessing pipelines thoroughly
- Include performance benchmarks in test suites

### Documentation Standards
- README with clear setup, installation, and usage instructions
- API documentation for all public interfaces using docstrings
- Model cards documenting performance, limitations, bias, and ethical considerations
- Experiment documentation with results, insights, and reproducibility instructions
- Architecture diagrams for system components and data flow
- Code comments explaining complex algorithms and business logic
- CHANGELOG documenting version history and breaking changes
- Contributing guidelines for team development
- Security and privacy documentation
- Deployment and operations runbooks

### Performance & Optimization
- Profile code performance using cProfile and memory_profiler
- Use vectorized operations with NumPy and avoid Python loops
- Implement efficient data loading with proper batching strategies
- Monitor memory usage and implement memory-efficient algorithms
- Use appropriate data types (float32 vs float64, int32 vs int64)
- Implement gradient checkpointing for memory-constrained training
- Use multiprocessing for CPU-intensive tasks
- Implement caching for expensive computations
- Optimize I/O operations with async/await when appropriate
- Use compiled extensions (Numba, Cython) for performance-critical code

### Security & Privacy Guidelines
- Never commit sensitive data, credentials, or API keys to version control
- Use environment variables and secure secret management
- Implement data anonymization and pseudonymization where required
- Use secure APIs with proper authentication and authorization
- Validate and sanitize all user inputs for data processing
- Implement proper access controls for models and data
- Follow privacy-by-design principles and GDPR compliance
- Use encryption for sensitive data at rest and in transit
- Implement audit logging for data access and model usage
- Regular security assessments and dependency vulnerability scanning

## Technology-Specific Guidelines

### TensorFlow/Keras Implementation
- Use tf.data API for efficient data pipelines with prefetching and caching
- Implement custom metrics, callbacks, and losses as reusable components
- Use tf.function decorator for performance optimization
- Save models in SavedModel format with proper signatures
- Implement input preprocessing layers within the model
- Use mixed precision training for performance on modern GPUs
- Implement distributed training strategies for large models
- Use TensorBoard for comprehensive experiment visualization
- Implement model checkpointing with best model saving
- Use tf.summary for detailed logging and debugging

### PyTorch Implementation
- Use DataLoader with proper num_workers for efficient data handling
- Implement custom datasets inheriting from torch.utils.data.Dataset
- Use torch.jit.script or torch.compile for model optimization
- Implement proper gradient clipping and accumulation
- Use learning rate schedulers and optimizers appropriately
- Implement distributed training with torch.distributed
- Use automatic mixed precision (AMP) for memory efficiency
- Implement proper model state management and checkpointing
- Use torchvision transforms for data augmentation
- Implement custom loss functions and metrics as nn.Module subclasses

### Jupyter Notebook Best Practices
- Structure notebooks with clear markdown sections and TOC
- Implement notebook testing with papermill and pytest
- Use cell magic commands for profiling (%time, %timeit, %memit)
- Clear all outputs before committing to version control
- Convert production-ready notebooks to Python scripts
- Use notebook extensions for enhanced functionality
- Implement proper error handling in notebook cells
- Use consistent variable naming across cells
- Document data sources and preprocessing steps clearly
- Include visualizations with proper titles and labels

### MLOps & Deployment Standards
- Containerize all ML applications with multi-stage Docker builds
- Implement comprehensive health checks and monitoring for deployed models
- Use model registries (MLflow, DVC) for version management and lineage
- Implement A/B testing frameworks for model comparison in production
- Monitor model performance, data drift, and concept drift continuously
- Implement automated retraining pipelines with performance thresholds
- Use Infrastructure as Code (Terraform, CloudFormation) for deployment
- Implement proper CI/CD pipelines with automated testing and validation
- Use blue-green deployments for zero-downtime model updates
- Implement model explainability and interpretability tools

### Data Science Workflow
- Start with exploratory data analysis (EDA) using standardized notebooks
- Implement feature engineering pipelines with proper validation
- Use feature stores for reusable and consistent feature computation
- Implement automated feature selection and engineering techniques
- Create reproducible data science experiments with DVC or similar tools
- Use experiment tracking tools (MLflow, Weights & Biases) consistently
- Implement automated model evaluation and comparison frameworks
- Create model interpretation and explainability reports
- Document all assumptions and limitations clearly
- Implement bias detection and fairness evaluation

## Error Handling & Debugging
- Use try-except blocks with specific exception types
- Implement comprehensive logging with contextual information
- Use debugger-friendly code structure with clear variable names
- Implement input validation for all functions with informative error messages
- Use assertions for critical assumptions with descriptive messages
- Create custom exception classes for domain-specific errors
- Implement retry mechanisms for external API calls and network operations
- Use structured logging with JSON format for production systems
- Implement error monitoring and alerting systems
- Document common errors and troubleshooting steps

## File Organization & Project Structure
```
project_name/
├── data/                          # Data files (not committed)
│   ├── raw/                       # Original, immutable data
│   ├── interim/                   # Intermediate processed data
│   ├── processed/                 # Final processed datasets
│   └── external/                  # External data sources
├── models/                        # Trained models and model artifacts
├── notebooks/                     # Jupyter notebooks for exploration
│   ├── exploratory/              # EDA and initial analysis
│   ├── development/              # Model development notebooks
│   └── reports/                  # Final analysis and presentation
├── src/project_name/             # Source code package
│   ├── __init__.py
│   ├── data/                     # Data processing modules
│   ├── features/                 # Feature engineering
│   ├── models/                   # Model definitions and training
│   ├── evaluation/               # Model evaluation utilities
│   ├── visualization/            # Plotting and visualization
│   └── utils/                    # Utility functions
├── tests/                        # Test files
├── configs/                      # Configuration files
├── requirements.txt              # Python dependencies
├── pyproject.toml               # Project configuration
├── .env.template                # Environment variables template
├── .gitignore                   # Git ignore rules
├── Dockerfile                   # Container configuration
├── docker-compose.yml          # Multi-service container setup
└── README.md                    # Project documentation
```

## Naming Conventions
- **Files**: snake_case.py, kebab-case.md
- **Functions/Variables**: snake_case
- **Classes**: PascalCase
- **Constants**: UPPER_SNAKE_CASE
- **Modules**: lowercase or snake_case
- **Packages**: lowercase
- **Model Files**: model_name_version_date.pkl
- **Data Files**: dataset_name_version_date.format
- **Experiment Names**: YYYY-MM-DD_experiment_description
- **Branch Names**: feature/description, bugfix/description, experiment/description

## Code Quality Standards
- Maintain test coverage above 80% for critical modules
- Use linting tools (flake8, black, isort) with pre-commit hooks
- Implement type checking with mypy for all modules
- Use code complexity tools (radon) to maintain readable code
- Implement security scanning with bandit for Python code
- Use dependency vulnerability scanning with safety
- Implement code review process with required approvals
- Use automated formatting with black and isort
- Implement documentation building with Sphinx
- Use performance profiling in CI/CD pipelines

## Environment Management
- Use virtual environments (conda, venv, poetry) for all projects
- Pin exact versions in requirements.txt or poetry.lock
- Use separate environments for development, testing, and production
- Implement environment reproducibility with Docker containers
- Use .env files for environment-specific configuration
- Implement environment validation scripts
- Document environment setup procedures clearly
- Use environment management tools consistently across team
- Implement automated environment provisioning
- Monitor and update dependencies regularly for security patches

## Collaboration Guidelines
- Use clear, descriptive commit messages following conventional commits
- Implement branch protection rules and required reviews
- Use issue templates for bug reports and feature requests
- Implement pull request templates with checklists
- Use project boards for task tracking and sprint planning
- Implement code review guidelines and standards
- Use consistent documentation formats across team
- Implement knowledge sharing sessions and code reviews
- Use pair programming for complex implementations
- Document decisions and trade-offs in ADRs (Architecture Decision Records)

This custom instruction file ensures GitHub Copilot understands the specific context, standards, and requirements of AI/ML development, providing more accurate and helpful code suggestions, documentation, and problem-solving assistance.
