class TestCons
{
	 public TestCons() {
		 System.out.println("hii from constructor body");
		 
	 }
     public TestCons(int a, int b)
     {
    	 int c=a+b;
    	 System.out.println(c);
     }

public class Test {

	public static void main(String[] args) {
		
         new TestCons(12, 13);
	}

}
}