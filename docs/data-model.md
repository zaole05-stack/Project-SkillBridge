# Data Model

## Overview

[Briefly describe what data your app stores and how the data model supports the platform's core functionality. In particular, explain how the two user groups and their interactions are represented.]

## Entity-Relationship Diagram

```mermaid
erDiagram
    direction TB

    USERS ||--o{ FREELANCER_PROFILES : has
    USERS ||--o{ COMPANY_PROFILES : has
    USERS ||--o{ MESSAGES : "sends"

    COMPANY_PROFILES ||--o{ PROJECTS : creates
    COMPANY_PROFILES ||--o{ CONVERSATIONS : "participates in"

    FREELANCER_PROFILES ||--o{ FREELANCER_SKILLS : "has"
    FREELANCER_PROFILES ||--o{ APPLICATIONS : "submits"
    FREELANCER_PROFILES ||--o{ CONVERSATIONS : "participates in"
    FREELANCER_PROFILES ||--o{ WORK_EXPERIENCES : "has"
    FREELANCER_PROFILES ||--o{ EDUCATION_ENTRIES : "has"

    PROJECTS ||--o{ PROJECT_SKILLS : "requires"
    PROJECTS ||--o{ APPLICATIONS : "receives"
    PROJECTS o|--o{ CONVERSATIONS : "related to"

    SKILLS ||--o{ FREELANCER_SKILLS : "assigned to"
    SKILLS ||--o{ PROJECT_SKILLS : "assigned to"

    SKILL_GROUPS ||--o{ SKILLS : "contains"

    CONVERSATIONS ||--o{ MESSAGES : "contains"


    USERS {
        int id PK
        string email UK
        string password_hash
        string role
        datetime created_at
    }

    FREELANCER_PROFILES {
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

    COMPANY_PROFILES {
        int id PK,FK
        string company_name
        string industry
        string description
        string website
        string city
        string country
        string logo
    }

    PROJECTS {
        int id PK
        int company_id FK
        string title
        string description
        date start_date
        date end_date
        string status
        boolean remote
        string city
        string country
        string compensation_type
        int budget_min
        int budget_max
        datetime created_at
    }

    APPLICATIONS {
        int id PK
        int freelancer_id FK
        int project_id FK
        string cover_letter
        string cv_file
        string status
        datetime created_at
    }

    SKILLS {
        int id PK
        string name
        int group_id FK
    }

    SKILL_GROUPS {
        int id PK
        string name
    }

    FREELANCER_SKILLS {
        int freelancer_id PK, FK
        int skill_id PK, FK
        string experience_level
    }

    PROJECT_SKILLS {
        int project_id PK, FK
        int skill_id PK, FK
        boolean is_required
    }

    WORK_EXPERIENCES {
        int id PK
        int freelancer_id FK
        string job_title
        string company_name
        text description
        date start_date
        date end_date
    }

    EDUCATION_ENTRIES {
        int id PK
        int freelancer_id FK
        string institution
        string degree
        string field_of_study
        date start_date
        date end_date
    }

    CONVERSATIONS {
        int id PK
        int company_id FK
        int freelancer_id FK
        int project_id FK
        datetime created_at
    }

    MESSAGES {
        int id PK
        int conversation_id FK
        int sender_user_id FK
        text body
        datetime created_at
        datetime read_at
    }



```

## Entities and Relationships

[Briefly explain the purpose of the main entities and how they relate to each other. Focus on aspects that aren't immediately obvious from the diagram. In particular, explain how your data model represents the two user groups, the offered products or services, and the interactions between supply and demand.

Do not simply repeat attribute definitions or relationship cardinalities already visible in the ERD.

## Related Design Decisions

[Link to the Design Decisions that explain important choices in your data model, such as the representation of user roles, relationships between entities, or data integrity constraints. Keep the rationale in those documents rather than duplicating it here. Use relative links for referencing, like so:

- [01: How to access the database - SQL or SQLAlchemy](design-decisions/dd-01.md)

[**Important:** The documented data model, including related Design Decisions, must reflect your app's actual implementation.]