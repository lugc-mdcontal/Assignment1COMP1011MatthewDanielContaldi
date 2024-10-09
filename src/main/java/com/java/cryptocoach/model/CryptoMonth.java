package com.java.cryptocoach.model;

import java.util.Arrays;
import java.util.List;

public class CryptoMonth {
    public static final List<String> MONTH_NAMES = Arrays.asList(
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
    );

    private String monthName;
    private double price;

    /*
     * Sets the name and price for the month.
     *
     * @constructor
     * @param {String} name - The name of the month.
     * @param {double>} price - The price of the month.
     */
    public CryptoMonth(String monthName, double price) {
        setMonthName(monthName);
        setPrice(price);
    }

    /*
     * Gets the month's name.
     *
     * @return {String} - The name of the month.
     */
    public String getMonthName() {
        return monthName;
    }

    /*
     * Sets the month's name.
     *
     * @param {String} monthName - The name of the month.
     */
    public void setMonthName(String monthName) {
        // we should never be trying to set a month name that doesn't exist.
        if (!MONTH_NAMES.contains(monthName))
            throw new IllegalArgumentException("The month being set is not valid!");

        this.monthName = monthName;
    }

    /*
     * Gets the month's price.
     *
     * @return {double} - The price of the month.
     */
    public double getPrice() {
        return price;
    }

    /*
     * Sets the month's price.
     *
     * @param {double} price - The price of the month.
     */
    public void setPrice(double price) {
        // the price should never be negative, or zero.
        if (price <= 0)
            throw new IllegalArgumentException("The price being set is unreasonable!");

        this.price = price;
    }
}
