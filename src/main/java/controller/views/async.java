package controller.views;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class async {
    @RequestMapping("/async")
    public String async() {
        return "async";
    }
}
