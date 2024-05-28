package co.edu.usco.pw.springboot_crud01.ModelEntity;

public class UserBuyer {
    private String title;
    private int quantity;
    private int unit_price;

    // Constructor vacío
    public UserBuyer() {
    }

    // Constructor con parámetros
    public UserBuyer(String title, int quantity, int unitPrice) {
        this.title = title;
        this.quantity = quantity;
        this.unit_price = unitPrice;
    }

    // Getter y Setter para title
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    // Getter y Setter para quantity
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    // Getter y Setter para unitPrice
    public int getUnit_Price() {
        return unit_price;
    }

    public void setUnitPrice(int unitPrice) {
        this.unit_price = unitPrice;
    }

}
