package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/send_1")
public class SendServlet_1 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str = req.getParameter("msg");
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter pw =resp.getWriter();
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>회원 목록 페이지</title>");
		pw.println("<style>");
		if(str.equals("special")||str.equals("SPECIAL")) {
			pw.println(".hehe{ position : absolute; top: 25%; left: 25%;}");
			pw.println(".red{ color:red;}");
			pw.println("span{ font-size:5em; color:green;}");
		}
		else {
			pw.println(".red{ color:red;}");
			pw.println("span{ font-size:5em; color:green;}");
		}
		pw.println("</style>");
		pw.println("</head>");
		pw.println("<body>");
		if(str.equals("special")||str.equals("SPECIAL")) {
			String st = "☆★☆스으페에셔얼!!!☆★☆";
			char[] chs = st.toCharArray();
			pw.println("<div class='hehe'>");
			for(int i=0;i<chs.length;i++) {
				if(i%2==0)
					pw.print("<span class='red'>"+chs[i]+"</span>");
				else
					pw.print("<span>"+chs[i]+"</span>");
			}
			pw.println("</div>");
		}else {
			char[] chs = str.toCharArray();
			pw.println("<div>");
				for(int i=0;i<chs.length;i++) {
					if(i%2==0)
						pw.print("<span class='red'>"+chs[i]+"</span>");
					else
						pw.print("<span>"+chs[i]+"</span>");
				}
			pw.println("</div>");
		}
		
		pw.println("<link><a href='/Web02_Servlet/'>고홈</a></link>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}

}
