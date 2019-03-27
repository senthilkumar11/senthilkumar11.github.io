 	

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MySession
 */
@WebServlet("/MySession")
public class MySession extends HttpServlet {
	int  count=0;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MySession() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		//String name=request.getParameter("t1");
		//String password=request.getParameter("t2");
		HttpSession session=request.getSession(true);
		if(session.isNew())
		{
			out.println("welcome to our web site");
			out.println("Your session id is" + " "+ session.getId());
			
			
		}
		else
		{
			Date d1=new Date(session.getCreationTime());
			//out.println(d1);
			//out.println(session.getMaxInactiveInterval());
			//session.setMaxInactiveInterval(50);
			//session.setAttribute("key1", name);
			
			for(int i=0; i<5; i++)
			{
				count++;
				out.println(count);
				if(count==3)
				{
					
					Date d2=new Date(session.getLastAccessedTime());
					//out.println(d2);
					out.println("you enterd" + " "+ d1.getTime());
					out.println("you spent" + " "+ d2.getTime());
					//out.println("You was visisted till" + " "+( d1.getTime()-d2.getTime()));
					session.invalidate();
				}
			}
			
			
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
