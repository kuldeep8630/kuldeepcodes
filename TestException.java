import java.util.Scanner;
public class TestException {

	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
	    System.out.println("Enter your number");
		int a,b,c;
		try
		{
			a=scanner.nextInt();
		    b=scanner.nextInt();
		    c=a/b;
		    System.out.println(c);
		    
		}
		catch(Exception e) {
			System.out.println("please do proper input");
		}


	}

}
