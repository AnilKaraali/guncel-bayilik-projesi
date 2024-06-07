package com.anilkaraali.springProject;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ApplicationController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("applicationForm", "application", new Application());
    }

    @RequestMapping(value = "/submitApplication", method = RequestMethod.POST)
    public String submitApplication(@ModelAttribute("application") Application application) {
        String sql = "INSERT INTO applications (name_surname, tc_kimlik, address, phone, email, birth_date, retail_experience, reason, location, investment, additional_notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, application.getNameSurname(), application.getTcKimlik(), application.getAddress(), application.getPhone(), application.getEmail(), application.getBirthDate(), application.getRetailExperience(), application.getReason(), application.getLocation(), application.getInvestment(), application.getAdditionalNotes());
        return "redirect:/";
    }
}
