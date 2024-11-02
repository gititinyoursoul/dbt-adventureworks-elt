# DBT Tutorial

This repository contains the code and project files for my article on Medium, which serves as an introduction to DBT (Data Build Tool) and how to build data transformations with it. You can read the full article here:  
[**Getting Started with DBT (Data Build Tool): A Beginner's Guide to Building Data Transformations**](https://medium.com/@suffyan.asad1/getting-started-with-dbt-data-build-tool-a-beginners-guide-to-building-data-transformations-28e335be5f7e)

### Summary of the Article:
This article covers basics of getting started with DBT, a powerful tool for transforming and managing data in your data warehouse. Key topics covered include:

- **What is DBT?**: An introduction to the tool and its core features for transforming and modeling data.
- **Setting Up DBT**: Step-by-step instructions on installing DBT and configuring it to connect with your data warehouse.
- **Building Data Transformations**: A guide to creating models, writing SQL-based transformations, and organizing your DBT project structure.
- **Testing and Documentation**: Learn how to test your transformations and document your data models for clarity and better collaboration.

### Learnings

- [x] Setup postgres in a docker container and query the db from your local machine
- [x] using dbt-core to initialze a dbt project:
- [x] create models
  - [x] tables
  - [x] ephemeral tabeles (add config(materialized=’ephemeral’) to model .sql)
  - [x] views
- [ ] create documentation & configuration:
  - [x] source config
  - [x] model config
  - [ ] lineages
- [x] definine singular, generic and custom tests
- [x] checking target for compiled and run sql code
- [x] install packages: dbt_expectations, codegen, dbt_utils
- [ ] write macro to create model.yml
- [ ] analyses
- [ ] seeds
- [ ] snapshots

### Further Reading
- [ ] [dbt contract](https://docs.getdbt.com/reference/resource-configs/contract?source=post_page-----28e335be5f7e--------------------------------)
- [ ] [dbt constraint](https://docs.getdbt.com/reference/resource-properties/constraints?source=post_page-----28e335be5f7e--------------------------------)
- [x] [boost-your-dbt-tests-using-great-expectations-in-dbt](https://zoltanctoth.medium.com/boost-your-dbt-tests-using-great-expectations-in-dbt-1c2d33d53fb3)
- [x] [down-with-pipeline-debt-introducing-great-expectations](https://medium.com/@expectgreatdata/down-with-pipeline-debt-introducing-great-expectations-862ddc46782a)
- [ ] [bt-constraints-automatic-primary-keys-unique-keys-and-foreign-keys-for-snowflake](https://medium.com/snowflake/dbt-constraints-automatic-primary-keys-unique-keys-and-foreign-keys-for-snowflake-d78cbfdec2f9)
- [ ] [running-dbt-with-airflow](https://www.datafold.com/blog/running-dbt-with-airflow?source=post_page-----28e335be5f7e--------------------------------)