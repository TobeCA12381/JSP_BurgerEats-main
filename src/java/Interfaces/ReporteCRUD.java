/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Reporte;
import java.util.List;

/**
 *
 * @author zh
 */
public interface ReporteCRUD {
    public List listar();
    public boolean add(Reporte reporte);
    public boolean eliminar(int id);
}
