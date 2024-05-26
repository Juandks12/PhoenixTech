package co.edu.usco.pw.springboot_crud01.details;

import java.util.Optional;
import java.util.List;


public interface IDetailService {

    List<Detail> getDetailByUser(String user);

    Optional<Detail> getDetailById(long id);

    void updateDetail(Detail detail);

    void addDetail(String description, String feature);

    void deleteDetail(long id);

    void saveDetail(Detail detail);


}
