package co.edu.usco.pw.springboot_crud01.userol;

import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;



//AQUI ES DONDE SE MENCIONAN QUE TENDRAN LOS SERVICIOS DE AUTENTICACION
public interface UserDetService extends UserDetailsService {


    public List<Users> buscarTodos();


}
