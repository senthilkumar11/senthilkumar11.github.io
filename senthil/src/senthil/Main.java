package senthil;

class A
{
       
       public synchronized String display() 
       
       {
       
              return "Welcome";
       }
}

       class MyThread implements Runnable
       {
              Thread t;
              A a;
              public MyThread(String str)
              {
                     t=new Thread(str);
                     a=new A();
                     //t.start();
 
            }
			@Override
			public void run() {
				// TODO Auto-generated method stub
				 for(int i=0; i<3; i++)
                 {
                       System.out.println(t.getName() + " "+ "callling"+ a.display());
                 }
			}
              
              
       }
       public class Main {
    	   public static void main(String[] args) throws InterruptedException {
       MyThread m1=new MyThread("one");
       MyThread m2=new MyThread("two");
       Thread t1=new Thread(m1);
       Thread t2=new Thread(m2);
       
       t1.start();
       t2.start();
       

       }

}

