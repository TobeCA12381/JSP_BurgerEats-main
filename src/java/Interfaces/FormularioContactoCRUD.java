/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;
import Modelo.FormularioContacto;
import java.util.List;
/**
 *
 * @author zh
 */
public interface FormularioContactoCRUD {
    public List listar();
    public FormularioContacto list(int id);
    public boolean add(FormularioContacto fc);
    public boolean edit(FormularioContacto fc);
    public boolean eliminar(int id);
}
