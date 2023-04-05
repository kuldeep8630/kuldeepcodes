import java.util.Scanner;

public class ArrayTest {

	public static void main(String[] args) {
		int a[]=new int[30];
		int c1=0,c2=0;
		Scanner scanner=new Scanner(System.in);
		System.out.println("Enter your Array");
		for (int i=20; i<=40;i++)
		{
			if(i%3==0)
			{
				c1++;
			}
			if(i%4==0)
			{
				c2++;
				
			}
		}
        System.out.println(c1+" "+c2);
	}

}
