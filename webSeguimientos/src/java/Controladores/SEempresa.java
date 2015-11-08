/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Empresa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Duber
 */
public class SEempresa extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       String action = request.getParameter("Action");
        System.out.println("Voya a entra al switch");
        
        switch(action){
            case("iniciarSesion"):
                //iniciarSesion(request, response);
                    break;
            case("Actualizar"):
                //Actualizar(request, response);
                break;  
            case("Registrar"):
                Registrar(request, response);
                break;
            case("Eliminar"):
                System.out.println("Entre en eliminar");
                Eliminar(request, response);
                break;
        }      
                  
    }
    
    protected void Registrar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter(); 
       
       Empresa empresa = new Empresa();
       empresa.setRazonSocial(request.getParameter("RazonSocial"));
       empresa.setDireccion(request.getParameter("Direccion"));
       empresa.setNit(Long.parseLong(request.getParameter("NIT")));
       empresa.setTelefono(Long.parseLong(request.getParameter("Telefono")));
       empresa.setEmail(request.getParameter("Email"));
       empresa.setEstado("Activo");
       HibernateUtil.Save(empresa);
       response.sendRedirect("Menu.jsp");
       
    }
    
    protected void Eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       String action = request.getParameter("Action");
        System.out.println("Entre");
       int idEmpresa = Integer.parseInt(request.getParameter("valor"));
       Empresa empresa = new Empresa();
       empresa.setIdEmpresa(idEmpresa);
       empresa.setEstado("Inactivo");
       HibernateUtil.Update(empresa);
           
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
