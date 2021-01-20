package nlu.edu.fit.bookstore.model;

public class User {
    int id;
    String username;
    String address;
    String fullname;
    String password;
    String email;
    int phone;
    String sex;
    String dob;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public User() {
    }

    public User(int id, String username, String address, String fullname, String password, String email, int phone, String sex, String dob) {
        this.id = id;
        this.username = username;
        this.address = address;
        this.fullname = fullname;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.sex = sex;
        this.dob = dob;
    }


}
