package filters;

import beans.Category;
import beans.Course;
import models.CategoryModel;
import models.CourseModel;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.List;

@WebFilter(filterName = "LayoutFilter", urlPatterns = "/*")
public class LayoutFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        List<Category> list = CategoryModel.getAll();
        req.setAttribute("categoriesWithDetails", list);

        String search = req.getParameter("search");
        req.setAttribute("search",search);
        chain.doFilter(req, resp);


    }

    public void init(FilterConfig config) throws ServletException {

    }

}
