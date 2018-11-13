package com.umg.ventas.core.ies.bo;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Table(name = "tipo_registro")
@Entity
public class TipoRegistro implements Serializable {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column (name ="codigo_tipo_registro" )
  private Long codigoTipoEmpaque;
  @Column (name = "descripcion")
  private String descripcion;




}
