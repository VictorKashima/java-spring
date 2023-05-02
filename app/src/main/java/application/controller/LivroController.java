package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import application.model.LivrosRepository;

@Controller
public class LivroController {

    @Autowired
    private LivrosRepository livroRepo;

    @RequestMapping("/livro")
    public String list(Model model) {
        model.addAttribute("livros", livroRepo.findAll());
        return "WEB-INF/list.jsp";
    }

}