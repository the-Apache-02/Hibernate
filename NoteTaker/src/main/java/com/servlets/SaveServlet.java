package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	//here we are removing doGet method because we are using method type post
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//try catch block for exception handling
		try {
			//fetching the value from addNote.jsp
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			Note n=new Note(title,content,new Date());	
			Session s=FactoryProvider.getFactory().openSession();
			//invoke the transaction object for permanent store to the database
			Transaction tst=s.beginTransaction();
			//save the object
			s.save(n);
			
			tst.commit();
			//close the session
			s.close();
			response.setContentType("text/html");
			PrintWriter p=response.getWriter();
			p.println("<h1 style='text-align:center;' >Note added Successfully</h1>");
			p.println("<h1 style='text-align:center;' ><a href='showNotes.jsp'>View All Notes</a></h1>");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
