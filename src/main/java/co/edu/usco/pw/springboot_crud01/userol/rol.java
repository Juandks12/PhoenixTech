package co.edu.usco.pw.springboot_crud01.userol;


import javax.persistence.*;



@Entity
@Table(name = "roles")
public class rol {

    @Id

    //PORQUE IDENTITY RESULTABA QUE TENIA UN BUG QUE ME GENERABA LAS IDS PERO EN SECUENCIA CON USARIO Y ROL
    // ME PASABA QUE ID DE USUARIO ERA 1 Y AL ASIGNAR EL ROL APARECIA QUE EL ROL ERA ID 2 cuando el rol deberia ser ID 1
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long rolId;


    private String rolNombre;

    public rol() {
    }

    public rol(Long rolId, String rolNombre) {
        super();
        this.rolId = rolId;
        this.rolNombre = rolNombre;
    }

    public rol(String rolNombre) {
        this.rolNombre = rolNombre;
    }

    public Long getRolId() {
        return rolId;
    }

    public void setRolId(Long rolId) {
        this.rolId = rolId;
    }

    public String getRolNombre() {
        return rolNombre;
    }

    public void setRolNombre(String rolNombre) {
        this.rolNombre = rolNombre;
    }
}
