# Walmart Sales Analysis — SQL + Python <br>

## **Brief One Line Summary** <br>
An end-to-end **Retail Sales Analytics** portfolio project using **SQL + Python** to uncover **branch performance, payment trends, customer ratings behavior, sales shift patterns, and profitability drivers** from Walmart transactional data. <br>

---

## **Overview** <br>
Retail analytics is not about creating charts — it’s about identifying what drives revenue, what improves operations, and where the business is leaking profits. <br><br>
This project simulates a real analytics workflow where Walmart transactional data is converted into **business insights and strategic recommendations**. <br><br>
This repository demonstrates my ability to: <br>
➡️ clean and structure messy data <br>
➡️ perform Python-based EDA and feature engineering <br>
➡️ solve stakeholder-style business questions using SQL <br>
➡️ convert findings into decision-ready insights <br>

---

## **Problem Statement** <br>
Walmart operates across multiple branches and cities with varying customer demand, category preference and purchase behavior. <br><br>
The goal of this project is to answer key business questions such as: <br>
➡️ What payment methods drive maximum transactions and volume? <br>
➡️ Which categories are top-rated in each branch (customer satisfaction)? <br>
➡️ Which day of the week is busiest per branch (staffing/inventory planning)? <br>
➡️ Which categories contribute the highest profit? <br>
➡️ What shifts (Morning/Afternoon/Evening) show peak demand? <br>
➡️ Which branches show year-over-year revenue decline (risk detection)? <br><br>
These business questions are based on the project problem statement document included in this repo. :contentReference[oaicite:0]{index=0} <br>

---

## **Dataset** <br>
This project uses **Walmart Sales Transaction Data** containing: <br>
- Branch, City, Product Category <br>
- Invoice-level transaction details <br>
- Unit Price, Quantity, Total <br>
- Date & Time (for shift/day analysis) <br>
- Payment method <br>
- Customer rating <br><br>

**Dataset Source (Kaggle):** <br>
➡️ `<ADD-KAGGLE-DATASET-LINK-HERE>` <br><br>

Files included: <br>
- `Walmart.csv` (raw dataset) <br>
- `walmart_clean_data.csv` (cleaned dataset after preprocessing) <br>

---

## **Tools and Technologies** <br>
- **SQL** — business analysis, ranking, aggregation, conditional logic <br>
- **Python** — preprocessing + EDA + feature engineering <br>
  - pandas <br>
  - numpy <br>
  - matplotlib / seaborn <br>
- **Jupyter Notebook** — analysis execution and documentation <br>

---

## **Methods (End-to-End Workflow)** <br>

### **1) Data Understanding** <br>
➡️ Reviewed data schema & business meaning of columns <br>
➡️ Checked null values, data types and value validity <br>

### **2) Data Cleaning & Preparation (Python)** <br>
➡️ Cleaned dataset to remove noisy or unusable entries <br>
➡️ Standardized columns to ensure accurate analysis <br>
➡️ Prepared analysis-ready dataset saved as `walmart_clean_data.csv` <br>

### **3) Feature Engineering** <br>
To generate business insights, new features were created: <br>
➡️ **Shift segmentation** based on transaction time: <br>
&nbsp;&nbsp;&nbsp;&nbsp;• Morning <br>
&nbsp;&nbsp;&nbsp;&nbsp;• Afternoon <br>
&nbsp;&nbsp;&nbsp;&nbsp;• Evening <br>
➡️ Day-based features to identify peak weekdays per branch <br>

### **4) SQL Business Analytics** <br>
SQL queries were designed to solve real business problems including: <br>
➡️ payment trend analysis <br>
➡️ category rating insights <br>
➡️ profit contribution ranking <br>
➡️ operational peak identification <br>
➡️ branch-level revenue decline detection :contentReference[oaicite:1]{index=1} <br>

---

## **Key Insights (Recruiter-Facing Highlights)** <br>
This project demonstrates strong analytical coverage across: <br>
✅ **Customer behavior** (payment preferences, rating patterns) <br>
✅ **Business performance** (profitability by category) <br>
✅ **Operations planning** (busiest days + shift peaks) <br>
✅ **Risk detection** (YoY decline branches) :contentReference[oaicite:2]{index=2} <br><br>

**What this proves:** I can deliver analytics in the way businesses consume it — structured insights with action-ready recommendations, not just technical output. <br>

---

## **Business Problems Solved (SQL Coverage)** <br>
This project answers the following business questions: <br><br>

### **1) Payment Methods & Sales Behavior** <br>
➡️ Different payment methods <br>
➡️ Transactions & quantity sold per method :contentReference[oaicite:3]{index=3} <br>

### **2) Highest Rated Category in Each Branch** <br>
➡️ Category-wise average rating per branch (top performer) :contentReference[oaicite:4]{index=4} <br>

### **3) Busiest Day for Each Branch** <br>
➡️ Weekday with maximum transaction volume (branch-wise) :contentReference[oaicite:5]{index=5} <br>

### **4) Quantity Sold by Payment Method** <br>
➡️ Volume contribution by payment type :contentReference[oaicite:6]{index=6} <br>

### **5) Category Ratings by City (Avg/Min/Max)** <br>
➡️ City-level customer satisfaction patterns :contentReference[oaicite:7]{index=7} <br>

### **6) Profit Contribution by Category** <br>
➡️ Ranked profit drivers to identify business focus areas :contentReference[oaicite:8]{index=8} <br>

### **7) Most Common Payment Method per Branch** <br>
➡️ Branch-level customer payment preference :contentReference[oaicite:9]{index=9} <br>

### **8) Sales Shifts Throughout the Day** <br>
➡️ Morning vs Afternoon vs Evening demand patterns :contentReference[oaicite:10]{index=10} <br>

### **9) Branches with Highest Revenue Decline (YoY)** <br>
➡️ Year-wise revenue comparison to detect risk branches :contentReference[oaicite:11]{index=11} <br>

---

## **Results & Conclusion** <br>
This project successfully transforms raw Walmart sales transactions into a structured business narrative: <br>
➡️ what sells the most <br>
➡️ where customer satisfaction is strongest <br>
➡️ which categories drive profit <br>
➡️ when demand peaks operationally <br>
➡️ which branches show decline risk <br><br>

**Conclusion:** This is a business-first analysis designed to support real operational and strategic decisions — not just a technical exercise. <br>

---

## **Future Work** <br>
➡️ Add a BI reporting layer (Power BI/Tableau) for interactive executive views <br>
➡️ Create forecasting for daily/weekly sales prediction <br>
➡️ Introduce customer segmentation for personalization insights <br>
➡️ Build dimensional model (Star Schema) for scalable analytics <br>

---

## **Author & Contact** <br>
**Deepanshu Gupta** <br>
Data Analyst | SQL • Python • Business Analytics <br><br>

📌 LinkedIn: https://www.linkedin.com/in/deepanshu-gupta-3ab3861b8/ <br>
📌 GitHub:  <br> https://github.com/deepanshugupta2610-369/walmart_sales_analysis_sql_python <br>

⭐ If you found this project useful, feel free to star this repository. <br>
