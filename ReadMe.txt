# Smart City Traffic & Air Quality Insights 🚦🌫️

## 📌 Project Overview
This project analyzes **traffic congestion** and **air quality trends** in a synthetic smart city dataset.  
The goal is to provide **data-driven insights** for urban planning, pollution control, and congestion management.

The project workflow:
1. **Data Generation** – Synthetic dataset created using Python (Faker library).
2. **Data Storage** – Data loaded into **Google BigQuery**.
3. **Data Analysis** – SQL queries for traffic & pollution trends.
4. **Visualization** – Interactive dashboard built with **Power BI**.

---

## 📊 Key Features
- 🚗 **Hourly Traffic Trends** – Identify rush hours.  
- 📍 **Traffic Contribution per Location** – Spot most congested areas.  
- 🌫️ **Pollution Insights (PM2.5, NO₂)** – Highlight air quality hotspots.  
- 🗺️ **Geo Hotspots Map** – Overlay of traffic + pollution.  
- 📈 **Executive KPIs** – Peak Hour Vehicle Count, Highest Pollution Levels, Most Congested Location.  

---

## 🛠️ Tech Stack
- **Python** – Data generation (Faker, Pandas, CSV export)  
- **Google BigQuery** – Cloud data warehouse for storage & SQL analysis  
- **SQL** – Queries for aggregation, trend analysis, and hotspot detection  
- **Power BI** – Interactive dashboard visualization  

---

## 📂 Project Structure
📦 smart-city-traffic-air-quality
┣ 📜 data_generator.py # Python script to generate synthetic dataset
┣ 📜 synthetic_data.csv # Generated dataset
┣ 📜 README.md # Project documentation
┣ 📜 requirements.txt # Python dependencies
┣ 📂 queries # BigQuery SQL scripts
┣ 📂 dashboard # Power BI .pbix file


---

## ▶️ How to Run
1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/smart-city-traffic-air-quality.git
   cd smart-city-traffic-air-quality


Install dependencies:

pip install -r requirements.txt


Generate synthetic dataset:

python data_generator.py


Upload the CSV (synthetic_data.csv) into BigQuery.

Run SQL queries from the queries/ folder in BigQuery.

Open the Power BI dashboard (dashboard.pbix) and connect it to your BigQuery dataset.

📊 Dashboard Highlights

Hourly Traffic Trend

Traffic Contribution per Location

Pollution by Location

Traffic + Pollution Hotspots Map

Executive KPIs (Peak Hour Count, Pollution Levels, Congested Location)

🚀 Future Enhancements

Add real IoT sensor integration

Predictive modeling using ML for traffic & pollution forecasting

Integration with Google Maps API for live tracking

👨‍💻 Tanmay Sharma
Data Analyst | Power BI | SQL | BigQuery | Python
LinkedIn: https://www.linkedin.com/in/tanmay-sharma-800599373/
Git hub: https://github.com/Tanu272004/Smart-City-Traffic-Air-Quality-Insights
