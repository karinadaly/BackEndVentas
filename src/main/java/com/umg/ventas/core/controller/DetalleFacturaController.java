package com.umg.ventas.core.controller;

import com.umg.ventas.core.bs.dao.DetalleFacturaRepository;

import com.umg.ventas.core.ies.bo.DetalleFactura;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1/detalle-factura")
public class DetalleFacturaController {
  @Autowired
  private DetalleFacturaRepository detalleFacturaRepository;

  @RequestMapping(method = RequestMethod.GET)
  public Iterable<DetalleFactura> getAll() {
    return detalleFacturaRepository.findAll();
  }

}


