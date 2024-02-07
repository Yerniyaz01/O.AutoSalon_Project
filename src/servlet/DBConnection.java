package servlet;

import model.*;

import java.sql.*;
import java.util.ArrayList;

public class DBConnection {

    private static Connection connection;
    private static String url = "jdbc:postgresql://localhost:5433/postgres";
    private static String login = "postgres";
    private static String password = "postgres";

    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, login, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static User getUser(String email) {
        User user = null;

        try {
            PreparedStatement statement = connection.prepareStatement(" " +
                    "SELECT * FROM users WHERE email = ? ");

            statement.setString(1, email);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setNick(resultSet.getString("nick"));
                user.setDate(resultSet.getDate("date"));
                user.setPassword(resultSet.getString("password"));
                statement.close();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }


    public static ArrayList<Car> getCars() {

        ArrayList<Car> cars = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement(" " +
                    "SELECT * FROM cars ORDER BY ASC ");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Car car = new Car();
                car.setId(resultSet.getInt("id"));
                car.setPrice(resultSet.getInt("price"));
                car.setVolume(resultSet.getDouble("volume"));
                car.setModel(resultSet.getString("model"));
                car.setBrand(resultSet.getString("brand"));
                car.setDate(resultSet.getDate("date"));


                cars.add(car);
            }

            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return cars;
    }




}
