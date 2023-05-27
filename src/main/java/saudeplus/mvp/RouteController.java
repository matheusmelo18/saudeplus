    package saudeplus.mvp;

import java.io.Serializable;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RouteController implements Serializable{

private static final long serialVersionUID = 1L;

// @RequestMapping({
//     "/",
//     "/contato",
//     "/politica-de-privacidade",
//     "/quem-somos",
//     "/termo-de-uso",
//     "/faq/teste"
// })
@GetMapping("/index")
public String index() {
    
    
    
    
        return "forward:index.html";
}

// @RequestMapping("/evento/{informacaoEventoId}")
public String evento(@PathVariable String informacaoEventoId) {
    return "forward:index.html";
}
}
