package pizzamvc;

import java.util.Arrays;

/**
 * A class that represents a single pizza order.
 *
 * @author John Phillips
 */
public class PizzaOrder {

    private String email;
    private String size;
    private String[] toppings;
    private String crust;

    public PizzaOrder() {
        email = "";
        size = "";
        crust = "";
        toppings = null;
    }

    public PizzaOrder(String email, String size, String crust, String[] toppings) {
        this.email = email;
        this.size = size;
        this.crust = crust;
        this.toppings = toppings;
    }

    PizzaOrder(String email, String size, String[] toppings) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String[] getToppings() {
        return toppings;
    }

    public void setToppings(String[] toppings) {
        this.toppings = toppings;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
public String getCrust() {
        return crust;
    }

    public void setCrust(String crust) {
        this.crust = crust;
    }
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "PizzaOrder{" + "email=" + email + ", size=" + size + ", crust=" + crust + ", toppings=" + Arrays.toString(toppings) + '}';
    }
}
