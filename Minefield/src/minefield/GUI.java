/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package minefield;

import java.awt.Color;
import java.awt.Font;
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
    private final int rows;
    private final int cols;
    private final int rowSize, colSize;
    private final int buttonSize;
    private final int spacing;
    private int bombs;
    
    private int mouseX, mouseY;
    
    private final double probability;
    
    private final int[][] neighbours;
    private final boolean[][] mines;
    private final boolean[][] revealed;
    private final boolean[][] flagged;
    
    private final int smileX;
    private final int smileY;
    private int happiness = 2;
    
    public GUI(int rows, int cols, int rowsSize, int colsSize, int buttonSize, int spacing, int bombs) {
        this.rows = rows;
        this.cols = cols;
        this.rowSize = rowsSize;
        this.colSize = colsSize;
        this.buttonSize = buttonSize;
        this.spacing = spacing;
        this.bombs = bombs;
        this.probability = (double) bombs / (rows * cols);
        this.mines = new boolean[rows][cols];
        this.neighbours = new int[rows][cols];
        this.revealed = new boolean[rows][cols];
        this.flagged = new boolean[rows][cols];
        this.mouseX = -100;
        this.mouseY = -100;
        this.smileX = rowsSize/2 - buttonSize/2;
        this.smileY = 5;
        
        // set the bombs and revealeds
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
                    revealed[row][col] = false;
                }
            }
            repeating = true;
        }
        
        for (int col = 0; col < cols; col++) {
            for (int row = 0; row < rows; row++) {
                int count = 0;
                
                // check upward
                if (row > 0 && mines[row - 1][col]) {
                    count++;
                }
                                
                // check downward
                if (row < rows - 1 && mines[row + 1][col]) {
                    count++;
                }
                
                // check left
                if (col > 0 && mines[row][col - 1]) {
                    count++;
                }
                
                // check right
                if (col < cols - 1 && mines[row][col + 1]) {
                    count++;
                }
                
                // check top left
                if (row > 0 && col > 0 && mines[row - 1][col - 1]) {
                    count++;
                }
                
                // check top right
                if (row > 0 && col < cols - 1 && mines[row - 1][col + 1]) {
                    count++;
                }
                
                // check down left
                if (row < rows - 1 && col > 0 && mines[row + 1][col - 1]) {
                    count++;
                }
                
                // check down right
                if (row < rows - 1 && col < cols - 1 && mines[row + 1][col + 1]) {
                    count++;
                }
                
                neighbours[row][col] = count;
            }
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
            // background
            g.setColor(Color.DARK_GRAY);
            g.fillRect(0, 0, rowSize, colSize);
            
            int positionX, positionY, buttonSide;
            for (int col = 0; col < cols; col++) {
                for (int row = 0; row < rows; row++) {
                    // stuff that says position and size of the button
                    positionX = spacing + col * buttonSize;
                    positionY = 10 + spacing + (row + 1) * buttonSize;
                    buttonSide = buttonSize - 2 * spacing;
                    
                    // default button
                    g.setColor(Color.GRAY);

                    // if revealed, change the color, and if mouse over make special effect of hover
                    if (revealed[row][col]) {
                        g.setColor(Color.DARK_GRAY);
                        if (mines[row][col])
                            g.setColor(Color.RED);
                    } else if (mouseX >= positionX && mouseX <= positionX + buttonSide && mouseY >= positionY - spacing + buttonSide && mouseY <= positionY + 2 * buttonSide) {
                        g.setColor(Color.LIGHT_GRAY);
                    }
                    
                    // paint the buttons                    
                    g.fillRect(positionX, positionY, buttonSide, buttonSide);
                    
                    // if button is already revealed, fill the numbers/mines
                    if (revealed[row][col]) {
                        if (mines[row][col]) {
                            g.setColor(Color.BLACK);
                            g.fillRect(positionX + buttonSize/7 + buttonSize/8, positionY + buttonSize/7, buttonSize/4, buttonSize/2);
                            g.fillRect(positionX + buttonSize/7, positionY + buttonSize/7 + buttonSize/8, buttonSize/2, buttonSize/4);
                            g.fillRect(positionX + buttonSize/7 + buttonSize/16, positionY + buttonSize/7 + buttonSize/16, buttonSize * 3/8, buttonSize * 3/8);
                            g.fillRect(positionX + buttonSize/3, positionY + buttonSize/15, buttonSize/10, buttonSize * 65/100);
                            g.fillRect(positionX + buttonSize/15, positionY + buttonSize/5 + buttonSize/8, buttonSize * 65/100, buttonSize/10);
                        } else {
                            g.setColor(Color.WHITE);
                            if (neighbours[row][col] == 1) {
                                g.setColor(Color.BLUE);
                            } else if (neighbours[row][col] == 2) {
                                g.setColor(Color.GREEN);
                            } else if (neighbours[row][col] == 3) {
                                g.setColor(Color.RED);
                            } else if (neighbours[row][col] == 4) {
                                g.setColor(new Color(0, 0, 128));
                            } else if (neighbours[row][col] == 5) {
                                g.setColor(new Color(178, 34, 34));
                            } else if (neighbours[row][col] == 6) {
                                g.setColor(new Color(72, 209, 204));
                            } else if (neighbours[row][col] == 7) {
                                g.setColor(Color.PINK);
                            } else if (neighbours[row][col] == 8) {
                                g.setColor(Color.BLACK);
                            } 
                            g.setFont(new Font("Tahoma", Font.BOLD, buttonSize * 2/3));
                            g.drawString(Integer.toString(neighbours[row][col]), positionX + buttonSize/6, positionY + buttonSize * 2/3);
                        }
                    }
                }
            }
            
            g.setColor(Color.YELLOW);
            g.fillOval(smileX, smileY, buttonSize, buttonSize);
            g.setColor(Color.BLACK);
            
            switch (happiness) {
                case 1:
                    g.fillOval(smileX + buttonSize/5, smileY + buttonSize/4, buttonSize/4, buttonSize/4);
                    g.fillOval(smileX + buttonSize - 2 * spacing - buttonSize/5, smileY + buttonSize/4, buttonSize/4, buttonSize/4);
                    g.fillRect(smileX + buttonSize/5, smileY + buttonSize * 5/7, buttonSize * 5/8, buttonSize/10);
                    g.fillRect(smileX + buttonSize/7, smileY + buttonSize * 5/8, buttonSize * 1/8, buttonSize/8);
                    g.fillRect(smileX + buttonSize - spacing - buttonSize/7, smileY + buttonSize * 5/8, buttonSize * 1/8, buttonSize/8);
                    break;
                case 2:
                    g.setFont(new Font("Tahoma", Font.BOLD, buttonSize * 1/3));
                    g.drawString("X", smileX + buttonSize/5, smileY + buttonSize/2);
                    g.drawString("X", smileX + buttonSize - 2 * spacing - buttonSize/5, smileY + buttonSize/2);
                    g.fillRect(smileX + buttonSize/5, smileY + buttonSize * 4/7, buttonSize * 5/8, buttonSize/10);
                    g.fillRect(smileX + buttonSize/7, smileY + buttonSize * 5/8, buttonSize * 1/8, buttonSize/8);
                    g.fillRect(smileX + buttonSize - spacing - buttonSize/7, smileY + buttonSize * 5/8, buttonSize * 1/8, buttonSize/8);
                    break;
                default:
                    g.fillOval(smileX + buttonSize/5, smileY + buttonSize/4, buttonSize/4, buttonSize/4);
                    g.fillOval(smileX + buttonSize - 2 * spacing - buttonSize/5, smileY + buttonSize/4, buttonSize/4, buttonSize/4);
                    g.fillOval(smileX + buttonSize/3, smileY + buttonSize * 5/8, buttonSize/3, buttonSize/3);
                    break;
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
            int[] buttonXY = insideBox();
            if (buttonXY[0] != -1) {
                revealed[buttonXY[0]][buttonXY[1]] = true;
            }
        }

        @Override
        public void mousePressed(MouseEvent arg0) {
            happiness = 3;
        }

        @Override
        public void mouseReleased(MouseEvent arg0) {
            int[] buttonXY = insideBox();
            if (buttonXY[0] != -1) {
                happiness = mines[buttonXY[0]][buttonXY[1]] ? 2 : 1;
            }
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
    
    private int[] insideBox() {
        int positionX, positionY, buttonSide;
        
        for (int col = 0; col < cols; col++) {
            for (int row = 0; row < rows; row++) {
                positionX = spacing + col * buttonSize;
                positionY = 10 + spacing + (row + 1) * buttonSize;
                buttonSide = buttonSize - 2 * spacing;
                if (mouseX >= positionX && mouseX <= positionX + buttonSide && mouseY >= positionY - spacing + buttonSide && mouseY <= positionY + 2 * buttonSide) {
                    return new int[]{ row, col };
                }
            }
        }
        
        return new int[]{ -1 };
    }
}
