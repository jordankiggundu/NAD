/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class reallocation extends HttpServlet {
    public int LTStaff=1;
    public int MTStaff=1;
    public int STStaff=1;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            
   
            String LTStaff= request.getParameter("LTStaff");
            String MTStaff= request.getParameter("MTStaff");
            String STStaff= request.getParameter("STStaff");
            
            Connection co=null;
            Statement st=null;
            ResultSet r=null;
            //loading the driver
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                //making connection
               co= DriverManager.getConnection("jdbc:mysql://localhost:3306/megashoppers","root","");
                out.println("successful");
           
         st= co.createStatement();
         st.executeUpdate("Insert into productlinestaff set LTStaff='"+LTStaff+"',"
                        + "MTStaff='"+MTStaff+"',STStaff='"+STStaff+"'");
               
                
                out.println("Successfully inserted");
             
            }catch(Exception e){
                    out.println("error:" + e.getMessage());
        }
            
    }
    }


        
    

    