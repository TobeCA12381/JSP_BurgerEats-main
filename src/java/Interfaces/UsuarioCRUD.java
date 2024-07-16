/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Usuario;
import java.util.List;

/**
 *
 * @author BETO
 */
public interface UsuarioCRUD {

    public List listar();

    public Usuario list(int id);

    public boolean add(Usuario user);

    public boolean edit(Usuario user);

    public boolean eliminar(int id);
}
