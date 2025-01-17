# Bike Shop Analysis Project

This project analyzes the sales and profitability data for a bike shop over a two-year period using SQL and Power BI. The objective was to identify trends, generate insights, and recommend strategies for pricing and profitability improvements.

## Project Overview

The analysis covered two years of data from the `bike_share_yr_0` and `bike_share_yr_1` tables, as well as a `cost_table` detailing costs and pricing. SQL was used to clean and merge the data, while Power BI was used to visualize key metrics and create an interactive dashboard.

---

## Dashboard Preview

Below is a preview of the dashboard created for the Bike Store project:

![Dashboard Preview](https://github.com/shreyashsupe/Dashboard-Projects/blob/main/Bike%20Data%20Analysis%20(SQl%2BPowerbi)/Dashboard.png)

## Tools and Technologies

- **SQL**: For data cleaning, transformation, and analysis.
- **Power BI**: For data visualization and dashboard creation.

---

## Steps in the Project

1. **Data Preparation in SQL:**
   - Combined data from `bike_share_yr_0` and `bike_share_yr_1` using a `UNION ALL` query.
   - Joined the combined dataset with the `cost_table` to calculate revenue and profit.
   - Calculated the following metrics:
     - **Revenue**: `riders * price`
     - **Profit**: `revenue - COGS`

   Example SQL Query:
   ```sql
   WITH cte AS (
       SELECT * FROM bike_share_yr_0
       UNION ALL
       SELECT * FROM bike_share_yr_1
   )
   SELECT 
       dteday, season, a.yr, weekday, hr, rider_type, riders, price, COGS,
       riders * price AS revenue,
       (riders * price) - COGS AS profit
   FROM cte AS a
   LEFT JOIN cost_table AS b 
   ON a.yr = b.yr;
   ```

2. **Exporting Results:**
   - Exported SQL query results to a CSV file for use in Power BI.

3. **Visualization in Power BI:**
   - Created an interactive dashboard with the following elements:
     - **KPI Metrics:** Total riders, total revenue, and total profit.
     - **Revenue and Profit Over Time:** A bar and line chart showing trends over two years.
     - **Revenue by Season:** Bar chart visualizing revenue per season.
     - **Riders Demographics:** A donut chart showing the proportion of casual vs. registered users.
     - **Profitability by Hour:** A heatmap showing revenue across different hours and days of the week.

---

## Key Findings

1. **When Are We Making Money?**
   - Higher earnings occur during midday and early evening hours (10:00 AM to 3:00 PM).
   - Wednesday and Friday show significantly higher sales.

2. **Revenue by Season:**
   - Season 2 generated the highest revenue, followed by Season 1.

3. **Rider Demographics:**
   - Registered users contribute to 81.17% of total revenue.
   - Casual riders make up 18.83% of total revenue.

4. **KPI Summary:**
   - Total Riders: 3 Million
   - Total Revenue: $15 Million
   - Total Profit: $15.14 Million

---

## Recommendations

1. **Conservative Price Increase:**
   - A 10-15% price increase is recommended to test the market's response without risking significant loss of customers.
   - For example:
     - A 10% increase would raise the price from $4.99 to $5.49.
     - A 15% increase would set the price at approximately $5.74.

2. **Segmented Pricing Strategy:**
   - Introduce separate pricing strategies for casual and registered riders based on their sensitivity to price changes.

3. **Monitor and Adjust:**
   - Monitor customer feedback and sales data closely after implementing price changes to make necessary adjustments.

4. **Focus on Peak Hours:**
   - Optimize resources and staff availability during peak revenue hours (10:00 AM to 3:00 PM).

---

## Files in the Repository

1. **SQL Queries:**
   - All SQL scripts used for data preparation and analysis.

2. **CSV Files:**
   - Exported query results for use in Power BI.

3. **Power BI Dashboard:**
   - .pbix file containing the interactive dashboard.


---

## Conclusion

This project provides actionable insights into the bike shop's performance and offers strategies to enhance revenue and profitability. The interactive dashboard allows stakeholders to explore data trends and make data-driven decisions effectively.
