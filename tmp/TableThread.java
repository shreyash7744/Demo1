package Table;

public class TableThread extends Thread {
	
	int t=5;
	
	public void table()
	{
		for(int i=1;i<=10;i++)
		{
			int table;
			
			System.out.println(table=t*i);
			try {
				Thread.sleep(500);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
	}
	public static void main(String[] args) {
		TableThread t1=new TableThread();
		t1.start();
		t1.table();
		
	}

}
