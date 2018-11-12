package com.umg.ventas.core.controller;

import com.umg.ventas.core.bs.dao.FacturaRepository;
import com.umg.ventas.core.bs.dao.TelefonoClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1/telefono-cliente")

public class TelefonoClienteController {

  @Autowired
  private TelefonoClienteRepository telefonoClienteRepository;
  @RequestMapping(method = RequestMethod.GET)
  public Iterable getAll(){
    return telefonoClienteRepository.findAll();
  }



}
