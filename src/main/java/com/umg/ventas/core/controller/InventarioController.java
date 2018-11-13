package com.umg.ventas.core.controller;


import com.umg.ventas.core.bs.dao.FacturaRepository;
import com.umg.ventas.core.bs.dao.InventarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1/inventario")
public class InventarioController {
  @Autowired
  private InventarioRepository inventarioRepository;
  @RequestMapping(method = RequestMethod.GET)
  public Iterable getAll(){
    return inventarioRepository.findAll();
  }



}
