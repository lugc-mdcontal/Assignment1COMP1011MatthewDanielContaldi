package com.java.cryptocoach.utility;

import java.sql.*;

public class DBUtility {
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/cryptocoach";
    private static final String DATABASE_USERNAME = "root";
    private static final String DATABASE_PASSWORD = "root";

    private Connection connection;
    private static DBUtility instance;

    /*
     * Executes a query against the database.
     *
     * @param {String} query - The SQL query being executed.
     * @return {Pair<ResultSet, Statement>} - The data being queried.
     */
    public Pair<ResultSet, Statement> executeQuery(String query) {
        try {
            Statement stat = connection.createStatement();
            ResultSet results = stat.executeQuery(query);

            return new Pair<>(results, stat);
        } catch (Exception e) {
            // on an exception, the garbage collector will automatically free the resources.
            // we don't need to free it here.
            ExceptionUtility.saveStackTrace(e);
        }

        return null;
    }

    /*
     * Executes a command against the database.
     *
     * @param {String} command - The SQL command being executed.
     */
    public void execute(String command) {
        try {
            // create the statement, and execute the command against the database.
            Statement stat = connection.createStatement();
            stat.execute(command);
            stat.close();
        } catch (Exception e) {
            // on an exception, the garbage collector will automatically free the resources.
            // we don't need to free it here.
            ExceptionUtility.saveStackTrace(e);
        }
    }

    /*
     * Closes the database connection.
     */
    public void close() {
        try {
            // close the connection.
            connection.close();
        }
        catch (Exception e) {
            // on an exception, the garbage collector will automatically free the resources.
            // we don't need to free it here.
            ExceptionUtility.saveStackTrace(e);
        }
    }

    /*
     * Initializes the SQL driver, and establishes the connection.
     *
     * @constructor
     */
    public DBUtility()
    {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
        }
        catch (Exception e) {
            // on an exception, the garbage collector will automatically free the resources.
            // we don't need to free it here.
            ExceptionUtility.saveStackTrace(e);
        }
    }

    /*
     * Initializes the singleton instance, and fetches it.
     *
     * @return {DBUtility} - The allocated instance.
     */
    public static DBUtility get() {
        if (instance == null) {
            try {
                instance = new DBUtility();
            } catch (Exception e) {
                // on an exception, the garbage collector will automatically free the resources.
                // we don't need to free it here.
                ExceptionUtility.saveStackTrace(e);
            }
        }

        return instance;
    }
}
