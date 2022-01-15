package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectDao.reservDao;
import projectVO.reservVO;

/**
 * Servlet implementation class kakao
 */
@WebServlet("/kakao")
public class kakao extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public kakao() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        reservDao dao = new reservDao();
        reservVO vo = new reservVO();

        String rdate = request.getParameter("rdate");
        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");
        String num3 = request.getParameter("num3");
        String num4 = request.getParameter("num4");
        String total = request.getParameter("total");

        System.out.println(rdate);

        vo.setRdate(rdate);
        vo.setNum1(num1);
        vo.setNum2(num2);
        vo.setNum3(num3);
        vo.setNum4(num4);
        vo.setTotal(total);

        int result = dao.insert(vo);

        System.out.println(result);

        if (result == 1) {

            response.sendRedirect("reserv_result.jsp");

        } else {
            System.out.println("예매실패");
        }
    }

}
