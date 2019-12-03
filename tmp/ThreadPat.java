package Table;

public class ThreadPat extends Thread {
	
	public void Star()
	{
		for(int j=5;j>0;j--)
		{
			for(int i=0;i<j;i++)
			{
				System.out.print("*");
			}
			
			System.out.println(" ");	
		}
	}
	
	public static void main(String[] args) {
		ThreadPat t=new ThreadPat();
		t.start();
		t.Star();
		
	}
}
