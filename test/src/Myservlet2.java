

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Myservlet2
 */
@WebServlet("/Myservlet2")
public class Myservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myservlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
        
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        String email=request.getParameter("t1");
        String pwd=request.getParameter("t3");
     
        
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        PreparedStatement ps=con.prepareStatement("select name,email,pass from user");
        ResultSet rs=ps.executeQuery();
        String name,email1,pass;
        int flag=0;
        while(rs.next())
        {
                        name=rs.getString(1);
                        email1=rs.getString(2);
                        
                        pass=rs.getString(3);
                        if((email1.equalsIgnoreCase(email)) && (pass.equals(pwd)))
                        {
                                        out.println("<br> Login Success <br>Welcome "+name);
                                        flag=1;
                                        response.sendRedirect("https://senthilkumar11.github.io/");

                                        break;
                                                               }
        }
        if(flag==0)
        {
        	out.println("Login failed");
        }

	}
        catch(Exception e)
        {
        	e.printStackTrace();
        }
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
