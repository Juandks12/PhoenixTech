package co.edu.usco.pw.springboot_crud01.controller;

import co.edu.usco.pw.springboot_crud01.userol.UserService;
import co.edu.usco.pw.springboot_crud01.userol.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.crypto.password.PasswordEncoder;


@Controller
public class WelcomeController {

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private UserService userService;

	@GetMapping()
	public String Welcome(Model model) {
		return "index";
	}

	@GetMapping("/login")
	public String LoginPage() {
		return "login";
	}


	@PostMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, Model model) {
		try {
			UserDetails userDetails = userService.loadUserByUsername(username);
			System.out.println(userDetails);
			if (passwordEncoder.matches(password, userDetails.getPassword())) {
				// Autenticación exitosa, redirigir al usuario a la página de inicio
				return "redirect:/index";
			} else {
				// La contraseña es incorrecta, mostrar un mensaje de error
				model.addAttribute("error", "Nombre de usuario o contraseña incorrectos");
				return "login";
			}
		} catch (UsernameNotFoundException e) {
			// El nombre de usuario no existe, mostrar un mensaje de error
			model.addAttribute("error", "Nombre de usuario o contraseña incorrectos");
			return "login";
		}
	}


	@GetMapping("/register")
	public String registro(Model model) {

		try {
			Users user = userService.registro();
			model.addAttribute("register", user);
			System.out.println(model);
			return "register";
		} catch (Exception e) {
			return "register";
		}


	}


	@GetMapping("quienes")
	public String quienes() {
		return "quienes";
	}

	@GetMapping("cart")
	public String cart() {
		return "cart";
	}


}
