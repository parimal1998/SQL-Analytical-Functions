# 🎓 Analytic SQL Project: College Scholarship Sponsor

This project demonstrates the use of **SQL Analytical (Window) Functions** to analyze and manage scholarship data sponsored by organizations. It models real-world relationships between **Sponsors** and **Scholarships** and uses advanced SQL queries to derive meaningful insights from the data.

## 📁 Project Overview

In this project, we:
- Designed a relational schema involving **Sponsor** and **Scholarship** entities.
- Created tables with constraints, inserted sample data.
- Utilized **Analytic SQL Functions** like `SUM()`, `AVG()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`, `FIRST_VALUE()`, `RATIO_TO_REPORT()`, and more.
- Explored `OVER()`, `PARTITION BY`, `ORDER BY`, and `RANGE/ROWS` windowing techniques.

## 🧱 Database Schema

### Sponsor Table
| Column         | Description              |
|----------------|--------------------------|
| Sponsor_Id     | Primary Key              |
| Name           | Sponsor Name             |
| Town, County   | Location Details         |
| Email          | Contact Information      |
| Business_Type  | Retail, Service, etc.    |
| Num_Emp        | Number of Employees      |
| Turnover, Cost | Financial Details        |
| Main_Market    | Operational Area         |

### Scholarship Table
| Column                | Description                   |
|-----------------------|-------------------------------|
| Scholarship_Id        | Primary Key                   |
| Sponsor_Id            | Foreign Key to Sponsor        |
| Title, Discipline     | Scholarship Details           |
| Annual_Value, Duration| Financial Info                |
| Initial_Payment_Date  | Start Date                    |
| Num_Installments      | Payment Details               |
| Category, Condition   | Award Conditions              |
| University            | Affiliated University         |

## 🔍 Analytical SQL Concepts Demonstrated

- **Aggregation with OVER():** Total, Average, Min, Max per group.
- **Ranking Functions:** `RANK()`, `DENSE_RANK()` with filters (e.g., Top 3 scholarships).
- **Lag & Lead Functions:** Compare current values with previous/next entries.
- **Running Totals:** Using `ROWS PRECEDING`, `RANGE BETWEEN`.
- **Window Partitioning:** Grouped analytics using `PARTITION BY`.
- **Conditional Ranking with KEEP Clause:** Get first/last values in groups.
- **Ratio Analysis:** Using `RATIO_TO_REPORT()`.

## 📊 Sample Use Cases

- Identify top 3 scholarships by annual value per discipline.
- Calculate shortfalls and excesses from maximum costs per sponsor.
- Generate running totals for annual values within date windows.
- Compare scholarship trends before and after specific dates.
- Rank sponsors based on cumulative funding across disciplines.

## ▶️ Demo Videos

- [YouTube Video 1](https://youtu.be/KhL8P3OeZNI)
- [YouTube Video 2](https://youtu.be/SaYABtn7b0g)

## 🧠 Skills Gained

- Deep understanding of **Analytical SQL**
- Ability to apply **window functions** in real-world business scenarios
- Data modeling and relationship design in relational databases

## 📌 Author

**Parimal Sawant**  
Relational Database Course Project  
Student ID: A00325752  
Date: 11 December 2024

---

Feel free to fork or clone this project and use the queries as templates for your own analytical SQL needs!
