package poly.com.my_restaurants.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/")
    public String login () {
        return "user/login";
    }

    @GetMapping("/profile")
    public String profile () {
        return "user/profile";
    }
    @GetMapping("/profile/addAddress")
    public String addAddress () {
        return "user/address/addAddress";
    }

}
