package com.java.cryptocoach.utility;

public class Pair<A extends AutoCloseable, B extends AutoCloseable> {
    private A first;
    private B second;

    /*
     * Sets the first value of the pair.
     *
     * @param {A} value - The value being added.
     */
    public void setFirst(A value) {
        first = value;
    }

    /*
     * Gets the first value of the pair.
     *
     * @return {A} - The first value.
     */
    public A getFirst() {
        return first;
    }

    /*
     * Sets the second value of the pair.
     *
     * @param {B} value - The value being added.
     */
    public void setSecond(B value) {
        second = value;
    }

    /*
     * Gets the second value of the pair.
     *
     * @return {B} - The second value.
     */
    public B getSecond() {
        return second;
    }

    /*
     * Closes all resources.
     */
    public void close() throws Exception {
        first.close();
        second.close();
    }

    /*
     * Constructs the pair, with the first and second values.
     *
     * @constructor
     * @param{A} first - The first value of the pair.
     * @param{B} second - The second value of the pair.
     */
    public Pair(A first, B second) {
        setFirst(first);
        setSecond(second);
    }
}
