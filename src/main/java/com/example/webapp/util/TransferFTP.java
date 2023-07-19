package com.example.webapp.util;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class TransferFTP{
    public static void main(String[] args) {
        String direccionFTP = "192.168.56.1";
        String usuario = "mario";
        String contrasena = "12345";
        String rutaArchivoLocal = "C:\\Users\\Owner\\Downloads\\Directorios.pdf";
        String rutaArchivoRemota = "/Directorios.pdf";

        enviarArchivo(direccionFTP, usuario, contrasena, rutaArchivoLocal, rutaArchivoRemota);

    }

    public static void enviarArchivo(String direccionFTP, String usuario, String contrasena, String rutaArchivoLocal, String rutaArchivoRemota) {
        FTPClient ftpClient = new FTPClient();
        FileInputStream fis = null;

        try {
            ftpClient.connect(direccionFTP, 21);
            ftpClient.login(usuario, contrasena);

            ftpClient.setFileType(FTP.BINARY_FILE_TYPE);

            File archivoLocal = new File(rutaArchivoLocal);
            fis = new FileInputStream(archivoLocal);

            ftpClient.enterRemotePassiveMode();
            ftpClient.enterLocalPassiveMode();

            ftpClient.storeFile(rutaArchivoRemota, fis);
            ftpClient.logout();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (fis != null) {
                    fis.close();
                }
                ftpClient.disconnect();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}
