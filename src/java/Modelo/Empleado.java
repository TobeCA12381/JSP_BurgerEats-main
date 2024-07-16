/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.Date;

/**
 *
 * @author BETO
 */
public class Empleado {
      private int idEmpleado;
    private double salario;
    private Date horarioLlegada;
    private Date horarioSalida;
    private Usuario usuario;

    public Empleado(double salario, Date horarioLlegada, Date horarioSalida, Usuario usuario) {
        this.salario = salario;
        this.horarioLlegada = horarioLlegada;
        this.horarioSalida = horarioSalida;
        this.usuario = usuario;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public Date getHorarioLlegada() {
        return horarioLlegada;
    }

    public void setHorarioLlegada(Date horarioLlegada) {
        this.horarioLlegada = horarioLlegada;
    }

    public Date getHorarioSalida() {
        return horarioSalida;
    }

    public void setHorarioSalida(Date horarioSalida) {
        this.horarioSalida = horarioSalida;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
}
