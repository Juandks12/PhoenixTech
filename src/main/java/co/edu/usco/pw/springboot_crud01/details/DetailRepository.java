package co.edu.usco.pw.springboot_crud01.details;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DetailRepository extends JpaRepository<Detail, Long> {

    List<Detail> findByUserName(String user);

}
