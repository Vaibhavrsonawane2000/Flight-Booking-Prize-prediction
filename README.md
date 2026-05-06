# ✈️ Flight Price Optimization & Booking Behavior Analysis 

## Project Overview

Flight ticket prices are highly volatile — they fluctuate based on airline, stops, travel class, departure time, and how far in advance a booking is made. This project combines exploratory data analysis, regression modelling, and interactive dashboarding to answer a core business question:

"How can travellers and airlines use data to make smarter, more cost-effective decisions about flight pricing?"

The analysis covers 300,000+ flight records across 6 Indian domestic airlines with 50+ routes.

## 🎯  Business Objectives
•	Identify which factors most strongly drive ticket price increases
•	Quantify the price premium for non-stop vs. multi-stop flights
•	Analyse how booking window (days before departure) affects fare
•	Compare airline pricing strategies across economy and business class
•	Build a regression model to predict ticket price from booking features
•	Deliver an interactive Power BI dashboard for real-time exploration

## Tools & Technologies

•	Python (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn) — EDA & ML modelling
•	SQL (SQL Server / SSMS) — aggregations, window functions, route-level queries
•	Power BI + DAX + Power Query — interactive dashboard & KPI cards


## SQL Analysis

Performed SQL-based analysis to extract insights:

- Aggregations (AVG, SUM, COUNT)
- Grouping by airline, class, routes
- Window functions (RANK, Running Average)
- CASE statements for price categorization
- Subqueries for identifying premium airlines

SQL helped in validating insights used in the Power BI dashboard.

## Dashboard Features

* KPI Cards: Total Flights, Revenue, Avg Ticket Price, Avg Duration
* Airline Price Comparison
* Stops vs Price Analysis
* Route Matrix (Source → Destination)
* Departure Time Pricing Trends
* Days Left vs Price Trend (Key Insight)
* Class-wise Pricing Analysis
* Interactive Filters (Airline, City, Class, Stops)


## Key Insights

•	Non-stop flights cost 20–40% more than equivalent 1-stop routes
•	Business class fares are consistently 2–3× higher than economy
•	Ticket prices spike sharply within 7 days of departure; booking 2–3 weeks early saves up to 30%
•	Departure time matters — early morning and late-night flights are priced lower on average
•	Airline-specific premium pricing is consistent across routes — certain carriers charge ~25% more regardless of distance
•	Random Forest outperformed Linear Regression and Decision Tree with the highest R² on test data

## Business Recommendations

* Book tickets at least 2–3 weeks in advance to save cost
* Choose 1-stop flights for better price efficiency
* Airlines can optimize pricing based on demand timing
* Customers can use flexible timing to reduce travel costs


## Dashboard Preview
<img width="1695" height="738" alt="Screenshot 2026-05-04 114803" src="https://github.com/user-attachments/assets/6b0686ac-ff53-4ea8-a2b4-dc2484000d95" />

## 🚀  How to Use
1.	Clone this repo or download files individually
2.	Open Flight_Price_Prediction.ipynb in Jupyter / Google Colab and run all cells
3.	Run flight-price-optimization.sql in SQL Server Management Studio (SSMS) after importing the CSV
4.	Open Flight Booking Overview.pbix in Power BI Desktop — use slicers to explore airline, class, city, stops

##  Author

Vaibhav Sonawane — Data Analyst | SQL · Python · Power BI · Machine Learning
📧 vaibhavrsonawane9099@gmail.com
🔗 linkedin.com/in/vaibhavsonawane-304b62236
💻 github.com/Vaibhavrsonawane2000


 If you found this project useful, feel free to star the repository!
#  Flight Price Optimization & Booking Behavior Analysis (Power BI)

