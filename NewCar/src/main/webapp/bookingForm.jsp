<!DOCTYPE html>
<html>
<head>
    <title>Make a Booking</title>
</head>
<body>
    <h1>Make a Booking</h1>
    <form action="BookCarServlet" method="post">

        <label for="carId">Car ID:</label>
        <input type="text" name="carId" required><br><br>
        <label for="userName">Your Name:</label>
        <input type="text" name="userName" required><br><br>
        <label for="startDate">Start Date:</label>
        <input type="date" name="startDate" required><br><br>
        <label for="endDate">End Date:</label>
        <input type="date" name="endDate" required><br><br>
        <input type="submit" value="Book Car">
    </form>
</body>
</html>