package zdk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by z_dk on 2018/9/22.
 */
@Controller
public class WelcomeController {
    @RequestMapping("/login.do")
    public String welcome(){

        return "index";
    }
}
