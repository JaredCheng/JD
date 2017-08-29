package controller;

import mapper.CartMapper;
import mapper.JduserMapper;
import model.Cart;
import model.Jduser;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@Controller
public class User {
    /**
     * 用户登陆,查询数据是否有该用户
     *
     * @param jduser
     * @param session
     * @return
     * @throws IOException
     */
    @RequestMapping("/login.form")
    public String getProduct(Jduser jduser, HttpSession session) throws IOException {
        SqlSession ss = DBUtil.Util.getSqlSession();
        ArrayList<Jduser> user = ss.getMapper(JduserMapper.class).isExist(jduser);

        if (user.size() == 0){
            ss.close();
            return "/login.jsp";
        }
        else {
            session.setAttribute("username", jduser.getUsername());
            ArrayList<Cart> carts=ss.getMapper(CartMapper.class).query(jduser.getUsername());
            session.setAttribute("cartnum",carts.size());
            ss.close();
            return "/Product.form";
        }


    }

    /**
     * 清除session,退出登陆
     *
     * @param session
     * @return
     * @throws IOException
     */
    @RequestMapping("/logout.form")
    public String getProduct(HttpSession session) throws IOException {
        session.removeAttribute("username");
        session.removeAttribute("cartnum");
        return "/Product.form";
    }

}


