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
    
    public GUI(int rows, int cols, int rowSize, int colsSize, int buttonSize, int spacing) {
        this.rows = rows;
        this.cols = cols;
        this.rowSize = rowSize;
        this.colSize = colsSize;
        this.buttonSize = buttonSize;
        this.spacing = spacing;
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
            g.setColor(Color.GRAY);
            for (int col = 0; col < cols; col++) {
                for (int row = 0; row < rows; row++) {
                    g.fillRect(spacing + col * buttonSize, buttonSize + spacing + row * buttonSize, buttonSize - 2*spacing, buttonSize - 2*spacing);
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
            System.out.println("Moved");
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
    
    public void repaint() {
        
    }
}
