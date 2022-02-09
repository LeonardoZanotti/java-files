/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package shoppingcart;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author leonardozanotti
 */
public class ShoppingCart {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Integer inputInt = 1;
        List<Order> orders = new ArrayList<>();
        
        String clientName, productName;
        Double productPrice;
        OrderItem item;

        while (inputInt > 0) {
            try {
                System.out.println("0 – Sair\n1 – Incluir Pedido\n2 – Excluir pedido por nome do cliente\n3 – Listar Pedidos\n4 – Incluir Item de Pedido em Pedido\n5 – Excluir Item de Pedido em Pedido\n6 – Imprimir a lista de Pedidos\n");
                inputInt = input.nextInt();

                switch (inputInt) {
                    case 1:
                        System.out.println("Nome do cliente: ");
                        clientName = input.next();
                        System.out.println("Limite de preço: ");
                        Double priceLimit = input.nextDouble();
                        Order newOrder = new Order(clientName, priceLimit);
                        orders.add(newOrder);
                        break;
                    case 2:
                        System.out.println("Nome do cliente: ");
                        clientName = input.next();
                        for (Order o : orders) {
                            if (o.getClient().equals(clientName)) {
                                orders.remove(o);
                                break;
                            }
                        }
                        break;
                    case 3:
                        for (Order o : orders) {
                            System.out.println(o.toString());
                        }
                        break;
                    case 4:
                        System.out.println("Nome do cliente: ");
                        clientName = input.next();
                        System.out.println("Nome do produto: ");
                        productName = input.next();
                        System.out.println("Preço unitário: ");
                        productPrice = input.nextDouble();
                        
                        item = new OrderItem(productName, productPrice, 1);
                        
                        for (Order o : orders) {
                            if (o.getClient().equals(clientName)) {
                                o.addItem(item);
                                break;
                            }
                        }
                        break;
                    case 5:
                        System.out.println("Nome do cliente: ");
                        clientName = input.next();
                        System.out.println("Nome do produto: ");
                        productName = input.next();
                        
                        for (Order o : orders) {
                            if (o.getClient().equals(clientName)) {
                                for (OrderItem i : o.getItems()) {
                                    if (i.getName().equals(productName)) {
                                        o.removeItem(productName);
                                    }
                                }
                            }
                        }
                        break;
                    case 6:
                        for (Order o : orders) {
                            System.out.println(o.toString());
                        }
                        break;
                    default:
                        break;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
}
