package co.edu.usco.pw.springboot_crud01.details;

import java.util.List;
import java.util.Optional;

import co.edu.usco.pw.springboot_crud01.details.Detail;
import co.edu.usco.pw.springboot_crud01.details.DetailRepository;
import co.edu.usco.pw.springboot_crud01.details.IDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailService implements IDetailService {

    @Autowired
    private DetailRepository detailRepository;


    @Override
    public List<Detail> getDetailByUser(String user) {

        return detailRepository.findByUserName(user);
    }

    @Override
    public Optional<Detail> getDetailById(long id) {
        return detailRepository.findById(id);
    }

    @Override
    public void updateDetail(Detail detail) {
        detailRepository.save(detail);
    }

    @Override
    public void addDetail(String description, String features) {
        detailRepository.save(new Detail(description, features));
    }

    @Override
    public void deleteDetail(long id) {
        Optional<Detail> detail = detailRepository.findById(id);
        if (detail.isPresent()) {
            detailRepository.delete(detail.get());
        }

    }

    @Override
    public void saveDetail(Detail detail) { detailRepository.save(detail); }
}
