package com.umg.ventas.core.ies.bo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name="detalle_factura")
@EqualsAndHashCode(exclude = {"factura"})
public class DetalleFactura implements Serializable {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "codigo_factura_detalle")
  private Long codigoFacturaDetalle;
  @Column(name = "precio")
  private Double precio;
  @Column(name = "cantidad")
  private int cantidad;
  @Column(name = "sub_total")
  private Double subTotal;
  @ManyToOne
  @JoinColumn(name = "codigo_factura",referencedColumnName = "codigo_factura")
  @JsonIgnore
  private Factura factura;
}
