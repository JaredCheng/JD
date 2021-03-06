package model;

import java.math.BigDecimal;

public class Jdproducttype extends JdproducttypeKey {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column JDPRODUCTTYPE.STOCK
     *
     * @mbggenerated
     */
    private BigDecimal stock;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column JDPRODUCTTYPE.FLOATING
     *
     * @mbggenerated
     */
    private BigDecimal floating;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column JDPRODUCTTYPE.STOCK
     *
     * @return the value of JDPRODUCTTYPE.STOCK
     *
     * @mbggenerated
     */
    public BigDecimal getStock() {
        return stock;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column JDPRODUCTTYPE.STOCK
     *
     * @param stock the value for JDPRODUCTTYPE.STOCK
     *
     * @mbggenerated
     */
    public void setStock(BigDecimal stock) {
        this.stock = stock;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column JDPRODUCTTYPE.FLOATING
     *
     * @return the value of JDPRODUCTTYPE.FLOATING
     *
     * @mbggenerated
     */
    public BigDecimal getFloating() {
        return floating;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column JDPRODUCTTYPE.FLOATING
     *
     * @param floating the value for JDPRODUCTTYPE.FLOATING
     *
     * @mbggenerated
     */
    public void setFloating(BigDecimal floating) {
        this.floating = floating;
    }
}