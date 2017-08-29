package model;
import java.math.BigDecimal;

public class Jdproduct{

    private String id;
    private String describe;
    private String jdversion;
    private BigDecimal price;
    private BigDecimal stock;
    private BigDecimal floating;
    private String color;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getJdversion() {
        return jdversion;
    }

    public void setJdversion(String jdversion) {
        this.jdversion = jdversion;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getStock() {
        return stock;
    }

    public void setStock(BigDecimal stock) {
        this.stock = stock;
    }

    public BigDecimal getFloating() {
        return floating;
    }

    public void setFloating(BigDecimal floating) {
        this.floating = floating;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}