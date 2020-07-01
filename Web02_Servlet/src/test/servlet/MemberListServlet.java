package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dto.MemberDto;

@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//DB 에서 불러온 회원 목록이라고 가정하자
		List<MemberDto> list = new ArrayList<>();
		list.add(new MemberDto(1, "김구라", "노량진"));
		list.add(new MemberDto(2, "해골", "행신동"));
		list.add(new MemberDto(3, "원숭이", "상도동"));
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter pw =resp.getWriter();
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>회원 목록 페이지</title>");
		pw.println("<link rel='stylesheet' href='/Web02_Servlet/css/bootstrap.css'/>");
		pw.println("<style>");
			pw.println("td { border	: 3px solid;");
			pw.println("font-size:2em;}");
		pw.println("</style>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<div class='container'>");
		pw.println("<h1>회원 목록 입니다</h1>");
		pw.println("<table class='table table-dark'>");
			pw.println("<caption>회원 목록 입니다.</caption>");
			pw.println("<tr>");
				pw.println("<td>번호</td>");
				pw.println("<td>이름</td>");
				pw.println("<td>주소</td>");
			pw.println("</tr>");
			for(MemberDto tmp : list) {
				pw.println("<tr>");
					pw.println("<th>"+tmp.getNum()+"</th>");
					pw.println("<th>"+tmp.getName()+"</th>");
					pw.println("<th>"+tmp.getAddr()+"</th>");
				pw.println("</tr>");
			}
		pw.println("</table>");
		pw.println("<li><a href='/Web02_Servlet/'>고홈</a></li>");
		pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
		
		pw.close();
	}

}
