📦 Inventory Management & Stock Optimization Analysis
​An end-to-end supply chain and data analytics project focused on optimizing inventory levels, classifying stock categories, reducing holding costs, and preventing stockout risks using Python, SQL (PostgreSQL), and Power BI.
​📌 Project Overview
​Effective inventory management is critical for operational efficiency and working capital reduction. This project analyzes transactional stock data across 4,500 SKUs to uncover actionable insights into stock turnover, reorder thresholds, ABC classification, and dead stock identification.
​Key Objectives:
​ABC Inventory Classification: Segment products based on annual consumption value (80/20 rule).
​Economic Order Quantity (EOQ): Determine optimal order sizes to balance holding and ordering costs.
​Stockout Mitigation: Identify high-risk SKUs falling below their Reorder Points (ROP).
​Dead Stock Reduction: Flag slow-moving inventory to free up tied-up working capital.
📂 Project Structure
├── data/
│   ├── raw_inventory.csv          # Original dataset
│   └── cleaned_inventory.csv      # Processed data output
├── notebooks/
│   └── inventory_analysis.ipynb   # Python EDA & feature engineering
├── sql/
│   └── business_queries.sql       # PostgreSQL analytical queries
├── dashboard/
│   └── inventory_dashboard.pbix   # Power BI interactive report
└── README.md                      # Project documentation
🛠️ Tech Stack & Methodology
ToolPurpose
Python (Pandas, NumPy)Data cleaning, missing value imputation, and feature engineering
PostgreSQL / SQLRelational queries, window functions, and Pareto (ABC) calculations
Power BIInteractive dashboard creation, DAX modeling, and KPI tracking
MarkdownComprehensive reporting and GitHub documentation
 Key Findings & Business Impact
 ​ABC Inventory Categorization:
​Class A (15% SKUs): Generates 70% of total consumption value. Requires tight control and daily monitoring.
​Class B (30% SKUs): Generates 20% of total consumption value. Managed via periodic reviews.
​Class C (55% SKUs): Accounts for only 10% of total value. Bulk reordering recommended.
​Cost Optimization:
​Identified category-level over-ordering in Electronics and Industrial Parts, where actual order quantities exceeded recommended EOQ by over 70%.
​Implementing calculated EOQ will save an estimated $1.4M annually in carrying costs.
​Capital Recovery:
​Uncovered non-moving inventory (turnover ratio < 1.5), unlocking $690,000+ in recoverable capital
