package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FectroryProvider {
	public static SessionFactory factory;
	
	public static SessionFactory grtFactory() {
		
		if (factory == null) {
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return factory;
	}
	
	public static void closeFactory() {
		if (factory.isOpen()) {
			
			factory.close();			
		}
	}
}
