# Financial Risk & Pending Transactions Analysis
<img width="1687" height="743" alt="Financial_Risk_Analysis_Dashboard" src="https://github.com/user-attachments/assets/28c0932b-f1a5-4d3d-b1ea-e36faf22022c" />

## 📌 Business Scenarios & Executive Summary

**Phase 1: The Member Services Escalation (Operational Backlog)**
* **The Trigger:** A critical escalation from the corporate Member Services team: *"We have members who submitted refund requests, but their money has been pending for days. We need an urgent, prioritized list of the oldest 'Pending' transactions to resolve customer dissatisfaction."*
* **The Solution:** I extracted and modeled data from a 1,000,000-row SQL database to identify all 'Pending' transactions. By calculating the "Days Since Request" (Aging Risk) and visualizing the total monetary exposure, this dashboard provided the operations team with a dynamic "hit-list" to instantly target the longest-waiting customers and clear the backlog efficiently.

**Phase 2: The CFO Executive View (Work in Progress)**
* *Following the successful resolution of the operational backlog, this project is currently being expanded to address a new top-level request from the CFO. The upcoming iteration will focus on quantifying the exact monetary loss and 'Revenue at Risk' caused by failed 'Repurchase' operations.*

## Technical Architecture & Tools
* **Data Source & Extraction:** SQL Server (SSMS). Successfully managed and migrated a 1,000,000-row dataset for financial reporting.
* **Data Modeling:** Built a robust relational model in Power BI, implementing disconnected tables for advanced, un-filtered dynamic calculations.
* **Calculations:** Advanced DAX (Dynamic Measures, CALCULATE, MAX, SELECTEDVALUE, COUNTROWS) for real-time currency conversions.
* **Visualization:** Power BI (Interactive dashboards, UI/UX optimization, dual-level analysis).

## Key Features
* **Dynamic Currency Toggle:** Developed an interactive parameter allowing users to seamlessly switch metrics between EUR, PLN, and USD instantly.
* **Aging Risk Analysis:** Visualized pending transactions by "Days Since Request" to easily identify overdue risks.
* **Operational vs. Financial View:** Combined total monetary risk (column chart) with transaction volume (line chart) to highlight operational bottlenecks.
* **Automated KPI Tracking:** Engineered dynamic KPI cards that instantly recalculate 'Total Risky Refunds' and 'Pending Revenue' based on the exchange rate.

## Business Impact
* Transformed raw transactional data into a clear risk-assessment tool.
* Enabled financial decision-makers to view real-time pending revenue across multiple currencies.
* Highlighted high-volume bottlenecks to help customer service teams prioritize workloads.

---
### 📂 Project Resources & Source Files
* **`Financial_Risk_Analysis_Dashboard.pbix`**: Interactive Power BI dashboard containing all visualizations, dynamic currency toggles, and DAX measures.
* **`Simulated_Transactions_1M.csv`**: The comprehensive 1-million-row raw dataset used for the analysis.
* **`Data_Extraction_and_Risk_Queries.sql`**: SQL queries utilized for data extraction, joining tables, and preliminary risk filtering.
  
*Note: Sensitive and personal data within this project has been fully masked and anonymized to ensure privacy.*
