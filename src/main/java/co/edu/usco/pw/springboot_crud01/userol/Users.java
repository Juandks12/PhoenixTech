package co.edu.usco.pw.springboot_crud01.userol;


import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "Users", uniqueConstraints = @UniqueConstraint(columnNames = "UserUser"))
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Userid;

    private String UserNombre;
    private String UserApellido;
    private String UserUser;
    private String UserPassword;

    //APARTIR DE AQUI VA SURGIR LA RELACION DE ROL

    //VA HACER UN MAPEO DE LA RELACION ES DECIR HARA UNA ENTIDAD DEBIL EN LA QUE EVITARA EL MANY TO MANY


    // FetchType.EAGER La carga ansiosa (EAGER) significa que todas o algunas de estas
    // relaciones se cargarán junto con la entidad principal, en una sola consulta a la base de datos.
    // y esto lo haria de manera automatica :D
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)

    //ESTO SIGNIFICA QUE SE UNIRA A UNA TABLA
    @JoinTable(
            //NOMBRE DE LA TABLA A LA QUE PERTENECE
            name = "user_roles",        //USER ID NOMBRE DE LA COLUMNA -- REFERENCE ES DONDE VA TOMAR EL EN LA TABLA
            //User que en este caso tomara la columna id
            joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "Userid"),
            //UNION DE LA OTRA COLUMNA
            inverseJoinColumns = @JoinColumn(name = "rol_id", referencedColumnName = "rolId")

    )
    private Collection<rol> roles;


    public Users() {
        super();
    }

    public Users(Long userid, String userNombre, String userApellido, String userUser,
                 String userPassword, Collection<rol> roles) {
        super();
        Userid = userid;
        UserNombre = userNombre;
        UserApellido = userApellido;
        UserUser = userUser;
        UserPassword = userPassword;
        this.roles = roles;
    }

    public Users(String userNombre, String userApellido, String userUser,
                 String userPassword, Collection<rol> roles) {
        super();
        UserNombre = userNombre;
        UserApellido = userApellido;
        UserUser = userUser;
        UserPassword = userPassword;
        this.roles = roles;
    }

    public Long getUserid() {
        return Userid;
    }

    public void setUserid(Long userid) {
        Userid = userid;
    }

    public String getUserNombre() {
        return UserNombre;
    }

    public void setUserNombre(String userNombre) {
        UserNombre = userNombre;
    }

    public String getUserApellido() {
        return UserApellido;
    }

    public void setUserApellido(String userApellido) {
        UserApellido = userApellido;
    }

    public String getUserUser() {
        return UserUser;
    }

    public void setUserUser(String userUser) {
        UserUser = userUser;
    }

    public String getUserPassword() {
        return UserPassword;
    }

    public void setUserPassword(String userPassword) {
        UserPassword = userPassword;
    }

    public Collection<rol> getRoles() {
        return roles;
    }

    public void setRoles(Collection<rol> roles) {
        this.roles = roles;
    }
}
