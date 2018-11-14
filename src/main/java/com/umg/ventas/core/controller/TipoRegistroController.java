package com.umg.ventas.core.controller;

import com.umg.ventas.core.bs.dao.TipoEmpaqueRepository;
import com.umg.ventas.core.bs.dao.TipoRegistroRepository;
import com.umg.ventas.core.ies.bo.TipoEmpaque;
import com.umg.ventas.core.ies.bo.TipoRegistro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1/tipo-registro")
public class TipoRegistroController {
  @Autowired
  private TipoRegistroRepository tipoRegistroRepository;

  @RequestMapping(method = RequestMethod.GET)
  public Iterable<TipoRegistro> getAll(){
    return tipoRegistroRepository.findAll();
  }


}
