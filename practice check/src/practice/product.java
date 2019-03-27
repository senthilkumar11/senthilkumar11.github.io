package practice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class product {
	public static int add(productdetails p) throws SQLException
	{
		Connection con=connectdb.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into product(name,brand,category,price,description) values(?,?,?,?,?)");
		ps.setString(1, p.getName());
		ps.setString(2, p.getBrand());
		ps.setString(3, p.getCategory());
		ps.setDouble(4, p.getPrice());
		ps.setString(5, p.getDiscription());
		int status=ps.executeUpdate();
		con.close();
		return status;

	}
	public static int update(productdetails p){
		int status=0;
		try{
			Connection con=connectdb.getConnection();
			PreparedStatement ps=con.prepareStatement("update product set name=?,brand=?,category=?,price=?,description=? where id=?");
			ps.setString(1, p.getName());
			ps.setString(2, p.getBrand());
			ps.setString(3, p.getCategory());
			ps.setDouble(4, p.getPrice());
			ps.setString(5, p.getDiscription());
			ps.setInt(6, p.getId());
			status=ps.executeUpdate();
			System.out.println(status);
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	public static int delete(int id){
		int status=0;
		try{
			Connection con=connectdb.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from product where id=?");
			ps.setInt(1,id);
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return status;
	}
	public static productdetails getproductbyid(int id){
		productdetails e=new productdetails();
		
		try{
			Connection con=connectdb.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from product where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setBrand(rs.getString(3));
				e.setCategory(rs.getString(4));
				e.setPrice(rs.getDouble(5));
				e.setDiscription(rs.getString(6));
			}
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return e;
	}
	public static List<productdetails> getAllProducts(){
		List<productdetails> list=new ArrayList<productdetails>();
		
		try{
			Connection con=connectdb.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from product");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				productdetails e=new productdetails();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setBrand(rs.getString(3));
				e.setCategory(rs.getString(4));
				e.setPrice(rs.getDouble(5));
				e.setDiscription(rs.getString(6));
				list.add(e);
			}
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return list;
	}
}
