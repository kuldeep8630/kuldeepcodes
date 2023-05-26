package car;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookCarServlet")
public class BookCarServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int carId = Integer.parseInt(request.getParameter("carId"));
        String userName = request.getParameter("userName");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");

        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_booking", "root", "root");
            stmt = conn.prepareStatement("INSERT INTO bookings (car_id, user_name, start_date, end_date) VALUES (?, ?, ?, ?)");
            stmt.setInt(1, carId);
            stmt.setString(2, userName);
            stmt.setString(3, startDate);
            stmt.setString(4, endDate);
            stmt.executeUpdate();

            response.sendRedirect("bookingSuccess.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("bookingFailure.jsp");
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
