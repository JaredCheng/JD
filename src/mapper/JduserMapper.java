package mapper;

import controller.User;
import model.Jduser;

import java.util.ArrayList;

public interface JduserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table JDUSER
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String username);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table JDUSER
     *
     * @mbggenerated
     */
    int insert(Jduser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table JDUSER
     *
     * @mbggenerated
     */
    int insertSelective(Jduser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table JDUSER
     *
     * @mbggenerated
     */
    Jduser selectByPrimaryKey(String username);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table JDUSER
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Jduser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table JDUSER
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Jduser record);

    /**
     *
     * @param record
     * @return
     */
    ArrayList<Jduser> isExist(Jduser record);
}