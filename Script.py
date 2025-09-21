from faker import Faker
import pandas as pd
import random
from datetime import datetime, timedelta

# Initialize Faker
fake = Faker()

# Parameters
num_records = 10000
locations = ['5th Ave', 'Broadway', 'Main St', 'Park Ave', 'Elm St']
start_date = datetime(2025, 1, 1)

# Generate synthetic data
data = []
for _ in range(num_records):
    record_date = start_date + timedelta(minutes=random.randint(0, 60*24*30))  # within a month
    data.append({
        'Location': random.choice(locations),
        'Date': record_date.date(),
        'Time': record_date.time(),
        'VehicleCount': random.randint(0, 500),
        'PM2.5': round(random.uniform(5, 150), 2),
        'PM10': round(random.uniform(10, 200), 2),
        'NO2': round(random.uniform(5, 100), 2),
        'Temperature': round(random.uniform(15, 40), 2),
        'Humidity': round(random.uniform(20, 80), 2)
    })

# Create DataFrame
df = pd.DataFrame(data)

# Save to CSV
df.to_csv('synthetic_traffic_air_quality.csv', index=False)

print("Synthetic dataset saved as 'synthetic_traffic_air_quality.csv'")
df.head()
