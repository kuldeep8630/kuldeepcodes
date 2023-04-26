
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.*;
import java.sql.Statement;
import java.util.Scanner;

public class  NewData{

	public static void main(String[] args) {
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection connection=DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/kuldeep","root","root");
		System.out.println("connection success");
		Statement statement=connection.createStatement();//to run query
		
// for data updated
		
		Scanner scanner=new Scanner(System.in);
		System.out.println("enter id and name to update");
		int y=scanner.nextInt();
		String nm=scanner.next();
		
		String uQuery="UPDATE `kuldeep`.`user` SET `name` = '"+nm+"' WHERE (`id` = '"+y+"')";
				statement.executeUpdate(uQuery);
		System.out.println("data updated");

// for data insert
		
		Scanner ram=new Scanner(System.in);
		System.out.println("Enter id and name");
		int id=scanner.nextInt();
	    String name=scanner.next();
		String query="INSERT INTO user(`id`,`name`) VALUES ('"+id+"','"+name+"');";
		statement.executeLargeUpdate(query);
		System.out.println("Dta Inserted Successfully");
		
// for display table
	
		ResultSet rs=statement.executeQuery("SELECT * FROM kuldeep.user");
		while (rs.next())
		{
			System.out.println(rs.getInt(1)+" "+rs.getString(2)+" ");
			}
		
}
		
		catch(Exception e) {
			System.out.println(e);
		}
	}

}

