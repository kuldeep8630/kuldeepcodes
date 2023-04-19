
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.Statement;

public class  NewData{

	public static void main(String[] args) {
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Where is my Driver");
		
		Connection connection=DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/kuldeep","root","root");
		System.out.println("connection success");
		Statement statement=connection.createStatement();
		ResultSet rs=statement.executeQuery("SELECT * FROM kuldeep.information");
		while (rs.next())
		{
			System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3));
		}
		
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
	}

}

