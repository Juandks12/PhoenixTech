package co.edu.usco.pw.springboot_crud01.userol;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService implements UserDetService{

    @Autowired
    private UserRepository userRepository;



    public Users getData(String user){
        return userRepository.findByUserUser(user);
    }



    public Users registro(){
        Users usuario = new Users("Juan", "Roldan", "admin", "juan1012",
                Arrays.asList(new rol("ROLE_ADMIN")));
        return  userRepository.save(usuario);
    }

    @Override
    public List<Users> buscarTodos() {
        return userRepository.findAll();
    }


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Users user = userRepository.findByUserUser(username);
        if(user == null) {
            throw new UsernameNotFoundException("Usuario o contrasena no validos");
        }

        return  new User(user.getUserUser(), user.getUserPassword(), mapRoles(user.getRoles()));
    }



    private Collection<? extends GrantedAuthority>  mapRoles(Collection<rol> roles){

        return roles.stream().map(role -> new SimpleGrantedAuthority(role.getRolNombre())).collect(Collectors.toList());

    }
}
