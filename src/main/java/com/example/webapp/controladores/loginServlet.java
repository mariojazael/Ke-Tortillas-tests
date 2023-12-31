package com.example.webapp.controladores;

import com.example.webapp.modelos.Cliente;
import com.example.webapp.repositorios.ClienteRepositorioImpl;
import com.example.webapp.util.LoginService;
import com.example.webapp.util.LoginServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@WebServlet({"/login","/login-modificar", "/login-eliminar"})
public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LoginService auth = new LoginServiceImpl();
        Optional<String> usernameOptional = auth.getUsername(req);

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String username = new String();
        boolean usuarioEcontrado = false;
        boolean isModificar = req.getServletPath().endsWith("modificar");
        boolean isEliminar = req.getServletPath().endsWith("eliminar");

        ClienteRepositorioImpl usuarioRepositorio = new ClienteRepositorioImpl();

        List<Cliente> clientes = usuarioRepositorio.listar();

        for(int i = 0; i < clientes.size(); i++){
            if(clientes.get(i).getEmail().equals(email) && clientes.get(i).getContrasenia().equals(password)){
                usuarioEcontrado = true;
                username = clientes.get(i).getNombre();
            }
        }

        if (usuarioEcontrado) {
            if(isModificar){
                req.setAttribute("email", email);
                getServletContext().getRequestDispatcher("/cargarInformacion").forward(req, resp);
            } else if (isEliminar) {
                req.setAttribute("email", email);
                getServletContext().getRequestDispatcher("/eliminar-usuario").forward(req, resp);
            } else{
                req.getSession().setAttribute("username", username);
                getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
            }
        } else {
            Map<String, String> errores = new HashMap<>();
            errores.put("usuarioInvalido", "Email o password incorrectos, intentelo de nuevo.");
            req.setAttribute("errores", errores);
            if(isModificar || isEliminar){
                getServletContext().getRequestDispatcher("/login_modificar").forward(req, resp);
            }else{
                getServletContext().getRequestDispatcher("/registro.jsp").forward(req, resp);
            }
        }
    }
}
