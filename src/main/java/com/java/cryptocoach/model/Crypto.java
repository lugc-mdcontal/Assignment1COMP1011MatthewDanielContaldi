package com.java.cryptocoach.model;

import com.java.cryptocoach.utility.DBUtility;
import com.java.cryptocoach.utility.ExceptionUtility;
import com.java.cryptocoach.utility.Pair;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Crypto {
    private String name;
    private List<CryptoMonth> months;

    /*
     * Sets the name and months for the crypto.
     *
     * @constructor
     * @param {String} name - The name of the crypto.
     * @param {List<CryptoMonth>} months - The months of the crypto.
     */
    public Crypto(String name, List<CryptoMonth> months) {
        setName(name);
        setMonths(months);
    }

    /*
     * Gets the name of the crypto.
     *
     * @return {String} - The crypto's name.
     */
    public String getName() {
        return name;
    }

    /*
     * Sets the name of the crypto.
     *
     * @param {String} name - The name of the crypto.
     */
    public void setName(String name) {
        // the name should never be blank.
        if (name.isBlank())
            throw new IllegalArgumentException("The name being set is blank!");

        this.name = name;
    }

    /*
     * Gets the months of the crypto.
     *
     * @return {List<CryptoMonth>} - The crypto's months.
     */
    public List<CryptoMonth> getMonths() {
        return months;
    }

    /*
     * Sets the months of the crypto.
     *
     * @param {List<CryptoMonth>} months - The months of the crypto.
     */
    public void setMonths(List<CryptoMonth> months) {
        // we should never be trying to set a bad number of months.
        if (months.size() != CryptoMonth.MONTH_NAMES.size())
            throw new IllegalArgumentException("The months being set does not equal the total amount of months!");

        this.months = months;
    }

    /*
     * Gets all the stored cryptos.
     *
     * @return {List<Crypto>} - The stored cryptos.
     */
    public static List<Crypto> getCryptoData() {
        // allocate an array for the crypto data.
        List<Crypto> cryptoData = new ArrayList<>();

        try {
            // fetch all names.
            Pair<ResultSet, Statement> cryptoNames = DBUtility.get().executeQuery("SELECT coin_name FROM crypto");

            // iterate each name.
            while (cryptoNames.getFirst().next()) {
                String name = cryptoNames.getFirst().getString("coin_name");

                // query the specific crypto's data.
                Pair<ResultSet, Statement> cryptoDataResultSet = DBUtility.get().executeQuery("SELECT * FROM crypto WHERE coin_name = '" + name + "'");

                // allocate an array for the months.
                List<CryptoMonth> months = new ArrayList<>();

                // iterate each month, and append to the array.
                while (cryptoDataResultSet.getFirst().next()) {
                    for (int i = 3; i <= cryptoDataResultSet.getFirst().getMetaData().getColumnCount(); i++) {
                        String monthName = cryptoDataResultSet.getFirst().getMetaData().getColumnName(i);
                        double price = cryptoDataResultSet.getFirst().getDouble(i);
                        months.add(new CryptoMonth(monthName, price));
                    }
                }

                // free the resources.
                cryptoDataResultSet.close();

                // add crypto to the array of cryptos.
                cryptoData.add(new Crypto(name, months));
            }

            // free the resources.
            cryptoNames.close();
        }
        catch (Exception e) {
            // on an exception, the garbage collector will automatically free the resources.
            // we don't need to free it here.
            ExceptionUtility.saveStackTrace(e);
        }

        return cryptoData;
    }
}