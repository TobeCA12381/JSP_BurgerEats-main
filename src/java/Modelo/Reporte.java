package Modelo;

import java.util.Date;

public class Reporte {

    /**
     * @return the idReporte
     */
    public int getIdReporte() {
        return idReporte;
    }

    /**
     * @param idReporte the idReporte to set
     */
    public void setIdReporte(int idReporte) {
        this.idReporte = idReporte;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the pedido
     */
    public String getPedido() {
        return pedido;
    }

    /**
     * @param pedido the pedido to set
     */
    public void setPedido(String pedido) {
        this.pedido = pedido;
    }

    /**
     * @return the ordenTomadaPor
     */
    public String getOrdenTomadaPor() {
        return ordenTomadaPor;
    }

    /**
     * @param ordenTomadaPor the ordenTomadaPor to set
     */
    public void setOrdenTomadaPor(String ordenTomadaPor) {
        this.ordenTomadaPor = ordenTomadaPor;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the fechaRegistro
     */
    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    /**
     * @param fechaRegistro the fechaRegistro to set
     */
    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    /**
     * @return the totalPagar
     */
    public double getTotalPagar() {
        return totalPagar;
    }

    /**
     * @param totalPagar the totalPagar to set
     */
    public void setTotalPagar(double totalPagar) {
        this.totalPagar = totalPagar;
    }
    private int idReporte;
    private String nombre;
    private String pedido;
    private String ordenTomadaPor;
    private int cantidad;
    private Date fechaRegistro;
    private double totalPagar;

    // Constructor vacío
    public Reporte() {}

    // Constructor con parámetros
    public Reporte(int idReporte, String nombre, String pedido, String ordenTomadaPor, int cantidad, Date fechaRegistro, double totalPagar) {
        this.idReporte = idReporte;
        this.nombre = nombre;
        this.pedido = pedido;
        this.ordenTomadaPor = ordenTomadaPor;
        this.cantidad = cantidad;
        this.fechaRegistro = fechaRegistro;
        this.totalPagar = totalPagar;
    }

}
