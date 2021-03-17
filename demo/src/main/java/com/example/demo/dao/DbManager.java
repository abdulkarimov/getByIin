package com.example.demo.dao;

import com.example.demo.entity.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DbManager {

    private static final String URL = "jdbc:sqlite:C:\\Users\\HeniTay\\IdeaProjects\\demo\\identifier.sqlite";
    private static final String GET_ALL_USER_QUERY = "select * from user";
    private static final String GET_USER_QUERY = "select * from user where iin = ?";

    public static List<User> getAllUsers() throws ClassNotFoundException {

        Class.forName("org.sqlite.JDBC");
        List<User> users = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(URL);
             PreparedStatement statement = connection.prepareStatement(GET_ALL_USER_QUERY)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                users.add(new User(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6)
                ));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;

    }

    public static User getUser(String  IIN) throws ClassNotFoundException {

        Class.forName("org.sqlite.JDBC");
        User user = new User();
        try (Connection connection = DriverManager.getConnection(URL);
             PreparedStatement statement = connection.prepareStatement(GET_USER_QUERY)) {

            statement.setString(1,IIN );

            ResultSet resultSet = statement.executeQuery();

            user.setId(resultSet.getInt(1));
            user.setName(resultSet.getString(2));
            user.setSurname(resultSet.getString(3));
            user.setCountry(resultSet.getString(4));
            user.setCity(resultSet.getString(5));
            user.setIin(resultSet.getString(6));


        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }


}
