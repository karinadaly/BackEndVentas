package com.umg.ventas.core.controller;

import com.umg.ventas.core.bs.dao.FacturaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1/factura")
public class FacturaController {
  @Autowired
  private FacturaRepository facturaRepository;
  @RequestMapping(method = RequestMethod.GET)
  public Iterable getAll(){
    return facturaRepository.findAll();
  }
}
