package com.umg.ventas.core.controller;


import com.umg.ventas.core.bs.dao.ClienteRepository;
import com.umg.ventas.core.ies.bo.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;



@RestController
@RequestMapping(value = "/api/v1/cliente")
public class ClienteController {
  @Autowired
  private ClienteRepository clienteRepository;

  @CrossOrigin(origins = "http://localhost:4200")
  @RequestMapping(method = RequestMethod.GET)
  public Iterable<Cliente> getAll(){
    return clienteRepository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:4200")
  @RequestMapping(method = RequestMethod.POST)
  public Object save(@RequestBody(required = true) Cliente registro){
    return clienteRepository.save(registro);
  }
  @RequestMapping(value = "/{id}", method = RequestMethod.PATCH)
  public ResponseEntity<Cliente> update(@PathVariable("id") Long id, @RequestBody Cliente registro){
    if(id == null || id < 0 ){
      return new ResponseEntity("{ \"message\" : \"Debe enviar un id valido\"}", HttpStatus.CONFLICT);
    }
    if(clienteRepository.findOne(id) == null){
      return new ResponseEntity(HttpStatus.NO_CONTENT);
    }
    Cliente cliente =clienteRepository.findOne(id);
    cliente.setNombre(registro.getNombre());
    clienteRepository.save(cliente);
    return new ResponseEntity<Cliente>(cliente,HttpStatus.OK);
  }
  @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
  public ResponseEntity<?> delete(@PathVariable("id") Long id){
    if(id == null || id < 0 ){
      return new ResponseEntity("{ \"message\" : \"Debe enviar un id valido\"}", HttpStatus.CONFLICT);
    }
    if(clienteRepository.findOne(id) == null){
      return new ResponseEntity(HttpStatus.NO_CONTENT);
    }
    Cliente cliente = clienteRepository.findOne(id);
    clienteRepository.delete(cliente);
    return new ResponseEntity("{ \"message\" : \"Registro eliminado\"}", HttpStatus.OK);
  }



}
