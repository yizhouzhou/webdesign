package services;

import models.ApartmentModels;
import models.Fatchinfor;
import models.UserModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class mysqldb {
    String url = "jdbc:mysql://localhost:3306/project_test";
    String username = "root";
    String password = "password";
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

    public boolean doregister(String firstname, String lastname, String email, String password, String address1, String address2) throws SQLException {
        boolean result = false;
        String Name = firstname + " " + lastname;
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
        }
        preparedStatement.close();
        return result;
    }

    public List<Fatchinfor> Fatchsatus(String name) throws SQLException {

        List<Fatchinfor> list = new ArrayList<>();
        // Statement
        String qfatch = "SELECT a.AprtmentUnitInformation, a.ApartnumberTotalbedrooms, a.Apartmentrentprice, s.ApartNumberBedrooms FROM users as u, aprtmentinformation as a, status as s WHERE a.idAprtmentInformation = s.idAprtmentInformation AND u.Name = s.Name AND u.Name = '"+name+"'";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(qfatch);


        while(resultSet.next()) {
            String apartmentinfo = resultSet.getString("AprtmentUnitInformation");
            String aparttotalbedroom = resultSet.getString("ApartnumberTotalbedrooms");
            String apartprice = resultSet.getString("Apartmentrentprice");
            String apartbedrooms = resultSet.getString("ApartNumberBedrooms");

            Fatchinfor fatchinformodle = new Fatchinfor(apartmentinfo, aparttotalbedroom, apartprice, apartbedrooms);
            list.add(fatchinformodle);
        }
        resultSet.close();
        statement.close();
        return list;
//        preparedStatement.close();
    }

    public List<ApartmentModels> Allaprtment() throws SQLException{
        List<ApartmentModels> alllist = new ArrayList<>();
        String qselect = "SELECT * FROM aprtmentinformation;";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(qselect);

        while(resultSet.next()) {
            String apartmentinfo = resultSet.getString("AprtmentUnitInformation");
            String aparttotalbedroom = resultSet.getString("ApartnumberTotalbedrooms");
            String apartprice = resultSet.getString("Apartmentrentprice");

            ApartmentModels apartmentmodels = new ApartmentModels(apartmentinfo, aparttotalbedroom, apartprice);
            alllist.add(apartmentmodels);
        }
        System.out.print(alllist);
        resultSet.close();
        statement.close();
        return alllist;

    }


}




