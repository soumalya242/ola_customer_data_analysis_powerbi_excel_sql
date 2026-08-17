select * from bookings;


#1. Retrieve all successful bookings:
SELECT * FROM bookings WHERE Booking_Status = 'Success';


#2. Find the average ride distance for each vehicle type:
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY
Vehicle_Type;


#3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'canceled by Customer';


#4. List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID, count(Booking_Id) as total_ride
from bookings group by Customer_Id 
order by total_ride desc limit 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) from bookings
where canceled_rides_by_driver = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from bookings where Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
select * from bookings where Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type:
select Vehicle_Type,avg(Customer_Rating) as avarage_rating
from bookings group by Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE
Booking_Status = 'Success';


#10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason, Incomplete_Rides 
FROM bookings 
WHERE Incomplete_Rides = 'Yes';
