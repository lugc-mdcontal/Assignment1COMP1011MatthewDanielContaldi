package com.java.cryptocoach.controllers;

import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;

import com.java.cryptocoach.MainApplication;
import com.java.cryptocoach.model.Crypto;
import com.java.cryptocoach.model.CryptoMonth;
import javafx.fxml.FXML;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.XYChart;
import javafx.scene.control.Label;
import javafx.scene.control.Pagination;
import javafx.scene.input.MouseEvent;

public class ChartController {

    @FXML
    private ResourceBundle resources;

    @FXML
    private URL location;

    @FXML
    private Label chartButton;

    @FXML
    private Pagination cryptoSelector;

    @FXML
    private LineChart<?, ?> lineChart;

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
     * Handles populating the line chart with the provided Crypto.
     *
     * @param {Crypto} crypto - The crypto being populated to the line chart.
     */
    void populateChart(Crypto crypto) {
        // create the series, and name it to the crypto's name.
        XYChart.Series series = new XYChart.Series();
        series.setName(crypto.getName());

        // populate the series with the crypto months.
        for (CryptoMonth month : crypto.getMonths())
            series.getData().add(new XYChart.Data(month.getMonthName(), month.getPrice()));

        // add it to the line chart, so it renders.
        lineChart.getData().add(series);
    }

    /*
     * Handles populating the crypto selection to change line charts.
     */
    void populateCryptoSelector()
    {
        // set the amount of cryptos to the amount fetched from the database.
        List<Crypto> cryptoData = Crypto.getCryptoData();
        cryptoSelector.setPageCount(cryptoData.size());
    }

    /*
     * Handles checking if everything is initialized correctly, and initializes all functionality.
     */
    @FXML
    void initialize() {
        assert chartButton != null : "fx:id=\"chartButton\" was not injected: check your FXML file 'chart-view.fxml'.";
        assert cryptoSelector != null : "fx:id=\"cryptoSelector\" was not injected: check your FXML file 'chart-view.fxml'.";
        assert lineChart != null : "fx:id=\"lineChart\" was not injected: check your FXML file 'chart-view.fxml'.";
        assert tableButton != null : "fx:id=\"tableButton\" was not injected: check your FXML file 'chart-view.fxml'.";

        // populate everything.
        populateCryptoSelector();
        populateChart(Crypto.getCryptoData().get(0));

        // setup a callback to swap cryptos.
        cryptoSelector.currentPageIndexProperty().addListener((observable, oldValue, newValue) -> {
            lineChart.getData().clear();
            populateChart(Crypto.getCryptoData().get((int)newValue));
        });
    }
}
