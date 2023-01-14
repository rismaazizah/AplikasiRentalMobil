package aplikasiRentalMobil.apk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conek {
    public static Connection getConnection() {
        Connection Koneksi = null;
        String url ="jdbc:mysql://localhost/db_rentalmobil";
        String user="root";
        String pass="";
         try {
            Koneksi =DriverManager.getConnection(url,user,pass);
        } catch (SQLException e) {
            System.out.println(e);
        }   
         return Koneksi;
    }        
}