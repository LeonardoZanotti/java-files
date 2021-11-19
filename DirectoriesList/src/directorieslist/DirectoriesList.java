/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.nio.file.InvalidPathException;
import java.nio.file.Paths;
import java.util.Arrays;

/**
 *
 * @author leonardozanotti
 */
public class DirectoriesList {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        if (args.length == 0) {
            System.out.println("Invalid path!");
            return;
        }
        
        listAllFiles(args[0], args[0] + "/");
    }
    
    public static boolean pathExists(String path) {
        File file = new File(path);
        if (!file.exists()) {
            System.out.println("Invalid path!");
            return false;
        }
        return true;
    }
    
    public static void listAllFiles(String path, String prefix) {
        if (pathExists(path)) {
            File[] files = new File(path).listFiles();
            for (File file : files) {
                System.out.printf("%s%s\n", prefix, file.getName());
                if (file.isDirectory()) {
                    listAllFiles(file.getPath(), prefix + file.getName() + "/");
                }
            }
        }
    }
    
}
