/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package CalcPackage;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 *
 * @author leonardozanotti
 */
public class CalcForm extends javax.swing.JFrame implements ActionListener {
    enum CalculatorStatus {
        INITIAL, INPUT1, INPUT2, OPERATOR, RESULT
    }
    private CalculatorStatus calcStatus = CalculatorStatus.INITIAL;
    private String input1, operator, input2;
    
    /**
     * Creates new form CalcForm
     */
    public CalcForm() {
        initComponents();
        setLocationRelativeTo(null);
        
        // Listeners
        jButton1.addActionListener(this);
        jButton2.addActionListener(this);
        jButton3.addActionListener(this);
        jButton4.addActionListener(this);
        jButton5.addActionListener(this);
        jButton6.addActionListener(this);
        jButton7.addActionListener(this);
        jButton8.addActionListener(this);
        jButton9.addActionListener(this);
        jButton10.addActionListener(this);
        jButton11.addActionListener(this);
        jButton12.addActionListener(this);
        jButton13.addActionListener(this);
        jButton14.addActionListener(this);
        jButton15.addActionListener(this);
        jButton16.addActionListener(this);
        
        jTextField1.setText("0");
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jTextField1 = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jButton9 = new javax.swing.JButton();
        jButton10 = new javax.swing.JButton();
        jButton11 = new javax.swing.JButton();
        jButton12 = new javax.swing.JButton();
        jButton13 = new javax.swing.JButton();
        jButton14 = new javax.swing.JButton();
        jButton15 = new javax.swing.JButton();
        jButton16 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Calculator");

        jPanel1.setPreferredSize(new java.awt.Dimension(400, 70));

        jTextField1.setText("jTextField1");
        jTextField1.setEnabled(false);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jTextField1, javax.swing.GroupLayout.DEFAULT_SIZE, 432, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jTextField1, javax.swing.GroupLayout.DEFAULT_SIZE, 46, Short.MAX_VALUE)
                .addContainerGap())
        );

        getContentPane().add(jPanel1, java.awt.BorderLayout.NORTH);

        jPanel2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 12, 12, 12));
        jPanel2.setMaximumSize(new java.awt.Dimension(2, 32767));
        jPanel2.setPreferredSize(new java.awt.Dimension(200, 230));
        jPanel2.setLayout(new java.awt.GridLayout(4, 4, 8, 8));

        jButton1.setText("7");
        jPanel2.add(jButton1);

        jButton2.setText("8");
        jPanel2.add(jButton2);

        jButton3.setText("9");
        jPanel2.add(jButton3);

        jButton4.setText("+");
        jPanel2.add(jButton4);

        jButton5.setText("4");
        jPanel2.add(jButton5);

        jButton6.setText("5");
        jPanel2.add(jButton6);

        jButton7.setText("6");
        jPanel2.add(jButton7);

        jButton8.setText("-");
        jPanel2.add(jButton8);

        jButton9.setText("1");
        jPanel2.add(jButton9);

        jButton10.setText("2");
        jPanel2.add(jButton10);

        jButton11.setText("3");
        jPanel2.add(jButton11);

        jButton12.setText("X");
        jPanel2.add(jButton12);

        jButton13.setText("0");
        jPanel2.add(jButton13);

        jButton14.setText("=");
        jPanel2.add(jButton14);

        jButton15.setText("C");
        jPanel2.add(jButton15);

        jButton16.setText("/");
        jPanel2.add(jButton16);

        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(CalcForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CalcForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CalcForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CalcForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CalcForm().setVisible(true);
            }
        });
        
        
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton11;
    private javax.swing.JButton jButton12;
    private javax.swing.JButton jButton13;
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton16;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables

    @Override
    public void actionPerformed(ActionEvent e) {
        String command = e.getActionCommand();
        switch (command) {
            case "0":
                performNumberAction("0");
                break;
            case "1":
                performNumberAction("1");
                break;
            case "2":
                performNumberAction("2");
                break;
            case "3":
                performNumberAction("3");
                break;
            case "4":
                performNumberAction("4");
                break;
            case "5":
                performNumberAction("5");
                break;
            case "6":
                performNumberAction("6");
                break;
            case "7":
                performNumberAction("7");
                break;
            case "8":
                performNumberAction("8");
                break;
            case "9":
                performNumberAction("9");
                break;
            case "C":
                performClearAction();
                break;
            case "X":
                performOperatorAction("X");
                break;
            case "/":
                performOperatorAction("/");
                break;
            case "+":
                performOperatorAction("+");
                break;
            case "-":
                performOperatorAction("-");
                break;
            case "=":
                performResultAction();
                break;
            default:
                break;
        }
    }
    
    private void performNumberAction(String number) {
        if (calcStatus.equals(CalculatorStatus.INPUT1) || calcStatus.equals(CalculatorStatus.INPUT2)) {
            jTextField1.setText(jTextField1.getText()+number);
        } else {
            jTextField1.setText(number);
            if (!"0".equals(number)) {
                calcStatus = calcStatus.equals(CalculatorStatus.OPERATOR) ? CalculatorStatus.INPUT2 : CalculatorStatus.INPUT1;
            }
        }
    }
    
    private void performOperatorAction(String operator) {
        if (calcStatus.equals(CalculatorStatus.INPUT1)) {
            input1 = jTextField1.getText();
            this.operator = operator;
            calcStatus = CalculatorStatus.OPERATOR;
        }
    }
    
    private void performResultAction() {
        input2 = jTextField1.getText();
        Integer input1Number = Integer.parseInt(this.input1);
        Integer input2Number = Integer.parseInt(this.input2);
        Integer result = 0;
        switch (operator) {
            case "-":
                result = input1Number - input2Number;
                break;
            case "+":
                result = input1Number + input2Number;
                break;
            case "/":
                System.out.println("dale");
                result = input1Number / input2Number;
                break;
            case "X":
                result = input1Number * input2Number;
                break;
            default:
                break;
        }
        jTextField1.setText(result.toString());
        calcStatus = CalculatorStatus.RESULT;
    }
    
    private void performClearAction() {
        jTextField1.setText("0");
        calcStatus = CalculatorStatus.INITIAL;        
    }
}
