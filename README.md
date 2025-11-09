# Retail-Sales-Performance-Analytics
This Power BI analytics project was designed to uncover actionable insights from integrated sales, product, and customer datasets. 


EXECUTIVE SUMMARY
- This Power BI analytics project was designed to uncover actionable insights from integrated sales, product, and customer datasets. By combining 50 sales transactions, 16 product entries, and 20 customer profiles, the analysis aimed to identify key revenue drivers, assess product profitability, and understand customer behavior to inform strategic business decisions.



PROBLEM STATEMENT
- The goal of this project is to determine which product categories generate the highest revenue, identify top customers and the factors driving their retention, and analyze how sales performance varies across regions and over time. It also aims to uncover the products contributing most significantly to the overall growth of the business.



DATA UNDERSTANDING

- The project utilized data from three separate datasets:

* Sales Data: 1 CSV file containing 50 distinct transactions (51 rows including header, 8 columns).
* Products Data: 1 Excel file containing 16 distinct entries (17 rows including header, 7 columns).
* Customer Data: 1 Excel file containing 20 distinct entries (21 rows including header, 6 columns).

* Key Fields: Product Category, Region, Discount, Customer Loyalty, Revenue, Purchase Quantity, Product Acquisition Cost.
* Data Limitation: Incorrect subcategory-to-category pairing identified in the source data.



METHODOLOGY

DATA CLEANING

* Opened a blank Power BI report.
* Imported all three datasets (Sales, Customers, Products) into Power BI and accessed the Power Query Editor.
* Cleaned each dataset separately and loaded them as Excel tables.
* Checked for duplicates and missing values (none found).
* Standardized the date format (General → Date).
* Converted price fields to currency format.
* Adjusted the discount column to decimal percentage format.



DATA ENHANCEMENT

- Five new calculated columns were created within the sales data:

* Raw Revenue = Unit Price × Quantity
* Percentage Discount = Discount ÷ 100
* Discount Amount = Percentage Discount × Raw Revenue
* Net Revenue = Raw Revenue – Discount Amount
* Age Group = Categorized based on customer age

- Additionally, a Category Mapping Table was created to correct subcategory-to-main category mismatches in the source data.
<img width="881" height="453" alt="Screenshot 2025-11-09 151900" src="https://github.com/user-attachments/assets/04939e67-d9e9-47cd-9ee6-3405a0b20f8b" />




DATA MODELING

- Relationships were built across datasets using common keys:

* Sales ↔ Customers: via CustomerID
* Sales ↔ Products: via ProductID
* Sales ↔ Category Mapping: via Category/Subcategory

<img width="1818" height="668" alt="Screenshot 2025-11-09 141325" src="https://github.com/user-attachments/assets/37f31bd3-96de-45e8-b61b-78d14e9e33f5" />

- All datasets were merged into a single unified model in Power BI using the Combine Queries function, ensuring seamless cross-table analysis and report consistency.



FORMULAS AND MEASURES

- Calculated Columns:

8 Raw Revenue = UnitPrice * Quantity
* Percentage Discount = Discount / 100
* Discount Amount = [Percentage Discount] * [Raw Revenue]
* Net Revenue = [Raw Revenue] - [Discount Amount]


- Key DAX Measures:

* Total Net Revenue
* Total Stock Sold
* Total and Average Discount Amount
* Total Cost
* Gross Profit
* Profit Margin (%)
* Customer Count
* Average Order Value
* Average Orders per Customer
* Revenue Contribution %
* Composite Growth Index
<img width="1817" height="631" alt="Screenshot 2025-11-09 140544" src="https://github.com/user-attachments/assets/7aa04433-a8e5-4f79-889a-d5c312397d76" />




EXPLORATORY DATA ANALYSIS

- The Power BI dashboard leveraged DAX measures to explore revenue trends, customer behavior, and product performance.

- Visualizations included bar charts, line charts, pie charts, and bubble charts to display:

Revenue distribution by product category, region, and customer demographics.
Monthly performance trends highlighting areas of growth and decline.
Share of contribution across customers, categories, and regions.



VISUALIZATION

- Three interactive dashboards were developed:

* Sales Analytics Dashboard:
Highlights revenue trends by category, region, and month.
KPIs: Total Net Revenue, Discount Amount, Average Discount Amount, Total Stock Sold.
<img width="1261" height="663" alt="Screenshot 2025-11-09 140516" src="https://github.com/user-attachments/assets/d22e06c4-c3b6-43bf-b981-e8814ac9e37c" />


