package model;

import java.math.BigDecimal;

public class Cart {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column CART.ID
     *
     * @mbggenerated
     */
    private BigDecimal id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column CART.USERNAME
     *
     * @mbggenerated
     */
    private String username;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column CART.ORDERTIME
     *
     * @mbggenerated
     */
    private String ordertime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column CART.PRODUCT
     *
     * @mbggenerated
     */
    private String product;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column CART.COLOR
     *
     * @mbggenerated
     */
    private String color;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column CART.PRICE
     *
     * @mbggenerated
     */
    private BigDecimal price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column CART.NUM
     *
     * @mbggenerated
     */
    private BigDecimal num;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column CART.STATUS
     *
     * @mbggenerated
     */
    private BigDecimal status;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column CART.ID
     *
     * @return the value of CART.ID
     *
     * @mbggenerated
     */
    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getNum() {
        return num;
    }

    public void setNum(BigDecimal num) {
        this.num = num;
    }

    public BigDecimal getStatus() {
        return status;
    }

    public void setStatus(BigDecimal status) {
        this.status = status;
    }
}