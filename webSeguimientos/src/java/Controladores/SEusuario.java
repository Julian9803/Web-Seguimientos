
package Controladores;

import Modelos.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SEusuario extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
           
        String action = request.getParameter("Action");
        
        switch(action){
            case("iniciarSesion"):
                    iniciarSesion(request, response);
                    break;
            case("Actualizar"):
                Actualizar(request, response);
                break;  
            case("Registrar"):
                Registrar(request, response);
                break;
        }        
    }
    protected void Registrar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Usuario usuario = new Usuario();
        
        usuario.setIdUsuarios(Integer.parseInt(request.getParameter("idUsuario")));
        usuario.setNombres(request.getParameter("Nombres"));
        usuario.setApellidos(request.getParameter("Apellidos"));
        usuario.setNumeroDocumento(Long.parseLong(request.getParameter("numeroDocumento")));
        usuario.setTelefono(Long.parseLong(request.getParameter("Telefono")));
        usuario.setCorreo(request.getParameter("Correo"));
        usuario.setDireccion(request.getParameter("Direccion"));
        usuario.setTipoUsuario(request.getParameter("tipoUsuario"));
        usuario.setEstado("Activo");
        
        HibernateUtil.Save(usuario);
               
    }
    protected void iniciarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
           
        String user = request.getParameter("User");
        String pass = request.getParameter("Pass");
        
        HibernateUtil.sesion = HibernateUtil.getSessionFactory().openSession();
        
        Usuario us = new Usuario();
        ArrayList<Usuario> lista = new ArrayList<Usuario>();
        lista = (ArrayList<Usuario>) HibernateUtil.Query("FROM Usuario WHERE User = '"+user+"' AND Pass = '"+pass+"'");
        
        for(Usuario item: lista){
            us.setNombres(item.getNombres());
            us.setTipoUsuario(item.getTipoUsuario());
        }
        HttpSession sesion = request.getSession();
        sesion.setAttribute("User", us);
        response.sendRedirect("Menu.jsp");       
        
    }
    
    protected void Actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Usuario usuario = new Usuario();
        
        usuario.setNombres(request.getParameter("Nombres"));
        usuario.setApellidos(request.getParameter("Apellidos"));
        usuario.setNumeroDocumento(Long.parseLong(request.getParameter("numeroDocumento")));
        usuario.setTelefono(Long.parseLong(request.getParameter("Telefono")));
        usuario.setCorreo(request.getParameter("Correo"));
        usuario.setDireccion(request.getParameter("Direccion"));
        usuario.setTipoUsuario(request.getParameter("tipoUsuario"));
        
        HibernateUtil.Update(usuario);
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
