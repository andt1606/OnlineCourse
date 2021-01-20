package models;

import beans.Course;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;

public class CourseModel {

    public static List<Course> getAll() {
        String sql = "select * from courses";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }

}
