package controller.views;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SseView {
    @RequestMapping("/sse")
    public String sse() {
        return "sse";
    }
}
