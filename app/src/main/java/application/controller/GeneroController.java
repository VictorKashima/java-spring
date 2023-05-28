package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Genero;
import application.model.GenerosRepository;

@Controller
@RequestMapping("/genero")
public class GeneroController {

    @Autowired
    private GenerosRepository generoRepo;

    @RequestMapping("/list")
    public String generoList(Model model) {
        model.addAttribute("generos", generoRepo.findAll());
        return "genero-list";
    }

    @RequestMapping("/insert")
    public String insert() {
        return "genero-insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String generoInsert(@RequestParam("nome") String nome) {
        Genero genero = new Genero();
        genero.setNome(nome);

        generoRepo.save(genero);

        return "redirect:/genero/list";
    }

    @RequestMapping("/update")
    public String generoUpdate(Model model, @RequestParam("id") int id) {
        Optional<Genero> genero = generoRepo.findById(id);

        if(!genero.isPresent()) {
            return "redirect:/genero/list";
        }

        model.addAttribute("genero", genero.get());
        return "genero-update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String generoUpdate(
        @RequestParam("nome") String nome,
        @RequestParam("id") int id
    ) {
        Optional<Genero> genero = generoRepo.findById(id);
        if(!genero.isPresent()) {
            return "redirect:/genero/list";
        }

        genero.get().setNome(nome);

        generoRepo.save(genero.get());
        return "redirect:/genero/list";
    }

    @RequestMapping("/delete")
    public String generoDelete(Model model, @RequestParam("id") int id) {
        Optional<Genero> genero = generoRepo.findById(id);

        if(!genero.isPresent()) {
            return "redirect:/genero/list";
        }

        model.addAttribute("genero", genero.get());
        return "genero-delete";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String generoDelete(@RequestParam("id") int id) {
        generoRepo.deleteById(id);
        return "redirect:/genero/list";
    }
}