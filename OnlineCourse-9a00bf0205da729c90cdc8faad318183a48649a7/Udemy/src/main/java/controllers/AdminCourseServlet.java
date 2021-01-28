package controllers;

import beans.Category;
import beans.Course;
import models.CategoryModel;
import models.CourseModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AdminCourseServlet",urlPatterns = "/Admin/Course/*")
public class AdminCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = request.getPathInfo();
        switch (path) {
            case "/Add":
                addCourse(request, response);
                break;
            case "/Delete":
                deleteCourse(request, response);
                break;
            case "/Update":
                updateCourse(request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }

    }


    private void deleteCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CourseID"));
        CourseModel.delete(id);
        ServletUtils.redirect("/Admin/Course", request, response);
    }

    private void updateCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idcourse = Integer.parseInt(request.getParameter("CourseID"));

        String cname = request.getParameter("CourseName");
        String s = request.getParameter("CatID");
        int idcat =Integer.parseInt(s);

        String tdes = request.getParameter("TinyDes");
        String teachid = request.getParameter("TeacherID");
        int idteach =Integer.parseInt(teachid);
        String what = request.getParameter("WhatLearn");
        String tcon = request.getParameter("TitleContent");
        String dcon = request.getParameter("DesContent");
        String fdes = request.getParameter("FullDes");
        String cost = request.getParameter("Price");
        int much =Integer.parseInt(cost);


        Course c = new Course(idcourse,idcat,cname,tcon,tcon,tdes,what,tcon,dcon,fdes,idteach,1,much,true);
        CourseModel.update(c);
        ServletUtils.redirect("/Admin/Course", request, response);
    }




    private void addCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cname = request.getParameter("CourseName");
        String s = request.getParameter("CatID");
        int idcat =Integer.parseInt(s);

        String tdes = request.getParameter("TinyDes");
        String teachid = request.getParameter("TeacherID");
        int idteach =Integer.parseInt(teachid);
        String what = request.getParameter("WhatLearn");
        String tcon = request.getParameter("TitleContent");
        String dcon = request.getParameter("DesContent");
        String fdes = request.getParameter("FullDes");
        String cost = request.getParameter("Price");
        int much =Integer.parseInt(cost);

        Course c = new Course(-1,idcat,cname,tcon,tcon,tdes,what,tcon,dcon,fdes,idteach,1,much,true);
        CourseModel.add(c);
        ServletUtils.forward("/views/vwCourse/Add.jsp", request, response);
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }

        switch (path) {
            case "/Index":
                List<Course> list = CourseModel.getAll();
                request.setAttribute("courses", list);
                ServletUtils.forward("/views/vwCourse/Index.jsp", request, response);
                break;
            case "/Add":
                ServletUtils.forward("/views/vwCourse/Add.jsp", request, response);
                break;
            case "/Edit":
//                int id = Integer.parseInt(request.getParameter("id"));
//                Optional<Course> c = CourseModel.findByID(id);
//                if (c.isPresent()) {
//                    request.setAttribute("course", c.get());
//                    ServletUtils.forward("/views/vwCourse/Edit.jsp", request, response);
//                } else {
//                    ServletUtils.redirect("/Admin/Course", request, response);
//                }

//                int id = Integer.parseInt(request.getParameter("id"));
//                Optional<Course> c = CourseModel.findByID(id);
//                request.setAttribute("courses", c.get());
//                ServletUtils.forward("/views/vwCourse/Edit.jsp", request, response);


                int id = Integer.parseInt(request.getParameter("id"));
                Optional<Course> c = CourseModel.findByID(id);
                if (c.isPresent()) {
                    request.setAttribute("courses", c.get());
                    ServletUtils.forward("/views/vwCourse/Edit.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Admin/Course", request, response);
                }
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }

    }
}
