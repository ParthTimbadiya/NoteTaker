package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FectroryProvider;


public class DeletServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeletServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			
			
			Session session = FectroryProvider.grtFactory().openSession();
			Transaction transaction = session.beginTransaction();
			
			Note note = (Note) session.get(Note.class, noteId);
			
			session.delete(note);
			
			transaction.commit();
			
			session.close();
			
			response.sendRedirect("all_notes.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	

}
