/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package services;
import models.Barang;
import java.util.ArrayList;
import application.JDBC;
import java.sql.ResultSet;
import java.time.LocalDateTime; 

public class BarangService {
    private JDBC db=new JDBC();
    public ArrayList<Barang> findAllBarang() {
        try{
            ResultSet rs = db.runExecuteQuery("select * from barang;");
            ArrayList<Barang> daftarBarang = new ArrayList<Barang>();
            while (rs.next()){
                int id = rs.getInt("id");
                String nama = rs.getString("nama");
                int harga = rs.getInt("harga");
                int stok = rs.getInt("stok");
                daftarBarang.add(new Barang(id,nama,harga,stok));
            }
            System.out.println("TEST: " + daftarBarang.get(0).getNama());
            return daftarBarang;
        }catch(Exception e){
            System.out.println("error:"+e.getMessage());
            return null;
        }
    }
    public void saveBarang(Barang barang){
        try{
            db.runUpdateQuery("insert into barang (nama,harga, stok) values ('"+barang.getNama()+"','"+barang.getHarga()+"','"+barang.getStok()+"')");
        }catch(Exception e){
            System.out.println("error:"+e.getMessage());
        }
    }
    
    public void updateBarang(Barang barang) {
        try {
            db.runUpdateQuery("UPDATE barang SET nama = '" + barang.getNama() + "', harga = '" + barang.getHarga() + "', stok = '" + barang.getStok() + "' WHERE id = " + barang.getId());
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public Barang findBarangById(int id) {
        try {
            ResultSet rs = db.runExecuteQuery("SELECT * FROM barang WHERE id = " + id);
            if (rs.next()) {
                String nama = rs.getString("nama");
                int harga = rs.getInt("harga");
                int stok = rs.getInt("stok");
                return new Barang(id,nama,harga,stok);
            }
            return null;
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            return null;
        }
    }
    
    public Barang findBarangByName(String nama) {
        try {
            System.out.println("TEST: " +nama);
            ResultSet rs = db.runExecuteQuery("SELECT * FROM barang WHERE nama = '" + nama + "'");
            if (rs.next()) {
                int barangID = rs.getInt("id");
                int harga = rs.getInt("harga");
                int stok = rs.getInt("stok");
                return new Barang(barangID,nama,harga,stok);
            }
            return null;
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            return null;
        }
    }

    public void deleteBarang(int id) {
        try {
            db.runUpdateQuery("DELETE FROM barang WHERE id = " + id);
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
    
}
