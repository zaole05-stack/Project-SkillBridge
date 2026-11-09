# Data Model

## Overview

[Briefly describe what data your app stores and how the data model supports the platform's core functionality. In particular, explain how the two user groups and their interactions are represented.]

## Entity-Relationship Diagram

```mermaid
erDiagram
    direction TB

    Users ||--o{ Freelancer_Profiles : has
    Users ||--o{ Company_Profiles : has

    Users {
        int id PK
        string email UK
        string password_hash
        string role
        datetime created_at
    }

    Freelancer_Profiles {
        int user_id PK,FK
        string display_name
        string profile_image
        string job_title
        string description
        string city
        string country
        string availability
        int weekly_capacity
        int hourly_rate
    }

    Company_Profiles {
        int id PK,FK
        string company_name
        string industry
        string description
        string website
        string city
        string country
        string logo
    }



```

## Entities and Relationships

[Briefly explain the purpose of the main entities and how they relate to each other. Focus on aspects that aren't immediately obvious from the diagram. In particular, explain how your data model represents the two user groups, the offered products or services, and the interactions between supply and demand.

Do not simply repeat attribute definitions or relationship cardinalities already visible in the ERD.

## Related Design Decisions

[Link to the Design Decisions that explain important choices in your data model, such as the representation of user roles, relationships between entities, or data integrity constraints. Keep the rationale in those documents rather than duplicating it here. Use relative links for referencing, like so:

- [01: How to access the database - SQL or SQLAlchemy](design-decisions/dd-01.md)

[**Important:** The documented data model, including related Design Decisions, must reflect your app's actual implementation.]