package maven_git_jenkins_dockerhub;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class DataTypes extends HttpServlet {
	 public void service( HttpServletRequest req, HttpServletResponse res ) throws IOException {
    PrintWriter out = res.getWriter();
    out.println( "Hello, World!" );
    out.close();
	}
	}
