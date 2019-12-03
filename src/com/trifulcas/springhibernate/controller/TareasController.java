package com.trifulcas.springhibernate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/addcontacto")
	public String addcontacto(Model modelo) {
		Contacto contacto = new Contacto();
		modelo.addAttribute("contacto", contacto);
		return "form-contacto";
	}
	
	@GetMapping("updatecontacto")
	public String updateContacto(@RequestParam("idcontacto") int idcontacto, Model modelo) {
		
		Contacto contacto=contactoService.getContacto(idcontacto);
		modelo.addAttribute("contacto", contacto);
		return "form-contacto";
	}
	
	@GetMapping("deletecontacto")
	public String deleteContacto(@RequestParam("idcontacto") int idcontacto) {
		Contacto tarea = contactoService.getContacto(idcontacto);
		contactoService.delete(tarea);

		return "redirect:/contacto/lista";
	}
	
	@PostMapping("/savecontacto")
	public String saveContacto(@ModelAttribute("contacto") Contacto contacto) {

		contactoService.save(contacto);
		return "redirect:/contacto/lista";
	}
	
	
	
}
