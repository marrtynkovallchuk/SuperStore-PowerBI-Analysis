# SuperStore Power BI Analysis

Business intelligence & sales analysis project built in Power BI using the SuperStore dataset.

## Dashboard Preview

Overview:
![Overview](Overview.png)

Product & Category Analysis:
![Product & Category Analysis](Product_&_Category_Analysis.png)

Product Profitability Analysis:
![Product Profitability Analysis](Product_Profitability_Analysis.png)

Customer Analysis:
![Customer Analysis](Customer_Analysis.png)

Countries / Markets Analysis:
![Countries / Markets Analysis](Countries_Markets_Analysis.png)

Shipping & Logistics:
![Shipping & Logistics](Shipping_&_Logistics.png)

Discount / Promotions Analysis:
![Discount / Promotions Analysis](Discount_Promotions_Analysis.png)

Time / Trend Analysis:
![Time / Trend Analysis](Time_Trend_Analysis.png)

Profitability Analysis:
![Profitability Analysis](Profitability_Analysis.png)

##  Project Overview

This project explores sales performance, profitability, customer behavior, discounts, logistics, and geographic trends using interactive Power BI dashboards.

The goal of the analysis is to identify:

- Revenue drivers  
- Profitability issues  
- Discount impact  
- Customer patterns  
- Country performance  
- Time trends  

##  Dashboard Pages

The report includes the following analytical sections:

- **Executive Overview** – Key KPIs and sales distribution  
- **Product & Category Analysis** – Sales & profit structure  
- **Profitability Analysis** – Margin & low-profit detection  
- **Customer Analysis** – Customer value & segmentation  
- **Geographic Analysis** – Country performance  
- **Shipping & Logistics** – Cost & delay analysis  
- **Discount / Promotions** – Discount impact on profit  
- **Time / Trend Analysis** – Year-over-year performance  

##  Key Metrics Used

- Total Sales  
- Total Profit  
- Profit Margin  
- Orders Count  
- Average Order Value (AOV)  
- Average Discount  
- Shipping Cost Metrics  

##  Dataset

The analysis is based on the SuperStore dataset, commonly used for BI and analytics practice.

Main fields include:

- Sales  
- Profit  
- Discount  
- Quantity  
- Category / Sub-Category  
- Customer  
- Country  
- Shipping information  

##  Analytical Focus

The report helps answer questions such as:

- Which categories drive revenue vs profit?  
- Do discounts improve or destroy margin?  
- Which customers are most valuable?  
- Which countries perform best?  
- How logistics affects profitability?  
- How business metrics evolve over time?  

##  Repository Contents

- `SuperStore_Report.pbix` – Power BI report file  
- Dataset file (CSV / Excel)

## BigQuery Analysis

In addition to Power BI visualizations, this project includes SQL analysis performed in **BigQuery**.  
The queries explore sales, profit, discounts, shipping, country performance, and time trends.

**Analysis blocks:**
1. **Overview** – Total rows, unique orders, total sales/profit, profit margin
2. **Category & Subcategory Analysis** – Sales and profit breakdown
3. **Top & Loss-making Products** – Top 10 and non-profitable products
4. **Discount Analysis** – Average discount, discounted orders, discount bands, and impact by category
5. **Shipping Analysis** – Average & total shipping cost, shipping mode performance
6. **Country Analysis** – Top countries, loss-making countries
7. **Time / Trend Analysis** – Yearly trends in sales and profit

All queries are stored in the `/sql` folder in **BigQuery Standard SQL** format.

##  How to Open

1. Download the `.pbix` file  
2. Open in **Microsoft Power BI Desktop**  

## Martyn Kovalchuk

Created as a portfolio project for Data / Business Intelligence analysis practice.

