package com.portafolio;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    private static final String URL =
            "jdbc:mysql://localhost:3306/portafolio?useSSL=false&serverTimezone=UTC";

    private static final String USUARIO =
            root;

    private static final String PASSWORD =
            1234;


    public static Connection conectar() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        return DriverManager.getConnection(
                URL,
                USUARIO,
                PASSWORD
        );
    }
}