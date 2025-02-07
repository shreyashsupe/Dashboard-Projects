# Sales Annual Report

## Project Overview
This project analyzes store sales data to generate a **Sales Annual Report**, highlighting key trends, customer demographics, and business performance over a given period. The report is built by following a structured data analysis workflow, including **data cleaning, processing, analysis, and visualization**.

## Report Preview

Below is a preview of the dashboard:

![Report Preview](https://github.com/shreyashsupe/Powerbi-Excel-Dashboard-Projects/blob/main/Store%20Data%20Analysis/Report.png)

## Steps Involved

### 1. Data Cleaning
Before analysis, we ensured data consistency and accuracy:
- **Checked for null values** and handled missing data appropriately.
- **Standardized gender representation**: Converted `m` to `Men` and `w` to `Women`.
- **Converted categorical numerical values** in the quantity column:
  - `one` → `1`
  - `two` → `2`

### 2. Data Processing
To enable deeper analysis, new columns were created:
- **Age Group Classification**: Grouped customers into categories based on age:
  ```excel
  =IF(F2>=50, "Senior", IF(F2>=30, "Adult", "Teenager"))
  ```
- **Extracting Month from Date**: Created a `Month` column:
  ```excel
  =TEXT(G2, "mmm")
  ```

### 3. Data Analysis
We used **Pivot Tables** and aggregations to analyze:
- Sales trends across different time periods.
- Customer demographics and purchasing behaviors.
- The most frequently purchased items and delivery trends.

## Key Insights from the Report

### 1. Monthly Sales Trends
- **March recorded the highest sales**, indicating seasonal demand fluctuations.
- Understanding these trends helps optimize inventory and marketing strategies.

### 2. Customer Demographics
- **Women made up the majority of purchases**, showing they are the dominant customer segment.
- **Most sales were from adult women**, emphasizing a key target audience for marketing campaigns.

### 3. Delivery Insights
- **Most of the items were delivered successfully**, indicating an efficient logistics process.

### 4. Regional Performance
- **Top 5 states contributed the most to sales**, highlighting key regional markets.
- These states should be the focus for future expansion and targeted promotions.

### 5. Sales Channels
- **35 sales were made through Amazon**, showcasing its importance as a key sales channel.
- This suggests the need to enhance digital marketing efforts on e-commerce platforms.

## Conclusion
This analysis provides a comprehensive view of store sales, helping stakeholders make data-driven decisions. By understanding seasonal sales trends, customer preferences, and regional market performance, businesses can improve inventory management, customer targeting, and overall sales strategies.

## Future Recommendations
- Focus marketing efforts on **adult women** to maximize sales potential.
- Prepare for peak demand in **March** by optimizing inventory.
- Strengthen delivery processes to maintain high fulfillment rates.
- Expand in **high-performing states** while improving sales in underperforming regions.
- Leverage **Amazon** and other e-commerce platforms for increased digital reach.
