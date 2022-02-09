/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shoppingcart;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author leonardozanotti
 */
public class Order {
    private String client;
    private List<OrderItem> items;
    private double priceLimit;
    
    public Order(String client, double priceLimit) {
        this.client = client;
        this.priceLimit = priceLimit;
    }
    
    public String getClient() {
        return client;
    }
    
    public List<OrderItem> getItems() {
        return items;
    }
    
    public void addItem(OrderItem item) {
        if (item == null) {
            throw new RuntimeException("Item cannot be null");
        }
        
        if (priceLimit == 0.0) {
            throw new RuntimeException("Cliente não tem nenhum crédito");
        }
        
        if (getTotal() + item.getPrice() > priceLimit) {
            throw new RuntimeException("Item de Pedido não incluído. Valor do pedido excedido");
        }
        
        if (Arrays.asList(items).contains(item)) {
            for (OrderItem i : items) {
                if (i.getName().equals(item.getName())) {
                    i.setQuantity(i.getQuantity() + 1);
                }
            }
        } else {
            items.add(item);
        }
    }
    
    public void removeItem(OrderItem item) {
        if (Arrays.asList(items).contains(item)) {
            for (OrderItem i : items) {
                if (i.getName().equals(item.getName())) {
                    items.remove(item);
                }
            }
        } else {
            throw new RuntimeException("Item não encontrado!");
        }
    }
    
    public double getTotal() {
        double total = 0.0;
        for (OrderItem i : items) {
            total += i.getPrice();
        }
        return total;
    }
    
    public String toString() {
        String output = "";
        output += "Nome do cliente: " + client + "\n";
        output += "Total do pedido: " + getTotal() + "\n";
        output += "Item                          | Preço";
        output = items.stream().map(i -> i.getName() + " | R$" + i.getPrice()).reduce(output, String::concat);
        return output;
    }
}
