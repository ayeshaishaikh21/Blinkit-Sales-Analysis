# 🛒 Blinkit Sales & Operations Dashboard

## 📌 Project Overview
This project is an interactive Power BI dashboard built to analyze Blinkit's sales, customer behavior, product performance, and delivery operations. The dashboard provides business insights through KPIs, interactive charts, and slicers, helping stakeholders monitor performance and make data-driven decisions.

---

## 🎯 Objectives
- Analyze total sales and order performance.
- Identify top-selling products and brands.
- Track customer growth and average order value.
- Monitor delivery performance and delay reasons.
- Create an interactive dashboard for business decision-making.

---

## 🛠️ Tools & Technologies
- Microsoft Power BI
- Power Query
- DAX (Data Analysis Expressions)
- CSV Datasets
- Data Modeling & Relationships

---

## 📂 Dataset
The project uses multiple CSV files, including:
- blinkit_orders
- blinkit_order_items
- blinkit_products
- blinkit_customers
- blinkit_delivery_performance
- blinkit_customer_feedback
- blinkit_inventory
- blinkit_marketing_performance

---

## 📊 Dashboard Features

### Executive Dashboard
- Total Sales KPI
- Total Orders KPI
- Total Customers KPI
- Average Order Value (AOV)
- Sales by Category
- Top 10 Best-Selling Products
- Sales by Brand
- Delivery Status Distribution

### Customer & Delivery Analysis
- Average Delivery Time by Status
- Delay Reasons Analysis
- Customer Rating Insights

---

## 📈 Key KPIs
- Total Sales
- Total Orders
- Total Customers
- Average Order Value

---

## 💡 Business Insights
- Identified the highest-performing product categories.
- Analyzed the top-selling products driving revenue.
- Measured delivery efficiency using average delivery time.
- Investigated common reasons for delayed deliveries.
- Compared sales performance across different brands.

---

## 🧮 DAX Measures Used

```DAX
Total Orders = COUNT(blinkit_orders[order_id])

Total Customers = DISTINCTCOUNT(blinkit_orders[customer_id])

Average Order Value =
DIVIDE(
    SUM(blinkit_orders[order_total]),
    [Total Orders],
    0
)
```

---

## 📷 Dashboard Preview

### Executive Dashboard
(Add `Images/dashboard_page1.png` here)

### Customer & Delivery Analysis
(Add `Images/dashboard_page2.png` here)

---

## 🚀 Future Improvements
- Monthly Sales Trend Analysis
- Customer Segmentation
- Inventory Monitoring Dashboard
- Marketing Campaign Performance Dashboard
- Forecasting using Power BI

---

## 👩‍💻 Author

**Ayesha Shaikh**

Bachelor of Science in Computer Science

Aspiring Data Analyst | Power BI | SQL | Excel | Python

LinkedIn: *(www.linkedin.com/in/
ayeshaishaikh
Vanity URL name
)*

GitHub: *(ayeshaishaikh21)*

## 📊 Dashboard Preview

![Blinkit Dashboard](dashboard.png)

> Interactive Power BI dashboard showing sales performance, product trends, and customer insights.
## 🔥 Key Highlights

- Built an interactive Power BI dashboard from raw CSV data
- Cleaned and transformed data for analysis
- Identified top-selling products and categories
- Analyzed sales trends over time
- Created KPI cards for business performance tracking
## 📁 Project Structure

- data/ → Raw CSV datasets  
- dashboard/ → Power BI file (.pbix)  
- images/ → Dashboard screenshots  

## 🛠 Skills Demonstrated

- Data Cleaning
- Data Visualization
- Power BI
- Business Analysis
- Dashboard Design