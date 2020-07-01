package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sub/fortune_1")
public class FortuneServlet_1 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] str = new String[4];
		str[0] = "<h1>대길</h1>";
		str[1] = "<h1>길</h1>";
		str[2] = "<h1>흉</h1>";
		str[3] = "<h1>대흉</h1>";
		Random ran = new Random();
		int a = ran.nextInt(4);
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter pw = resp.getWriter();
		pw.println(str[a]);
		pw.println("<li><a href=\"/Web02_Servlet/index.html\">홈</a></li>");
	}
}
