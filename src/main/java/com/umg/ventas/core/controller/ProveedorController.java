package com.umg.ventas.core.controller;


import com.umg.ventas.core.bs.dao.ProveedorRepository;
import com.umg.ventas.core.ies.bo.Proveedor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;



@RestController
@RequestMapping(value = "/api/v1/proveedor")
public class ProveedorController {
  @Autowired
  private ProveedorRepository proveedorRepository;

  @CrossOrigin(origins = "http://localhost:4200")
  @RequestMapping(method = RequestMethod.GET)
  public Iterable<Proveedor> getAll(){
    return proveedorRepository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:4200")
  @RequestMapping(method = RequestMethod.POST)
  public Object save(@RequestBody(required = true) Proveedor registro){
    return proveedorRepository.save(registro);
  }
  @RequestMapping(value = "/{id}", method = RequestMethod.PATCH)
  public ResponseEntity<Proveedor> update(@PathVariable("id") Long id, @RequestBody Proveedor registro){
    if(id == null || id < 0 ){
      return new ResponseEntity("{ \"message\" : \"Debe enviar un id valido\"}", HttpStatus.CONFLICT);
    }
    if(proveedorRepository.findOne(id) == null){
      return new ResponseEntity(HttpStatus.NO_CONTENT);
    }
    Proveedor proveedor =proveedorRepository.findOne(id);
    proveedor.setNit(registro.getNit());
    proveedorRepository.save(proveedor);
    return new ResponseEntity<Proveedor>(proveedor,HttpStatus.OK);
  }
  @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
  public ResponseEntity<?> delete(@PathVariable("id") Long id){
    if(id == null || id < 0 ){
      return new ResponseEntity("{ \"message\" : \"Debe enviar un id valido\"}", HttpStatus.CONFLICT);
    }
    if(proveedorRepository.findOne(id) == null){
      return new ResponseEntity(HttpStatus.NO_CONTENT);
    }
    Proveedor proveedor = proveedorRepository.findOne(id);
    proveedorRepository.delete(proveedor);
    return new ResponseEntity("{ \"message\" : \"Registro eliminado\"}", HttpStatus.OK);
  }



}
