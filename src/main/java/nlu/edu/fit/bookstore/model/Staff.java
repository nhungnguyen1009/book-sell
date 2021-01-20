package nlu.edu.fit.bookstore.model;

import java.util.Date;

public class Staff {
    private int id;
    private String name;
    private Date dayToWork;
    private String phone;
    private double salary;

    public Staff() {
    }

    public Staff(int id, String name, Date dayToWork, String phone, double salary) {
        this.id = id;
        this.name = name;
        this.dayToWork = dayToWork;
        this.phone = phone;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDayToWork() {
        return dayToWork;
    }

    public void setDayToWork(Date dayToWork) {
        this.dayToWork = dayToWork;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }
}
