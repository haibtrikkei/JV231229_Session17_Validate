package ra.demo_validate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import ra.demo_validate.entity.Product;

@Controller
public class ProductController {
    @RequestMapping(value = {"/","/initInsertProduct"})
    public String initInsertProduct(Model model){
        Product p = new Product();
        model.addAttribute("p",p);
        return "insertProduct";
    }

    @RequestMapping("/insertProduct")
    public String insertProduct(@Validated @ModelAttribute("p")Product pro, BindingResult result, Model model){
        if(result.hasErrors()){
            model.addAttribute("p",pro);
            return "insertProduct";
        }else{
            model.addAttribute("p",pro);
            return "viewProduct";
        }
    }
}
