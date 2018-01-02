package com.fz.controller;

import com.fz.entity.Customer;
import com.fz.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/list")
    public String list(Model model) {
        List<Customer> customers = customerService.getCustomers();
        model.addAttribute("customers", customers);
        System.out.println(customers);
        return "customer/list";
    }

    @GetMapping("/showAddCustomer")
    public String showAddCustomer(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "customer/showAddCustomer";
    }

    @PostMapping("addCustomer")
    public String addCustomer(@ModelAttribute Customer customer, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/customer/showAddCustomer";
        }
        System.out.println(customer);
        customerService.saveCustomer(customer);
        return "redirect:/customer/list";
    }

    @GetMapping("/showUpdateCustomer")
    public String showUpdateCustomer(@RequestParam int id, Model model) {
        Customer customer = customerService.getCustomer(id);
        model.addAttribute("customer", customer);
        return "customer/showUpdateCustomer";
    }

    @PostMapping("/updateCustomer")
    public String updateCustomer(@ModelAttribute Customer customer, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/customer/showUpdateCustomer";
        }
        customerService.saveCustomer(customer);
        return "redirect:/customer/list";
    }

    @GetMapping("deleteCustomer")
    public String deleteCustomer(@RequestParam int id) {
        customerService.deleteCustomer(id);
        return "redirect:/customer/list";
    }
}
