package models;

import beans.Category;
import beans.Course;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;

public class CourseModel {

    public static List<Course> getAll() {
        String sql = "select * from courses";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }



    public static void add(Course c) {
        final String sql = "INSERT INTO courses ( CourseName, TinyDes, TeacherID, Wishlist, WhatLearn, TitleContent, DesContent, FullDes, Comment, Rating, Price, Include, CatID) VALUES (:coursename,:tinydes,:teacherid,:wishlist,:whatlearn,:titlecontent,:descontent,:fulldes,:comment,:rating,:price,:include,:catid)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("coursename", c.getCourseName())
                    .addParameter("tinydes",c.getTinyDes())
                    .addParameter("teacherid",c.getTeacherID())
                    .addParameter("wishlist",c.isWishlist())
                    .addParameter("whatlearn",c.getWhatLearn())
                    .addParameter("titlecontent",c.getTitleContent())
                    .addParameter("descontent",c.getDesContent())
                    .addParameter("fulldes",c.getFullDes())
                    .addParameter("comment",c.getComment())
                    .addParameter("rating",c.getRating())
                    .addParameter("price",c.getPrice())
                    .addParameter("include",c.getInclude())
                    .addParameter("catid",c.getCatID())

                    .executeUpdate();
        }
    }



    public static List<Course> findByCatID(int catID) {
        String sql = "select * from courses where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .executeAndFetch(Course.class);
        }
    }


    public static int countByCatID(int catID) {
        String sql = "select count(*) from courses where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .executeScalar(Integer.class);
        }
    }

    public static List<Course> findByCatID(int catID, int limit, int offset) {
        String sql = "select * from courses where CatID = :CatID limit :limit offset :offset";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .addParameter("limit", limit)
                    .addParameter("offset", offset)
                    .executeAndFetch(Course.class);
        }
    }



    public static Optional<Course> findByID(int id) {
        String sql = "select * from courses where CourseID = :CourseID";

        try (Connection con = DbUtils.getConnection()) {
            List<Course> list = con.createQuery(sql)
                    .addParameter("CourseID", id)
                    .executeAndFetch(Course.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }




    public static void delete(int id) {

        final String sql = "DELETE FROM courses WHERE CourseID = :courseid";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("courseid", id)
                    .executeUpdate();
        }
    }

    public static void update(Course c) {
        final String sql = "UPDATE courses SET  CourseName = :coursename, TinyDes = :tinydes, TeacherID = :teacherid, Wishlist = :wishlist, WhatLearn = :whatlearn, TitleContent = :titlecontent, DesContent = :descontent, FullDes = :fulldes, Comment = :comment, Rating = :rating, Price = :price, Include = :include, CatID = :catid WHERE CourseID = :courseid ";

        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("courseid", c.getCourseID())
                    .addParameter("coursename", c.getCourseName())
                    .addParameter("tinydes",c.getTinyDes())
                    .addParameter("teacherid",c.getTeacherID())
                    .addParameter("wishlist",c.isWishlist())
                    .addParameter("whatlearn",c.getWhatLearn())
                    .addParameter("titlecontent",c.getTitleContent())
                    .addParameter("descontent",c.getDesContent())
                    .addParameter("fulldes",c.getFullDes())
                    .addParameter("comment",c.getComment())
                    .addParameter("rating",c.getRating())
                    .addParameter("price",c.getPrice())
                    .addParameter("include",c.getInclude())
                    .addParameter("catid",c.getCatID())
                    .executeUpdate();
        }
    }


    public static List<Course> search(String search) {
        String sql = "select CourseID,CourseName,TinyDes,`Comment`, TeacherID,Price,DesContent,FullDes,Include,Wishlist,WhatLearn,Rating,courses.CatID,TitleContent\n" +
                "from courses,categories\n" +
                "where courses.CatID=categories.CatID and (( match(CourseName) against  (:search IN NATURAL LANGUAGE MODE) " +
                "or CourseName LIKE :search) " +
                "or ( match(CatName) against  (:search IN NATURAL LANGUAGE MODE) " +
                "or CatName LIKE :search))\n" +
                "group by courses.CourseID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("search", "%" +search + "%")

                    .executeAndFetch(Course.class);
        }
    }





}
