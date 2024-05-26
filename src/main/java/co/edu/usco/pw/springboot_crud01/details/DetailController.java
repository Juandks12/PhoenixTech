package co.edu.usco.pw.springboot_crud01.details;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
public class DetailController {

    @Autowired
    private DetailService detailService;

    @RequestMapping(value = "/add-detail", method = RequestMethod.GET)
    public String showAddDetailPage(ModelMap model) {
        model.addAttribute("detail", new Detail());
        return "details/detail";
    }


    @RequestMapping(value = "/list-details", method = RequestMethod.GET)
    public String showDetails(ModelMap model) {
        String name = getLoggedInUserName(model);
        model.put("detail", detailService.getDetailByUser(name));
        return "detail/list-details";
    }

    private String getLoggedInUserName(ModelMap model) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            return ((UserDetails) principal).getUsername();
        }

        return principal.toString();
    }

    @RequestMapping(value = "/delete-detail", method = RequestMethod.GET)
    public String deleteDetail(@RequestParam long id, RedirectAttributes flash) {
        detailService.deleteDetail(id);
        flash.addFlashAttribute("success", "¡Detalle eliminado exitosamente!");
        return "redirect:/list-details";
    }
}
