/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Producto;
import java.util.List;

/**
 *
 * @author zh
 */
public interface ProductoCRUD {
    public List listar();
    public Producto list(int id);
    public boolean add(Producto prod);
    public boolean edit(Producto prod);
    public boolean eliminar(int id);
}
