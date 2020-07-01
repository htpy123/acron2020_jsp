package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/users/login")
public class UsersLoginServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		PrintWriter pw = resp.getWriter();
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>로그인 결과 페이지</title>");
		pw.println("<link rel=;stylesheet' href='/Web02_Servlet/css/bootstrap.css'/>");
	
		pw.println("</head>");
		pw.println("<body>");
			pw.println("<div class='container'>");
				if((id.equals("gura"))&&pwd.equals("1234")) {
					pw.println("<p class='alert alert-danger'>"+id+"님 로그인 되었습니다"+"<a> class='alert-link' href='../index.html'>확인</a></p>");

				}else {
					if(!(id.equals("gura"))&&pwd.equals("1234"))
						pw.println("<p class='alert alert-danger>"+id+" 님 아이디가 잘못 입력되었습니다</p>");
					else if(id.equals("gura")&&!(pwd.equals("1234")))
						pw.println("<p class='alert alert-danger>"+id+" 님 비밀번호가 잘못 입력되었습니다</p>");
					else
						pw.println("<p class='alert alert-danger>"+id+" 님 아이디 비밀번호 둘다 잘못 입력되었습니다</p>");
				}
			pw.println("</div>");
		pw.println("<link><a href='/Web02_Servlet/'>고홈</a></link>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}

}
