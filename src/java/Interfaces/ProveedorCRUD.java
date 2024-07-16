/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Proveedor;
import java.util.List;

/**
 *
 * @author zh
 */
public interface ProveedorCRUD {
    public List listar();
    public Proveedor list(int id);
    public boolean add(Proveedor proveedor);
    public boolean edit(Proveedor proveedor);
    public boolean eliminar(int id);
}
