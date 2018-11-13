package com.umg.ventas.core.controller;

import com.umg.ventas.core.bs.dao.FacturaRepository;
import com.umg.ventas.core.bs.dao.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1/producto")
public class ProductoController  {
    @Autowired
    private ProductoRepository productoRepository;
    @RequestMapping(method = RequestMethod.GET)
    public Iterable getAll(){
      return productoRepository.findAll();
    }



}
