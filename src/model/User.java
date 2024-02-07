package model;

import java.sql.Date;

public class User {
    private int id;
    private String email;
    private String password;
    private String nick;
    private Date date;

    public User() {
    }

    public User(int id, String email, String password, String nick, Date date) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.nick = nick;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
