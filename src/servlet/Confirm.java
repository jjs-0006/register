package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.User;

/**
 * Servlet implementation class Confirm
 */
@WebServlet("/Confirm")
public class Confirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Confirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    doRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    doRequest(request,response);
	}

	private void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        User user = new User();
        user.setName(request.getParameter("name"));
        user.setNick(request.getParameter("nick"));
        user.setAddress(request.getParameter("address"));
        user.setPass(request.getParameter("pass"));
        session.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/confirm.jsp");
        dispatcher.forward(request, response);
	}

}
