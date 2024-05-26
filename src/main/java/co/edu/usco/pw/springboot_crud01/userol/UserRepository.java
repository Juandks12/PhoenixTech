package co.edu.usco.pw.springboot_crud01.userol;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends JpaRepository<Users, Long> {


    // TOCO HACER QUERY PERSONALIZADA POR QUE EL SE BUGEABA SI PONIA BYUSERUSER
    @Query("SELECT u FROM Users u WHERE u.UserUser = ?1")
    public Users findByUserUser(String username);

    //A VER SI ME GUARDA LOS DATOS

    @Query("SELECT u FROM Users u WHERE  u.UserUser = ?1 and u.UserPassword=?2")
    public Users findUsersByUserUserAndUserPassword(String user, String password);



}
