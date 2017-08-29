package test;

import mapper.CartMapper;

import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.math.BigDecimal;


public class test {
    public static void main(String[] args) throws IOException {

        SqlSession ss=DBUtil.Util.getSqlSession();
        CartMapper cm=ss.getMapper(CartMapper.class);
        cm.deleteByPrimaryKey(new BigDecimal("29"));
        ss.commit();
        ss.close();

        System.out.println("nidaye");
    }
}
