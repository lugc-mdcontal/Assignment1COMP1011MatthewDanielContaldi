package com.java.cryptocoach.utility;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class ExceptionUtility {
    private static final String FILE_NAME = "exception.txt";

    /*
     * When an exception occurs, save the stack trace to a file, and exit.
     *
     * @param {Exception} exception - The current exception being saved.
     */
    public static void saveStackTrace(Exception exception) {
        // open the file to write the exception data.
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_NAME, true))) {
            // write the exception message.
            writer.write("Exception occurred: " + exception.getMessage());
            writer.newLine();

            // write the exception stack trace.
            for (StackTraceElement element : exception.getStackTrace()) {
                writer.write("\t at " + element.toString());
                writer.newLine();
            }

            // write a divider.
            writer.write("--------------------------------------------------");
            writer.newLine();

            // kill the program!
            exception.printStackTrace();
            System.exit(1);
        } catch (IOException ioException) {
            // uh oh, we failed to unwind, abort!
            System.err.println("Error writing to file: " + ioException.getMessage());

            // kill the program!
            System.exit(2);
        }
    }
}
