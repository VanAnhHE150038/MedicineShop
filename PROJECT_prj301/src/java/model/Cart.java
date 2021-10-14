
package model;

import java.util.ArrayList;
import java.util.List;


public class Cart {
    private List<Item> items;
    public Cart() {
        items=new ArrayList<>();
    }
    public Cart(List<Item> items) {
        this.items=items;
    }
    public void setItems(List<Item> items) {
        this.items = items;
    }
    public List<Item> getItems() {
        return items;
    }
    public double getTotalMoney(){
        double t=0;
        for(Item i:items)
            t+=(i.getQuantity()*i.getPrice());
        return t;
    }
}
