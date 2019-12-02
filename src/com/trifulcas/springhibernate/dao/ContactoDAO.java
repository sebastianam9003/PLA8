package com.trifulcas.springhibernate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trifulcas.springhibernate.entity.Contacto;

@Repository
public class ContactoDAO implements IContactoDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Contacto> getContacto(){
		Session miSesion=sessionFactory.getCurrentSession();
		
		List<Contacto> contacto=miSesion.createQuery("from contacto",Contacto.class).list();
		return contacto;
	}
}
