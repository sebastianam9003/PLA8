package com.trifulcas.springhibernate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trifulcas.springhibernate.entity.Contacto;
import com.trifulcas.springhibernate.service.IContactoService;

@Controller
@RequestMapping("/contacto")
public class TareasController {
	@Autowired
	private IContactoService contactoService;
	
	@RequestMapping("/lista")
	public String lista(Model modelo) {
		
		List<Contacto> contacto=contactoService.getContacto();
		
		modelo.addAttribute("contacto",contacto);
		return"lista";
	}
}
