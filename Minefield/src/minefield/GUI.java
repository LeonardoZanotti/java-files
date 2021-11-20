/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package minefield;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.util.Random;
import javax.swing.JFrame;
import javax.swing.JPanel;

/**
 *
 * @author leonardozanotti
 */
public class GUI extends JFrame {
    private int rows;
    private int cols;
    private int rowSize, colSize;
    private int buttonSize;
    private int spacing;
    private int bombs;
    
    private int mouseX = -100, mouseY = -100;
    
    private double probability;
    
    private int[][] neighbours;
    private boolean[][] mines;
    private boolean[][] revealed;
    private boolean[][] flagged;
    
    public GUI(int rows, int cols, int rowSize, int colsSize, int buttonSize, int spacing, int bombs) {
        this.rows = rows;
        this.cols = cols;
        this.rowSize = rowSize;
        this.colSize = colsSize;
        this.buttonSize = buttonSize;
        this.spacing = spacing;
        this.bombs = bombs;
        this.probability = (double) bombs / (rows * cols);
        this.mines = new boolean[rows][cols];
        this.neighbours = new int[rows][cols];
        this.revealed = new boolean[rows][cols];
        this.flagged = new boolean[rows][cols];

        boolean repeating = false;
        while (bombs > 0) {
            for (int col = 0; col < cols; col++) {
                for (int row = 0; row < rows; row++) {
                    if (bombs > 0 && Math.random() < probability && !mines[row][col]) {
                        mines[row][col] = true;
                        bombs--;
                    } else if (!repeating) {
                        mines[row][col] = false;
                    }
                }
            }
            repeating = true;
        }
        
        this.setTitle("Minesweeper");
        this.setSize(rowSize, colSize);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setResizable(false);
        this.setLocationRelativeTo(null);
        this.setVisible(true);
        
        Board board = new Board();
        this.setContentPane(board);
        
        Move move = new Move();
        this.addMouseMotionListener(move);
        
        Click click = new Click();
        this.addMouseListener(click);
    }
    
    public class Board extends JPanel {
        public void paintComponent(Graphics g) {
            g.setColor(Color.DARK_GRAY);
            g.fillRect(0, 0, rowSize, colSize);
            int positionX, positionY, buttonSide;
            for (int col = 0; col < cols; col++) {
                for (int row = 0; row < rows; row++) {
                    positionX = spacing + col * buttonSize;
                    positionY = spacing + (row + 1) * buttonSize;
                    buttonSide = buttonSize - 2 * spacing;
                    g.setColor(Color.GRAY);
                    if (mines[row][col]) {
                        g.setColor(Color.YELLOW);
                    }
                    if (mouseX >= positionX && mouseX <= positionX + buttonSide && mouseY >= positionY - spacing + buttonSide && mouseY <= positionY + 2 * buttonSide) {
                        g.setColor(Color.RED);
                    }
                    g.fillRect(positionX, positionY, buttonSide, buttonSide);
                }
            }
            
        }
    }
    
    public class Move implements MouseMotionListener {

        @Override
        public void mouseDragged(MouseEvent arg0) {
            // Not implemented yet
        }

        @Override
        public void mouseMoved(MouseEvent e) {
            mouseX = e.getX();
            mouseY = e.getY();
        }
        
    }
    
    public class Click implements MouseListener {

        @Override
        public void mouseClicked(MouseEvent e) {
            System.out.println("Clicked");
        }

        @Override
        public void mousePressed(MouseEvent arg0) {
            // Not implemented yet
        }

        @Override
        public void mouseReleased(MouseEvent arg0) {
            // Not implemented yet
        }

        @Override
        public void mouseEntered(MouseEvent arg0) {
            // Not implemented yet
        }

        @Override
        public void mouseExited(MouseEvent arg0) {
            // Not implemented yet
        }
        
    }
}
