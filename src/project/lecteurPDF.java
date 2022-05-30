/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;
import java.awt.BorderLayout;
import java.io.FileInputStream;
import javax.swing.JFrame;
import javax.swing.JPanel;
import com.adobe.acrobat.Viewer;
import java.lang.String;

/**
 *
 * @author OMEN
 */
public class lecteurPDF  extends JPanel{
    
    private Viewer viewer;
 
    public lecteurPDF(String nomfichier) throws Exception{
        this.setLayout(new BorderLayout());
 
        //créer le viewer qui va servir à afficher le contenu du pdf
        viewer = new Viewer();
        this.add(viewer, BorderLayout.CENTER);
        FileInputStream fis = new FileInputStream(nomfichier);
        viewer.setDocumentInputStream(fis);
        viewer.activate();
    }
 
    public static void main(String[] args) throws Exception {
        //String URL = ;
 
        String nomfichier = "D:\\HOTELMANAGENENT\\5.pdf";
        
        lecteurPDF lecteur = new lecteurPDF(nomfichier);
        //créer le JFrame
        JFrame f = new JFrame("Lecteur PDF");
        f.setSize(1024,768);
        f.setLocationRelativeTo(null);
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        f.setVisible(true);
        f.getContentPane().add(lecteur);
    }
    
}
