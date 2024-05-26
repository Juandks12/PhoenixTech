package co.edu.usco.pw.springboot_crud01.details;

import co.edu.usco.pw.springboot_crud01.products.Product;

import javax.persistence.*;

@Entity
@Table(name = "product_detail")
public class Detail {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    private Product product;

    private String userName;

    private String description;

    private String features;

    public Detail() {
    }

    public Detail(Product product, String productDescription, String productFeatures) {
        this.product = product;
        this.userName = userName;
        this.description = productDescription;
        this.features = productFeatures;
    }

    public Detail(String description, String features) {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getProductDescription() {
        return description;
    }

    public void setProductDescription(String productDescription) {
        this.description = productDescription;
    }

    public String getProductFeatures() {
        return features;
    }

    public void setProductFeatures(String productFeatures) {
        this.features = productFeatures;
    }
}
