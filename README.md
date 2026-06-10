# ☕️ Starbucks Space Efficiency Analysis & Insight 

## 📌 Project Overview
As a current Starbucks Shift Supervisor, I frequently observed a major operational bottleneck: during peak hours, single customers would occupy large group tables for hours, leaving no space for actual groups and causing potential walk-outs. 

Driven by this firsthand experience, I started this project to measure and analyze our store's seating efficiency. By matching customer behavior with spending patterns, this project aims to uncover spatial mismatches and deliver data-driven layout changes to maximize both **Revenue Per Minute (RPM)** and guest satisfaction. 

By analyzing customer behavior, seating choices, and spending patterns, this project uncovers spatial mismatches and proposes data-driven solutions to maximize **Revenue Per Minute (RPM)** and seating utilization.

## 🛠 Tech Stack & Tools
* **Data Collection & Preprocessing:** Microsoft Excel
* **Database & Querying:** SQL (Structured Query Language)
* **Business Intelligence & Data Visualization:** Power BI

## 🧑‍💻 Background & Data Collection
Unlike synthetic or pre-made online datasets, the data for this project was **manually collected firsthand from the field**. 

As a current **Starbucks Shift Supervisor**, I observed daily operational inefficiencies regarding seating availability and peak-hour capacity. To analyze this scientifically, I conducted a structured observational study:
* **Collection Period:** March 1st to May 30th (3 Months)
* **Observation Window:** Monday to Friday, during my shifts from **07:00 AM to 04:00 PM**.
* **Sampling Method:** Tracked exactly 7 unique customer store journeys daily during these working hours, building a consistent and reliable weekday business dataset.
* **Data Entry:** Logged and structured directly via Microsoft Excel.
* **Objective:** To turn my everyday store observations into real, data-driven solutions for the business.

## 📊 Dataset Structure
The analysis utilizes `starbucks_customer_data.csv`, which tracks individual customer store journeys:
* `Customer_ID`: Unique identifier for each customer.
* `Date`: Date of visit.
* `Customer_Type`: Segmentation (Teenagers, Family, Children, Seniors, Adult, University Student).
* `Group_Size`: Number of people in the party.
* `Seat_Type`: Seating choice (Window Seat, Table with 2 Chairs, Big Round Table, Table for 4).
* `Activity`: Main activity (Conversation, Laptop, Phone Browsing, Reading, Spacing Out, Sleeping).
* `Stay_Duration_Min`: Time spent in store (minutes).
* `Spend_Amount_CAD`: Total spending per transaction (CAD).

## 🔍 SQL Data Aggregation & Processing
The raw data logged in Excel was imported into a database. I then used SQL queries to clean the data and calculate the key retail metrics needed for the Power BI dashboard.

* 📁 **Complete Source Code:** ![SQL Scripts](https://github.com/Heejoy/starbucks_space_efficiency_analysis/blob/main/SQL/starbucks_data.sql)

## 💡 Key Dashboard Insights & Findings
Based on the data visualized in the **Starbucks Space Efficiency Dashboard**:
* ![Starbucks Space Efficiency Dashboard](https://github.com/user-attachments/assets/4fd48226-dec1-4d06-930d-7d1aa32de100)
* **The Low-RPM Bottleneck:** "University Students" and "Adults" primarily use the store for **Laptop** activities. While their **Average Stay Duration is extremely high (avg. 76.54 - 124.42 mins)**, their **Revenue per Minute is extremely low ($0.05 - $0.12/min)** because they mostly purchase a single item.
* **The High-Value Segments:** "Teenagers" and "Families" generate the highest **Revenue Per Minute ($0.76 and $0.70/min respectively)** with shorter stays, making them highly profitable segments.
* **Spatial Mismatch:** Single customers (Average Group Size of 1.22 to 1.29) heavily occupy **Window Seats** and **Tables with 2 Chairs** for up to 90 minutes. This leaves larger parties unable to find seating, causing a massive mismatch between table capacity and group sizes.

## ✅ Proposed Layout & Operational Solutions

### 1. Spatial Zoning Strategy
* **Dedicated "Study & Work Zone":** 
  * Designate the corner section of the store as a quiet zone specifically tailored for **Laptop** and **Reading** activities. 
  * Replace 4-person tables in this zone with individual **Plug-In Bar Seats** or long communal tables optimized for single occupants.
* **High-Turnover "Conversation Zone":** 
  * Position round coffee tables, and seats *without* power outlets near the entrance and windows. 
  * This targets high-RPM groups (Families, Teenagers, Conversationalists) who have shorter stay durations, encouraging faster table turnover.
* * **Visual Seating Guidance:** 
* Install clear, friendly floor and table signage at the enterance of each zone to guide customers toward the seating setup most compatible with their intended activity. 

### 2. Operational Seating Policies
* **Minimum Occupancy for Large Tables:** 
  * Implement polite table-tent signage on **Big Round Tables** and **Tables for 4** indicating a "Minimum 3 People during Peak Hours (12 PM - 3 PM)" policy to prevent 1-person monopolization.
* **Soft Time-Limits on Power Outlets:** 
  * Introduce a visible, friendly guidelines policy (e.g., "2-hour limit on outlet-serviced seats during peak capacity") to improve seat availability for waiting customers.
