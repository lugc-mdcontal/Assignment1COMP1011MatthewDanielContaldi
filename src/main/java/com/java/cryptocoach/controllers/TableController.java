package com.java.cryptocoach.controllers;

import com.java.cryptocoach.MainApplication;
import com.java.cryptocoach.model.Crypto;
import com.java.cryptocoach.model.CryptoMonth;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.input.MouseEvent;

import java.util.List;

public class TableController {

    @FXML
    private Label chartButton;

    @FXML
    private TableView<Crypto> cryptoTable;

    @FXML
    private Label tableButton;

    /*
     * Executes when the chart tab is clicked, and handles switching the tab.
     *
     * @param {MouseEvent} event - The current mouse event.
     */
    @FXML
    void onChartClicked(MouseEvent event) {
        MainApplication.mainStage.setScene(MainApplication.chartScene);
    }

    /*
     * Executes when the table tab is clicked, and handles switching the tab.
     *
     * @param {MouseEvent} event - The current mouse event.
     */
    @FXML
    void onTableClicked(MouseEvent event) {
        MainApplication.mainStage.setScene(MainApplication.tableScene);
    }

    /*
     * Fetches the crypto data, initializes the factory, and populate the table.
     */
    void populateTable() {
        // create columns for the TableView.
        TableColumn<Crypto, String> nameColumn = new TableColumn<>("Name");
        nameColumn.setCellValueFactory(cellData
                -> new javafx.beans.property.SimpleStringProperty(cellData.getValue().getName()));

        // fetch data from the Crypto model.
        List<Crypto> cryptoData = Crypto.getCryptoData();
        List<CryptoMonth> cryptoMonths = cryptoData.get(0).getMonths();

        // add the name column.
        cryptoTable.getColumns().add(nameColumn);

        // populate the table with months.
        for (int i = 0; i < cryptoMonths.size(); i++)
        {
            // we need to do final for it to work in the lambda.
            final int _i = i;

            // append a column and provide a lambda.
            TableColumn<Crypto, String> monthCol = new TableColumn<>(cryptoMonths.get(i).getMonthName());
            monthCol.setCellValueFactory(cellData
                    -> new javafx.beans.property.SimpleStringProperty(cellData.getValue().getMonths().get(_i).getPrice() + ""));

            // add it to the table.
            cryptoTable.getColumns().add(monthCol);
        }

        // populate the TableView with the fetched data.
        ObservableList<Crypto> observableCryptoData = FXCollections.observableArrayList(cryptoData);
        cryptoTable.setItems(observableCryptoData);
    }

    /*
     * Handles checking if everything is initialized correctly, and initializes all functionality.
     */
    @FXML
    void initialize() {
        populateTable();
    }
}
