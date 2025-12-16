
# 🛒 E-Commerce Full Funnel Analysis

## 📌 Project Overview

This project presents a **full end-to-end e-commerce funnel analysis**, covering the complete customer journey from session entry to purchase.
The goal is to identify **where users drop off**, **which products and customers drive revenue**, and **how engagement translates into business value**.

The project simulates a **real-world analytics workflow** used by companies such as Amazon, Meesho, or Blinkit — combining data cleaning, SQL-based modeling, and dashboard storytelling.

---

## 🧰 Tools & Technologies Used

* **Excel** – Data cleaning, exploratory analysis, funnel construction
* **SQL (Google BigQuery)** – Scalable data modeling, joins, aggregations
* **Power BI** – Interactive dashboards and business storytelling
* **GitHub** – Project versioning and documentation

---

## 📂 Dataset & Source

The dataset was **sourced from Kaggle** and structured to resemble real e-commerce analytics schemas.

It includes:

* `customers` – demographic and signup information
* `sessions` – browsing sessions (device, traffic source)
* `cart_events` – product views and add-to-cart events
* `orders` – customer-level purchase records
* `order_items` – products purchased per order
* `products` – product catalog and pricing

> ⚠️ Note:
>
> * Session data is available for a **single year**, while customers span multiple years — reflecting **real data retention policies** commonly used in companies.

---

## 🔬 Data Cleaning & Methodology

* Fixed invalid and future-dated timestamps
* Standardized categorical fields (device, traffic source)
* Created helper flags (views, add-to-cart, purchase)
* Built a **session-level master funnel table**
* Used **customer-level purchase attribution** (explained in assumptions)

---

## 🔄 Funnel Analysis

**Funnel Stages**

1. Visits (Sessions)
2. Product Views
3. Add to Cart
4. Purchases

**Key Observations**

* Over **50% of sessions drop before reaching product pages**, making **product discovery** the largest bottleneck.
* Once users view products, **progression to add-to-cart is strong (~51%)**.
* Purchases appear high due to **customer-level attribution**, not strict session checkout tracking.

> This mirrors real analytical trade-offs where event-level checkout data may be unavailable.

---

## 📦 Product & Revenue Analysis

* Products with **high views are not always top revenue contributors**
* A small subset of products drives a **disproportionate share of revenue**
* Pricing and conversion efficiency matter more than raw traffic

**Insight**

> “Revenue quality matters more than traffic quantity.”

High-revenue products often convert efficiently even with moderate engagement.

---

## 👥 Customer Segmentation (RFM Analysis)

Customers were segmented using:

* **Recency** – How recently a customer purchased
* **Frequency** – How often they engaged
* **Monetary** – Total revenue contribution

**Segments Identified**

* Loyal Customers
* At-Risk Customers
* Low-Value Customers
* New Customers

**Key Behavioral Insight**

* **Loyal customers purchase with fewer interactions**
  → fewer views and fewer add-to-cart actions before conversion
  → indicates trust, familiarity, and faster decision-making

---

## 📊 Dashboards Built (Power BI)

1. **Executive Overview** – KPIs (Sessions, Revenue, AOV, Conversion)
2. **Funnel & Drop-Off Analysis** – Funnel stages and leakage points
3. **Product Performance** – Views vs ATC vs Revenue trade-off
4. **Customer Analytics (RFM)** – Value segmentation & contribution
5. **Behavioral Insights** – Device & traffic comparisons

Each dashboard is designed to answer **one clear business question**.

---

## 💡 Key Business Insights

* The **largest opportunity lies at the top of the funnel** — improving landing pages and product discovery.
* Product engagement strongly correlates with conversion once users reach product pages.
* Revenue is driven by **conversion quality and pricing**, not volume alone.
* Loyal customers require **less persuasion** before purchasing.
* Device-level differences exist but are **incremental**, suggesting UX optimization rather than channel overhaul.

---

## 📈 Business Recommendations

* Improve homepage and category navigation to reduce early drop-offs
* Prioritize high-revenue products for promotions, not just high-traffic ones
* Design retention strategies for loyal customers (personalization, rewards)
* Audit mobile checkout UX for small friction improvements
* Use customer-level analytics where session-level data is unavailable, but clearly document assumptions

---

## ⚠️ Limitations & Assumptions

* Purchases are tracked at the **customer level**, not session checkout level
* Conversion rates are **analytical approximations**, not production metrics
* Dataset is static and simulated for learning purposes
* No real-time or marketing cost data (CAC) included

---

## 📁 Project Structure

```text
ecommerce-full-funnel-analysis/
│
├── Data/
│   ├── cart_events.csv        # User-level product interactions (views & add-to-cart events)
│   ├── customers.csv          # Customer master data (demographics & signup info)
│   ├── order_items.csv        # Line-level order details (products per order)
│   ├── orders.csv             # Order-level purchase data (used for revenue & RFM)
│   ├── products.csv           # Product catalog with pricing & category information
│   └── sessions.csv           # Session-level traffic data (device, source, timestamps)
│
├── Excel/
│   └── Executive_Overview.xlsx
│       # Initial data cleaning, EDA, funnel construction,
│       # and KPI validation before scaling analysis to SQL
│
├── Insights/
│   └── Insights.md
│       # Written business insights, interpretations,
│       # assumptions, limitations, and executive summaries
│
├── Power BI/
│   └── Dashboard_Ecommerce.pbix
│       # Interactive dashboards covering:
│       # Executive Overview, Funnel Drop-off,
│       # Product Performance, and Customer (RFM) Analytics
│
├── SQL/
│   ├── base.sql                # Base session-level table used as funnel foundation
│   ├── customer_frequency.sql  # Frequency component of RFM (orders per customer)
│   ├── customer_monetary.sql   # Monetary component of RFM (total spend per customer)
│   ├── customer_recency.sql    # Recency component of RFM (days since last purchase)
│   ├── drop_off.sql            # Drop-off flag logic for funnel stage exits
│   ├── funnel.sql              # Final session-level funnel view (core analytical asset)
│   ├── funnel_base.sql         # Cleaned session data before event aggregation
│   ├── product_dashboard.sql   # Queries supporting product-focused Power BI visuals
│   ├── product_engagement.sql  # Views & ATC aggregation at product level
│   ├── product_performance.sql # Product-level KPIs (engagement & conversion)
│   ├── product_revenue.sql     # Revenue contribution by product
│   ├── product_thresholds.sql  # 75th percentile thresholds for high-engagement products
│   ├── session_atc.sql         # Add-to-cart events aggregated at session level
│   └── session_views.sql       # Product view events aggregated at session level
│
├── Screenshots/
│   ├── Business_Summary.png    # Executive overview dashboard snapshot
│   ├── Checkout_Drop.png       # Funnel drop-off & conversion visualization
│   ├── Customer_Analytics.png  # RFM segmentation & customer behavior dashboard
│   └── Funnel_&_Dropoff.png    # Full funnel visualization with stage-wise losses
│
└── README.md
    # Project overview, methodology, findings,
    # business recommendations, and assumptions
```

---

