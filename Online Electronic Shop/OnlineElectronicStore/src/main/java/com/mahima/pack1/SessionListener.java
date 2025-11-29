package com.mahima.pack1;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionListener implements HttpSessionListener, HttpSessionAttributeListener 
{
    @Override
    public void sessionCreated(HttpSessionEvent se) 
    {
    	System.out.println("Session Object Created");
    }
    
    @Override
    public void sessionDestroyed(HttpSessionEvent se) 
    {
    	System.out.println("Session Object Destroyed");
    }
    
    @Override
    public void attributeAdded(HttpSessionBindingEvent hbse) 
    {
    	System.out.println("Attribute added to the session : "+hbse.getName());
    }
    
    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) 
    {
    	System.out.println("Attribute Removed from the session");
    }
}