* Product Analytics Dashboard:
Displays the contribution of product categories to revenue and profit.
KPIs: Total Cost, Gross Profit, Profit Margin.
<img width="1269" height="657" alt="Screenshot 2025-11-09 140456" src="https://github.com/user-attachments/assets/7a21a7c1-99a2-4c7d-9876-8561cd97ad2a" />


* Customer Analytics Dashboard:
Examines customer loyalty, retention drivers, and top spenders.
KPIs: Average Order Value, Average Revenue per Customer.
<img width="1272" height="668" alt="Screenshot 2025-11-09 140424" src="https://github.com/user-attachments/assets/e62ebbd6-56ee-4782-9ba5-a0dc9a9b4687" />


- Each dashboard uses a binary color theme and includes slicers for easy filtering and dynamic exploration, maintaining a clean, spacious layout for quick insights.



DISCUSSION AND INTERPRETATION

- The analysis of sales, product, and customer data provides valuable insights into revenue drivers, customer behavior, and product performance.
These insights directly inform strategic business decisions for growth and profitability.


* Sales Performance Insights

- Total Net Revenue: 106K generated from 50 transactions, showing strong sales activity.
- Monthly Trend: Revenue peaked in April (30K) before stabilizing in May and June.
- Regional View: Clothing, Electronics, and Furniture performed fairly evenly across regions, but Clothing underperformed in the West and South.

- Top Subcategories:
Laptops (23.4K) ranked highest in revenue.
Followed by Tables and Mobiles, indicating strong demand for tech-related items.


* Product Profitability

- Electronics: 49.73% of total revenue with the highest profit margin (92.58%).
- Furniture: 36.88% contribution with healthy margins.
- Clothing: 13.39% contribution, lowest profitability due to heavy discounting.

- Composite Growth Index: Confirms Electronics and Furniture as top-value categories that balance high revenue with strong profitability.


* Customer Behavior

- Gender Insight: Female customers contribute 90.9% of total revenue, showing a strong gender-driven trend.
- Loyalty Analysis: 
Bronze members have the highest total revenue (48K) and purchase frequency (32%).
Gold and Silver members record fewer transactions but higher average spend per order.

- Top Customers: The top five customers generate 72K in total revenue, showing high dependence on a small elite group.


* Discount Strategy

- Total Discount Amount: 14K across transactions.
- Average Discount: 280, indicating aggressive discounting, especially in Clothing.
- Impact: Discounts appear to reduce profit margins without a proportional increase in sales, suggesting the need for optimization.



RECOMMENDATIONS

1. Optimize Product Portfolio
   
Focus marketing and inventory efforts on Electronics and Furniture due to high profitability.
Review the Clothing strategy by reducing discount rates or repositioning the product line to improve margins.
Regularly assess category performance to adjust stock and pricing strategies.


3. Refine Customer Loyalty Programs
   
Strengthen Gold and Silver tiers to encourage repeat purchases.
Offer exclusive deals or early access benefits.
Segment promotions by gender, capitalizing on high female engagement.


4. Enhance Customer Retention
   
Develop personalized engagement plans for the top five high-value customers.
Introduce tier-based rewards linked to total spending to boost loyalty.
Encourage customer feedback to understand needs and improve retention.


5. Align Regional Strategies
   
Customize campaigns to match regional performance trends.
Boost Clothing promotions in underperforming regions such as the West and South.
Use regional dashboards to track and measure campaign effectiveness over time.


6. Monitor Discount Effectiveness
   
Conduct A/B testing to identify the most effective discount levels.
Implement dynamic pricing models that adjust discounts by product type or loyalty tier.
Periodically review discount data to ensure sustained margin growth.



CONCLUSION

The Power BI analysis successfully combined and examined sales, product, and customer data to generate actionable insights.

* Key Findings:

- Electronics and Furniture are the most profitable categories.
- Female customers and Bronze loyalty members drive the majority of revenue.
- Discounts are substantial but may be reducing profitability.
- A small number of customers contribute a large share of total revenue.

* Recommended Actions:

- Focus on profitable product categories.
- Strengthen loyalty programs and retention strategies.
- Use regional targeting to balance sales performance.
- Continuously monitor and optimize discount policies.

Implementing these actions will help the business improve profitability, strengthen customer engagement, and enhance data-driven decision-making.

Future analyses could include marketing spend, customer satisfaction, or repeat purchase rates to gain deeper insights into business growth.

