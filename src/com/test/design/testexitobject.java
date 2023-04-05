package com.test.design;

import java.util.Scanner;

public class testexitobject {

	public static void main(String[] args) {
		primenumber primenumbetr = new primenumber();
		factorial factorial= new factorial();
		Scanner Scanner=new Scanner(System.in);
		System.out.println("enter your choice");
		System.out.println("1-->prime");
		System.out.println("2-->factorial");
		System.out.println("3-->exit");
		int choice=Scanner.nextInt();
		if(choice==1)
		{
			primenumber.testprimenumber();
			
		}
		else if (choice==2)	
		{
			factorial.testfactorial();
			
		}
}
 
class primenumber {
	public void testprimenumber()
	{
		int temp;
		boolean isPrime=true;
		Scanner scan= new Scanner(System.in);
		System.out.println("Enter any number:");
		//capture the input in an integer
		int num=scan.nextInt();
	        scan.close();
		for(int i=2;i<=num/2;i++)
		{
	           temp=num%i;
		   if(temp==0)
		   {
		      isPrime=false;
		      break;
		   }
		}
		//If isPrime is true then the number is prime else not
		if(isPrime)
		   System.out.println(num + " is a Prime Number");
		else
		   System.out.println(num + " is not a Prime Number");
	}
}

class factorial {
	public void testfactorialEx()
	{
		Scanner Scanner=new Scanner(System.in);
        //Declare and Initialize the variable
        System.out.println("Enter the number: ");
        int num=Scanner.nextInt();
        int fact=1;
        for(int i=1;i<=num;i++)
        {
            fact=fact*i;
        }
        System.out.println("Factorial of the number: "+fact); }
}

}
