package firstOg2;

class test
{
	public void add()
	{
		int a,b,c;
		a=10;
		b=20;
		c=a+b;
		System.out.println(c);
	}
     public void sub()
	{
		int d,e,f;
		d=30;
		e=20;
		f=d-e;
		System.out.println(f);
	}
}
public class TestObject {

	public static void main(String[] args) {
		test xyz=new test();
		xyz.add();
		xyz.sub();
		System.out.println("hii from main");
	}

}
