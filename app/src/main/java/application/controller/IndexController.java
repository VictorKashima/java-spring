package application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import application.model.LivrosRepository;
import application.model.GenerosRepository;

@Controller
public class IndexController {
    @Autowired
    private LivrosRepository livroRepo;

    @Autowired
    private GenerosRepository generoRepo;

    @RequestMapping("/")
    public String home(Model model) {
        model.addAttribute("livros", livroRepo.findAll());
        model.addAttribute("generos", generoRepo.findAll());

        return "home";
    }

}