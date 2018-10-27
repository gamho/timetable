package com.cafe24.timetable;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class DBTest {
   private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
   private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
   private static final String USER = "hr";
   private static final String PWD = "hr";
   
   
   @Test
   public void testConn() throws Exception{
      Class.forName(DRIVER);
      
      try(Connection conn = (Connection) DriverManager.getConnection(URL, USER, PWD)){
         System.out.println(conn);
      }catch(Exception e) {
         e.printStackTrace();
      }
      
   
   }


   
         

}