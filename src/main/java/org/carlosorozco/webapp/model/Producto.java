
package org.carlosorozco.webapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table (name = "Productos")
@Entity
public class Producto {
    
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int productoId;
    private String nombreProducto;
    private String marcaProducto;
    private String descripcionProducto;
    @Column (name = "precio")
    private Double precioProducto;

    public Producto() {
    }

    public Producto(int productoId, String nombreProducto, String marcaProducto, String descripcionProducto, Double precioProducto) {
        this.productoId = productoId;
        this.nombreProducto = nombreProducto;
        this.marcaProducto = marcaProducto;
        this.descripcionProducto = descripcionProducto;
        this.precioProducto = precioProducto;
    }

    public Producto(String nombreProducto, String marcaProducto, String descripcionProducto, Double precioProducto) {
        this.nombreProducto = nombreProducto;
        this.marcaProducto = marcaProducto;
        this.descripcionProducto = descripcionProducto;
        this.precioProducto = precioProducto;
    }

    public int getProductoId() {
        return productoId;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public String getMarcaProducto() {
        return marcaProducto;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public Double getPrecioProducto() {
        return precioProducto;
    }

    public void setProductoId(int productoId) {
        this.productoId = productoId;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public void setMarcaProducto(String marcaProducto) {
        this.marcaProducto = marcaProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public void setPrecioProducto(Double precioProducto) {
        this.precioProducto = precioProducto;
    }

    @Override
    public String toString() {
        return "Producto{" + "productoId=" + productoId + ", nombreProducto=" + nombreProducto + ", marcaProducto=" + marcaProducto + ", descripcionProducto=" + descripcionProducto + ", precioProducto=" + precioProducto + '}';
    }
    
    

    

    
    
   
   
    
}
