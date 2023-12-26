package com.controller;

import com.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormController {

    @RequestMapping("/showForm")
    public String showForm(Model model) {
        model.addAttribute("user", new User());
        return "yourFormPage";
    }

    @PostMapping("/processForm")
    public String processForm(@ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
        try {
            if (user.getFname() == null || user.getFname().equals("")) {
                throw new Exception();
            } else {
                model.addAttribute("user", user);
                return "success"; 
            }
        } catch (Exception e) {
            return "errorPage"; 
        }
    }
}
