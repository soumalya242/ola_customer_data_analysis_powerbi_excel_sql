
# 🧾 Ola Customer Data Analysis – Using Excel, Power Bi, SQL

_Analyzing Ola customer rating, driver rating, cancellation rate, revenue using SQL, Python, and Power BI._

---

<h2><a class="anchor" id="overview"></a>Overview</h2>

OLA Ride-Hailing Bookings Dashboard — a Power BI dashboard analyzing one month of OLA cab booking data (1–31 July 2024) across 103,024 total bookings, covering booking performance, revenue, cancellations, vehicle types, and customer/driver ratings.

---
<h2><a class="anchor" id="SQL Requirment:"></a>SQL Requirment</h2>

    1. Retrieve all successful bookings?
	2. Find the average ride distance for each vehicle type?
	3. Get the total number of cancelled rides by customers?
	4. List the top 5 customers who booked the highest number of rides?
	5. Get the number of rides cancelled by drivers due to personal and car-related issues?
	6. Find the maximum and minimum driver ratings for Prime Sedan bookings?
	7. Retrieve all rides where payment was made using UPI?
	8. Find the average customer rating per vehicle type?
	9. Calculate the total booking value of rides completed successfully?
	10. List all incomplete rides along with the reason?
---

<h2><a class="anchor" id="SQL Requirment"></a>Power Bi Requirment</h2>

    1. Ride Volume Over Time
	2. Booking Status Breakdown
	3. Top 5 Vehicle Types by Ride Distance
	4. Average Customer Ratings by Vehicle Type
	5. cancelled Rides Reasons
	6. Revenue by Payment Method
	7. Top 5 Customers by Total Booking Value
	8. Ride Distance Distribution Per Day
	9. Driver Ratings Distribution
	10. Customer vs. Driver Ratings

---
<h2><a class="anchor" id="dataset"></a>Dataset</h2>

- CSV files located in `/data/` folder 
- Summary table created from ingested data and used for analysis

---

<h2><a class="anchor" id="tools--technologies"></a>Tools & Technologies</h2>

- SQL (Common Table Expressions, Filtering)
- Power BI (Interactive Visualizations)
- GitHub

---

<h2><a class="anchor" id="dashboard"></a>Dashboard</h2>

1. Overall:
    - Total Booking: 103,024
    - Total Booking Value: ₹35M
    - Booking Status pie chart: Success (63.97K, 62.09%), Canceled by Driver (18.43K, 17.89%), Canceled by Customer (10.5K, 10.19%), Driver Not Found (10.12K, 9.83%)
    - Ride Volume Over Time: line chart of daily booking counts (~3,000–3,400) across July

![Overall Dashboard](/images/Overall.png)

2. Vehicle Type:
    Table with 7 vehicle types (Prime Sedan, Prime SUV, Prime Plus, Mini, Auto, Bike, E-Bike), each showing:

    - Total Booking Value
    - Success Booking Value
    - Avg. Distance Travelled
    - Total Distance Travelled
    - (Auto stands out with a much shorter avg. distance — ~10 km vs ~25 km for others)

![Vehicle Type](/images/Vehicle%20Type.png)

3. Revenue
    - Bar chart: Revenue by Payment Method (Cash ~₹19M, UPI ~₹14M, Credit Card and Debit Card much lower)
    - Line/spike chart: Revenue trend by payment method over the month
    - Top 5 Customer table: Customer ID + Sum of Booking Value (Total: 32,612)

![Revenue](/images/Revenue.png)

4. Cancellation
    - Total Booking, Succeed Booking, Canceled Booking, Canceled Rate Percentage (28.08%) as headline numbers
    - Pie chart: Canceled Ride By Customer (Driver is not moving, Driver asked to cancel, Change of plans, AC is Not working, Wrong Address)
    - Pie chart: Canceled ride By Drivers (Personal & Car related, Customer related, Customer was cou…, More than permitted)

![Cancellation](/images/Cancellation.png)

5. Ratings
    - Driver Rating table by vehicle type (all ~3.98–4.01)
    - Customer Rating table by vehicle type (all ~3.99–4.01)

![Ratings](/images/Rating.png)    

---