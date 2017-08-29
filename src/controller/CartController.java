package controller;

import mapper.CartMapper;
import model.Cart;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@Controller
public class CartController {
    @RequestMapping("/addcart.form")
    public  @ResponseBody
    String addCart(Cart cart,HttpSession session) throws IOException {
        String username= (String) session.getAttribute("username");
        SqlSession ss=DBUtil.Util.getSqlSession();
        CartMapper pm= ss.getMapper(CartMapper.class);
        cart.setUsername(username);
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        cart.setOrdertime(sdf.format(new Date()));
        cart.setStatus(new BigDecimal("0"));
        pm.insert(cart);
        ss.commit();
        ss.close();
        return "add success";
    }

    @RequestMapping("/querycart.form")
    public String query(HttpServletRequest request, HttpSession session) throws IOException {
        SqlSession ss=DBUtil.Util.getSqlSession();
        ArrayList<Cart> carts=ss.getMapper(CartMapper.class).query((String) session.getAttribute("username"));
        request.setAttribute("carts",carts);
        session.setAttribute("cartnum",carts.size());
        ss.close();
        return "/cart.jsp";
    }

    @RequestMapping("/delete.form")
    public String del(String id) throws IOException {
        SqlSession ss=DBUtil.Util.getSqlSession();
        ss.getMapper(CartMapper.class).deleteByPrimaryKey(new BigDecimal(id));
        ss.commit();
        ss.close();
        return "/querycart.form";
    }


}

