
import jakarta.persistence.EntityManager;
import org.carlosorozco.webapp.model.Producto;
import jakarta.persistence.TypedQuery;
import java.util.List;
import org.carlosorozco.webapp.util.JpaUtil;


public class Main {
    
    private static EntityManager em = JpaUtil.getEntitiyManager(); 
    
    public static void main (String [] args){
        
        
        TypedQuery<Producto> query = (TypedQuery<Producto>) em.createQuery ("SELECT p FROM Producto p, Producto.class");
        List<Producto> productos = query.getResultList();
        productos.forEach (producto -> System.out.println (producto));
    }
}
