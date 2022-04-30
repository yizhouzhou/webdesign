package services;

import models.RegistrationModel;
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

    public RegistrationModel doregister(String firstname, String lastname, String email, String password, String address1, String address2) throws SQLException {
        boolean result = false;
        String Name = firstname + " " + lastname;
        RegistrationModel registrationModel = null;
        String doregister = "INSERT INTO users VALUES(?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(doregister);
        preparedStatement.setString(1, Name);
        preparedStatement.setString(2, password);
        preparedStatement.setString(3, email);
        preparedStatement.setString(4, address1);
        preparedStatement.setString(5, address2);
        int rows_update = preparedStatement.executeUpdate();
        if(rows_update > 0) {
            result = true;
            registrationModel = new RegistrationModel(firstname, lastname, email, password, address1, address2);
        }
        preparedStatement.close();
        return registrationModel;
    }

}




