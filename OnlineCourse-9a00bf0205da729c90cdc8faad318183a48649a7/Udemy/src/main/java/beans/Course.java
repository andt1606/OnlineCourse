package beans;

public class Course {

    int CourseID,CatID;
    String CourseName, Comment, Include;
    String TinyDes,WhatLearn, TitleContent, DesContent,FullDes;
    int TeacherID,Rating,Price;
    boolean Wishlist;

    public Course() {
    }

    public Course(int courseID, int catID, String courseName, String comment, String include, String tinyDes, String whatLearn, String titleContent, String desContent, String fullDes, int teacherID, int rating, int price, boolean wishlist) {
        CourseID = courseID;
        CatID = catID;
        CourseName = courseName;
        Comment = comment;
        Include = include;
        TinyDes = tinyDes;
        WhatLearn = whatLearn;
        TitleContent = titleContent;
        DesContent = desContent;
        FullDes = fullDes;
        TeacherID = teacherID;
        Rating = rating;
        Price = price;
        Wishlist = wishlist;
    }

    public int getCourseID() {
        return CourseID;
    }

    public void setCourseID(int courseID) {
        CourseID = courseID;
    }

    public int getCatID() {
        return CatID;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public String getCourseName() {
        return CourseName;
    }

    public void setCourseName(String courseName) {
        CourseName = courseName;
    }

    public String getComment() {
        return Comment;
    }

    public void setComment(String comment) {
        Comment = comment;
    }

    public String getInclude() {
        return Include;
    }

    public void setInclude(String include) {
        Include = include;
    }

    public String getTinyDes() {
        return TinyDes;
    }

    public void setTinyDes(String tinyDes) {
        TinyDes = tinyDes;
    }

    public String getWhatLearn() {
        return WhatLearn;
    }

    public void setWhatLearn(String whatLearn) {
        WhatLearn = whatLearn;
    }

    public String getTitleContent() {
        return TitleContent;
    }

    public void setTitleContent(String titleContent) {
        TitleContent = titleContent;
    }

    public String getDesContent() {
        return DesContent;
    }

    public void setDesContent(String desContent) {
        DesContent = desContent;
    }

    public String getFullDes() {
        return FullDes;
    }

    public void setFullDes(String fullDes) {
        FullDes = fullDes;
    }

    public int getTeacherID() {
        return TeacherID;
    }

    public void setTeacherID(int teacherID) {
        TeacherID = teacherID;
    }

    public int getRating() {
        return Rating;
    }

    public void setRating(int rating) {
        Rating = rating;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public boolean isWishlist() {
        return Wishlist;
    }

    public void setWishlist(boolean wishlist) {
        Wishlist = wishlist;
    }
}
