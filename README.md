# DBT Tutorial

This repository contains the code and project files for my article on Medium, which serves as an introduction to DBT (Data Build Tool) and how to build data transformations with it. You can read the full article here:  
[**Getting Started with DBT (Data Build Tool): A Beginner's Guide to Building Data Transformations**](https://medium.com/@suffyan.asad1/getting-started-with-dbt-data-build-tool-a-beginners-guide-to-building-data-transformations-28e335be5f7e)

### Summary of the Article:
This article covers basics of getting started with DBT, a powerful tool for transforming and managing data in your data warehouse. Key topics covered include:

- **What is DBT?**: An introduction to the tool and its core features for transforming and modeling data.
- **Setting Up DBT**: Step-by-step instructions on installing DBT and configuring it to connect with your data warehouse.
- **Building Data Transformations**: A guide to creating models, writing SQL-based transformations, and organizing your DBT project structure.
- **Testing and Documentation**: Learn how to test your transformations and document your data models for clarity and better collaboration.

# Learnings

## Container Setup
- [x] **Set up PostgreSQL in a container** and verify you can query the database from your local machine
- [x] **Set up dbt in a container** dbt container on the same network
- [x] **Configure `profiles.yml`** to connect dbt to the PostgreSQL database
- [x] **Create a `docker-compose.yml`** file to manage both containers

## dbt Project Initialization
- [x] **Use dbt-core** to initialize a new dbt project
- [x] **Tables**: Define tables using `materialized='table'` config
- [x] **Ephemeral Tables**: Use `config(materialized='ephemeral')` for models that shouldn’t be materialized as tables or views
- [x] **Views**: Define views using `materialized='view'` config
- [ ] **Incremental**

## Documentation & Configuration
- [x] **Source Configuration**: Define your data sources in `sources` to track dependencies
- [x] **Model Configuration**: Add metadata, descriptions, and tags to your models in `schema.yml`
- [ ] **Lineage Diagrams**: Ensure all models have lineage defined for clear data flow visualization

## Testing & Quality Checks
- [x] **Singular Tests**: Custom tests defined in the `tests/` directory
- [x] **Generic Tests**: Use dbt’s built-in tests or custom generic tests in `tests/generic/`
- [ ] **Custom Tests**: Write your own data quality tests to ensure integrity

## Compilation & Execution
- [x] **Verify the target directory**: Check the `target` folder for compiled and executed SQL code to understand what dbt runs

## Package Management
- [x] `dbt_expectations`: For advanced data testing
- [x] `codegen`: To automate code generation
- [x] `dbt_utils`: For common dbt utility functions

## Data Workflow Development
Build a data workflow from source to final tables:
- [x] **Staging layer** to load source data and rename columns
- [x] **Intermediate Layer**: transform data and implement logic to flag data based on certain conditions
- [ ] **Analyze Flagged Data**: Create mechanisms to analyze or report on flagged data
- [x] **Warehouse Layer**: Filter flaged data to include only valid data in the final table

## Advanced Features
- [ ] **Write a macro**: Automate the creation of `model.yml` files to simplify documentation
- [x] **Write custom macro**: Flag outliers based on IQR in `detect_outliers.sql`
- [ ] **Perform Analyses**: Use dbt’s `analyses/` folder to write and run SQL analyses
- [ ] **Create Seeds**: Load CSV files into your warehouse as tables using dbt’s seeding functionality
- [ ] **Implement Snapshots**: Capture historical states of slowly changing dimensions using dbt snapshots

## Additional Optimizations
- [x] **Create an index**: Use model-level configurations in `model.sql` to add indexes for performance optimization


# Further Reading
- [ ] [dbt contract](https://docs.getdbt.com/reference/resource-configs/contract?source=post_page-----28e335be5f7e--------------------------------)
- [ ] [dbt constraint](https://docs.getdbt.com/reference/resource-properties/constraints?source=post_page-----28e335be5f7e--------------------------------)
- [x] [boost-your-dbt-tests-using-great-expectations-in-dbt](https://zoltanctoth.medium.com/boost-your-dbt-tests-using-great-expectations-in-dbt-1c2d33d53fb3)
- [x] [down-with-pipeline-debt-introducing-great-expectations](https://medium.com/@expectgreatdata/down-with-pipeline-debt-introducing-great-expectations-862ddc46782a)
- [x] [dbt-best-practices/how-we-structure](https://docs.getdbt.com/best-practices/how-we-structure/1-guide-overview)
- [ ] [bt-constraints-automatic-primary-keys-unique-keys-and-foreign-keys-for-snowflake](https://medium.com/snowflake/dbt-constraints-automatic-primary-keys-unique-keys-and-foreign-keys-for-snowflake-d78cbfdec2f9)
- [ ] [running-dbt-with-airflow](https://www.datafold.com/blog/running-dbt-with-airflow?source=post_page-----28e335be5f7e--------------------------------)