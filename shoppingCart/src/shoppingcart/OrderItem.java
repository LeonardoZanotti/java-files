/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shoppingcart;

/**
 *
 * @author leonardozanotti
 */
public class OrderItem {
    private String name;
    private Double price;
    private Integer quantity;
    
    public OrderItem (String name, Double price, Integer quantity) {
        if (name.isEmpty() || price < 0.0 || quantity <= 0) {
            throw new RuntimeException("Invalid order item!");
        }
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        if (name.isEmpty()) {
            throw new RuntimeException("Invalid order item name!");
        }
        this.name = name;
    }
    
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        if (price < 0.0) {
            throw new RuntimeException("Invalid order item price!");
        }
        this.price = price;
    }
    
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        if (quantity <= 0) {
            throw new RuntimeException("Invalid order item quantity!");
        }
        this.quantity = quantity;
    }
}
