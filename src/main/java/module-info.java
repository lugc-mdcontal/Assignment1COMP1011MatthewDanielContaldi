module com.java.cryptocoach {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens com.java.cryptocoach to javafx.fxml;
    exports com.java.cryptocoach;
    exports com.java.cryptocoach.controllers;
    opens com.java.cryptocoach.controllers to javafx.fxml;
    exports com.java.cryptocoach.utility;
    opens com.java.cryptocoach.utility to javafx.fxml;
}