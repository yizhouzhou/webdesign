package services;

import models.UserModel;

import java.sql.*;

public class mysqldb {
    String url = "jdbc:mysql://localhost:3306/project_test";
    String username = "root";
    String password = "235689@Xzyz";
    Connection connection = null;
    static mysqldb instance = null;

    public mysqldb() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
            System.out.print("good");
        } catch (SQLException | ClassNotFoundException exception) {
            exception.printStackTrace();
        }
    }

    public static synchronized mysqldb getInstance() {
        if(instance == null) {
            instance = new mysqldb();
        }
        return instance;
    }

    public UserModel doLogin(String email, String password) throws SQLException {
        UserModel userModel = null;

        // PreparedStatement

//        String qLogin = "SELECT name FROM users WHERE email = ? AND password = ?";
//        PreparedStatement preparedStatement = connection.prepareStatement(qLogin);
//        preparedStatement.setString(1, email);
//        preparedStatement.setString(2, password);
//        ResultSet resultSet = preparedStatement.executeQuery();


        // Statement
        String qLogin = "SELECT Name FROM users WHERE Email = '"+ email +"' AND password = '"+ password +"'";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(qLogin);


        if(resultSet.next()) {
            String name = resultSet.getString("Name");
            userModel = new UserModel(email, name);
        }
        resultSet.close();
        statement.close();
//        preparedStatement.close();
        return userModel;

    }

}


