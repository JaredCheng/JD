package controller;

import com.alibaba.fastjson.JSONArray;
import mapper.JdproductMapper;
import mapper.JdproducttypeMapper;
import model.Jdproduct;
import model.Jdproducttype;
import model.JdproducttypeKey;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;

@Controller
public class Product {
    /**
     * 查询所有商品显示到主页
     * @param request
     * @return
     * @throws IOException
     */
    @RequestMapping("/Product.form")
    public String getProduct(HttpServletRequest request) throws IOException {
        SqlSession ss=DBUtil.Util.getSqlSession();
        ArrayList<Jdproduct> jdproducts=ss.getMapper(JdproductMapper.class).query();
        request.setAttribute("jdproducts",jdproducts);
        ss.close();
        return "/index.jsp";
    }

    /**
     * 根据id查询单个商品的信息
     * @param id
     * @param request
     * @return
     * @throws IOException
     */
    @RequestMapping("/detail.form")
    public String getDetail(String id, HttpServletRequest request) throws IOException {
        SqlSession ss=DBUtil.Util.getSqlSession();

        //查询商品
        Jdproduct jdproduct= ss.getMapper(JdproductMapper.class).selectByPrimaryKey(id);
        request.setAttribute("detaildemo",jdproduct);

        //查询颜色
        ArrayList<String> colors=ss.getMapper(JdproducttypeMapper.class).querycolor(id);
        request.setAttribute("colors",colors);
        ss.close();
        return "/product.jsp";
    }

    /**
     * 根据color修改商品价格
     * @param color
     * @param id
     * @param request
     * @return
     * @throws IOException
     */

    @RequestMapping(value = "/choose.form",produces = "text/html;charset=utf8")
    public  @ResponseBody String choose(String color, String id, HttpServletRequest request) throws IOException {
        SqlSession ss=DBUtil.Util.getSqlSession();
        JdproducttypeMapper pm= ss.getMapper(JdproducttypeMapper.class);
        JdproducttypeKey key=new JdproducttypeKey();
        key.setColor(color);
        key.setId(id);
        Jdproducttype jdproduct=pm.selectByPrimaryKey(key);
        ss.close();
        String json= JSONArray.toJSONString(jdproduct);
        System.out.println(json);
        return json;

    }
}
