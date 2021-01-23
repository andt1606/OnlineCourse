package controllers;

//import beans.User;
import beans.Course;
import models.CourseModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/Home/*")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }

        switch (path) {
            case "/Index":
                ServletUtils.forward("/views/vwHome/Index.jsp", request, response);
                break;

            case "/ByCat":
                int catID = Integer.parseInt(request.getParameter("id"));
                List<Course> list = CourseModel.findByCatID(catID);
                request.setAttribute("courses", list);

//                 List<Category> categories = (List<Category>) request.getAttribute("categoriesWithDetails");
//                 System.out.println(categories.size());


                ServletUtils.forward("/views/vwHome/ByCat.jsp", request, response);
                break;

            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
