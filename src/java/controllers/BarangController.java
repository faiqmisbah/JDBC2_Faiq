/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import services.BarangService;
import models.Barang;
import java.util.ArrayList;
import javax.servlet.ServletConfig;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author faiqm
 */

@WebServlet("/barang")
public class BarangController extends HttpServlet {
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private BarangService barangService = new BarangService();
    
    public void init(ServletConfig servletConfig) {
        try {
            super.init(servletConfig);
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        ArrayList<Barang> daftarBarang = barangService.findAllBarang();
        req.setAttribute("barang", daftarBarang);
        RequestDispatcher rd = req.getRequestDispatcher("product/view.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        String method = req.getParameter("_method");
        if ("put".equalsIgnoreCase(method)) {
            doPut(req, resp);
        } else if ("delete".equalsIgnoreCase(method)) {
            doDelete(req, resp);
        } else {        
            String nama = req.getParameter("nama");
            int harga = Integer.parseInt(req.getParameter("harga"));
            int stok = Integer.parseInt(req.getParameter("stok"));
            Barang barang = new Barang(nama, harga, stok);
            barangService.saveBarang(barang);
            resp.sendRedirect("/Modul13JDBC/barang");
        }

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("PUT");
        int id = Integer.parseInt(req.getParameter("id"));
        Barang barang = barangService.findBarangById(id);
        if (barang != null) {
            barang.setNama(req.getParameter("nama"));
            barang.setHarga(Integer.parseInt(req.getParameter("harga")));
            barang.setStok(Integer.parseInt(req.getParameter("stok")));
            barangService.updateBarang(barang);
        }
        resp.sendRedirect("/Modul13JDBC/barang");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        barangService.deleteBarang(barangService.findBarangById(id).getId());
        resp.sendRedirect("/Modul13JDBC/barang");
    }

}
