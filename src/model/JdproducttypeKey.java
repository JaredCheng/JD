package model;

public class JdproducttypeKey {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column JDPRODUCTTYPE.ID
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column JDPRODUCTTYPE.COLOR
     *
     * @mbggenerated
     */
    private String color;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column JDPRODUCTTYPE.ID
     *
     * @return the value of JDPRODUCTTYPE.ID
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column JDPRODUCTTYPE.ID
     *
     * @param id the value for JDPRODUCTTYPE.ID
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column JDPRODUCTTYPE.COLOR
     *
     * @return the value of JDPRODUCTTYPE.COLOR
     *
     * @mbggenerated
     */
    public String getColor() {
        return color;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column JDPRODUCTTYPE.COLOR
     *
     * @param color the value for JDPRODUCTTYPE.COLOR
     *
     * @mbggenerated
     */
    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }
}