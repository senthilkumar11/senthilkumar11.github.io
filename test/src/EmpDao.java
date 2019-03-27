import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class EmpDao {

	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
	public static void date(String dat,int id )
	{
		int status=0;
		try{
			Connection con=EmpDao.getConnection();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Scanner p=new Scanner(System.in);
			
			Date dt=sdf.parse(dat);
			PreparedStatement ps=con.prepareStatement("insert into date values (?,?)");
			ps.setInt(1,id);
			ps.setString(2,sdf.format(dt));
			status=ps.executeUpdate();
			if(status>0)
				System.out.println("successfull");
			else
				System.out.println("not successfull");
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
	}
	
}