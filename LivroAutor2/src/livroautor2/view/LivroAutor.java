/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package livroautor2.view;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import livroautor2.controller.LivroAutorController;

/**
 *
 * @author leonardozanotti
 */
public class LivroAutor extends javax.swing.JFrame {
    private final LivroTable LivroTable = new LivroTable();
    private final AutorTable AutorTable = new AutorTable();
    LivroAutorController controller = new LivroAutorController();
    
    /**
     * Creates new form LivroAutor
     */
    public LivroAutor() {
        initComponents();
        this.LivroTable.setLivros(this.controller.listLivros());
        this.AutorTable.setAutores(this.controller.listAutores());
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTabbedPane1 = new javax.swing.JTabbedPane();
        IncluirLivro = new javax.swing.JPanel();
        TituloLabel = new javax.swing.JLabel();
        SalvarLivroBtn = new javax.swing.JButton();
        TituloInput = new javax.swing.JTextField();
        AssuntoLabel = new javax.swing.JLabel();
        AssuntoInput = new javax.swing.JTextField();
        ISBNLabel = new javax.swing.JLabel();
        PublicacaoLabel = new javax.swing.JLabel();
        ISBNInput = new javax.swing.JTextField();
        PublicacaoInput = new javax.swing.JTextField();
        IncluirAutor = new javax.swing.JPanel();
        NaturalidadeLabel = new javax.swing.JLabel();
        NascimentoLabel = new javax.swing.JLabel();
        NaturalidadeInput = new javax.swing.JTextField();
        NascimentoInput = new javax.swing.JTextField();
        NomeLabel = new javax.swing.JLabel();
        SalvarAutorBtn = new javax.swing.JButton();
        NomeInput = new javax.swing.JTextField();
        DocumentoLabel = new javax.swing.JLabel();
        DocumentoInput = new javax.swing.JTextField();
        ListarLivros = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        ListarAutores = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        TituloLabel.setText("Titulo:");

        SalvarLivroBtn.setText("Salvar");
        SalvarLivroBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SalvarLivroBtnActionPerformed(evt);
            }
        });

        AssuntoLabel.setText("Assunto:");

        ISBNLabel.setText("ISBN:");

        PublicacaoLabel.setText("Publicação:");

        javax.swing.GroupLayout IncluirLivroLayout = new javax.swing.GroupLayout(IncluirLivro);
        IncluirLivro.setLayout(IncluirLivroLayout);
        IncluirLivroLayout.setHorizontalGroup(
            IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(IncluirLivroLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, IncluirLivroLayout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(SalvarLivroBtn))
                    .addGroup(IncluirLivroLayout.createSequentialGroup()
                        .addGroup(IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(TituloLabel)
                            .addComponent(AssuntoLabel))
                        .addGap(26, 26, 26)
                        .addGroup(IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(TituloInput)
                            .addComponent(AssuntoInput)))
                    .addGroup(IncluirLivroLayout.createSequentialGroup()
                        .addComponent(PublicacaoLabel)
                        .addGap(8, 8, 8)
                        .addComponent(PublicacaoInput, javax.swing.GroupLayout.DEFAULT_SIZE, 364, Short.MAX_VALUE))
                    .addGroup(IncluirLivroLayout.createSequentialGroup()
                        .addComponent(ISBNLabel)
                        .addGap(52, 52, 52)
                        .addComponent(ISBNInput)))
                .addContainerGap())
        );
        IncluirLivroLayout.setVerticalGroup(
            IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(IncluirLivroLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(TituloLabel)
                    .addComponent(TituloInput, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(AssuntoInput, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(AssuntoLabel))
                .addGap(18, 18, 18)
                .addGroup(IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ISBNLabel)
                    .addComponent(ISBNInput, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(IncluirLivroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(PublicacaoLabel)
                    .addComponent(PublicacaoInput, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 114, Short.MAX_VALUE)
                .addComponent(SalvarLivroBtn)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Novo livro", IncluirLivro);

        NaturalidadeLabel.setText("Naturalidade:");

        NascimentoLabel.setText("Nascimento:");

        NomeLabel.setText("Nome:");

        SalvarAutorBtn.setText("Salvar");
        SalvarAutorBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SalvarAutorBtnActionPerformed(evt);
            }
        });

        DocumentoLabel.setText("Documento:");

        javax.swing.GroupLayout IncluirAutorLayout = new javax.swing.GroupLayout(IncluirAutor);
        IncluirAutor.setLayout(IncluirAutorLayout);
        IncluirAutorLayout.setHorizontalGroup(
            IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(IncluirAutorLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(IncluirAutorLayout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(SalvarAutorBtn))
                    .addGroup(IncluirAutorLayout.createSequentialGroup()
                        .addGroup(IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(NomeLabel)
                            .addComponent(DocumentoLabel)
                            .addComponent(NaturalidadeLabel)
                            .addComponent(NascimentoLabel))
                        .addGap(13, 13, 13)
                        .addGroup(IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(NascimentoInput, javax.swing.GroupLayout.DEFAULT_SIZE, 342, Short.MAX_VALUE)
                            .addComponent(NaturalidadeInput)
                            .addComponent(NomeInput)
                            .addComponent(DocumentoInput))))
                .addContainerGap())
        );
        IncluirAutorLayout.setVerticalGroup(
            IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(IncluirAutorLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(NomeLabel)
                    .addComponent(NomeInput, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(DocumentoInput, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(DocumentoLabel))
                .addGap(18, 18, 18)
                .addGroup(IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(NaturalidadeLabel)
                    .addComponent(NaturalidadeInput, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(IncluirAutorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(NascimentoLabel)
                    .addComponent(NascimentoInput, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 114, Short.MAX_VALUE)
                .addComponent(SalvarAutorBtn)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Novo autor", IncluirAutor);

        jTable1.setModel(LivroTable);
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout ListarLivrosLayout = new javax.swing.GroupLayout(ListarLivros);
        ListarLivros.setLayout(ListarLivrosLayout);
        ListarLivrosLayout.setHorizontalGroup(
            ListarLivrosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, ListarLivrosLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 453, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        ListarLivrosLayout.setVerticalGroup(
            ListarLivrosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, ListarLivrosLayout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 293, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        jTabbedPane1.addTab("Listar livros", ListarLivros);

        jTable2.setModel(AutorTable);
        jScrollPane2.setViewportView(jTable2);

        javax.swing.GroupLayout ListarAutoresLayout = new javax.swing.GroupLayout(ListarAutores);
        ListarAutores.setLayout(ListarAutoresLayout);
        ListarAutoresLayout.setHorizontalGroup(
            ListarAutoresLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(ListarAutoresLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane2)
                .addContainerGap())
        );
        ListarAutoresLayout.setVerticalGroup(
            ListarAutoresLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 293, Short.MAX_VALUE)
        );

        jTabbedPane1.addTab("Listar autores", ListarAutores);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jTabbedPane1)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jTabbedPane1)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void SalvarLivroBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SalvarLivroBtnActionPerformed
        try {
            String titulo = TituloInput.getText();
            String assunto = AssuntoInput.getText();
            String isbnCode = ISBNInput.getText();
            Date publicacao = (Date) new SimpleDateFormat("dd/MM/yyyy").parse(PublicacaoInput.getText());
            this.controller.createBook(titulo, assunto, isbnCode, publicacao);
            this.cleanAllForms();
        } catch (ParseException ex) {
            Logger.getLogger(LivroAutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_SalvarLivroBtnActionPerformed

    private void SalvarAutorBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SalvarAutorBtnActionPerformed
        try {
            String nome = NomeInput.getText();
            String documento = DocumentoInput.getText();
            String naturalidade = NaturalidadeInput.getText();
            Date nascimento = (Date) new SimpleDateFormat("dd/MM/yyyy").parse(NascimentoInput.getText());
            this.controller.createAutor(nome, documento, naturalidade, nascimento);
            this.cleanAllForms();
        } catch (ParseException ex) {
            Logger.getLogger(LivroAutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_SalvarAutorBtnActionPerformed

    private void cleanAllForms() {
        TituloInput.setText("");
        AssuntoInput.setText("");
        ISBNInput.setText("");
        PublicacaoInput.setText("");
        NomeInput.setText("");
        DocumentoInput.setText("");
        NaturalidadeInput.setText("");
        NascimentoInput.setText("");
        
        this.LivroTable.setLivros(this.controller.listLivros());
        this.AutorTable.setAutores(this.controller.listAutores());
    }
    
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
            java.util.logging.Logger.getLogger(LivroAutor.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(LivroAutor.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(LivroAutor.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(LivroAutor.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new LivroAutor().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField AssuntoInput;
    private javax.swing.JLabel AssuntoLabel;
    private javax.swing.JTextField DocumentoInput;
    private javax.swing.JLabel DocumentoLabel;
    private javax.swing.JTextField ISBNInput;
    private javax.swing.JLabel ISBNLabel;
    private javax.swing.JPanel IncluirAutor;
    private javax.swing.JPanel IncluirLivro;
    private javax.swing.JPanel ListarAutores;
    private javax.swing.JPanel ListarLivros;
    private javax.swing.JTextField NascimentoInput;
    private javax.swing.JLabel NascimentoLabel;
    private javax.swing.JTextField NaturalidadeInput;
    private javax.swing.JLabel NaturalidadeLabel;
    private javax.swing.JTextField NomeInput;
    private javax.swing.JLabel NomeLabel;
    private javax.swing.JTextField PublicacaoInput;
    private javax.swing.JLabel PublicacaoLabel;
    private javax.swing.JButton SalvarAutorBtn;
    private javax.swing.JButton SalvarLivroBtn;
    private javax.swing.JScrollPane ScrollPane;
    private javax.swing.JScrollPane ScrollPane1;
    private javax.swing.JTextField TituloInput;
    private javax.swing.JLabel TituloLabel;
    private javax.swing.JTable clientesTable;
    private javax.swing.JTable clientesTable1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    // End of variables declaration//GEN-END:variables
}
