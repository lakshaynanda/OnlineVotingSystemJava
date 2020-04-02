

import java.sql.*;


public class connn 
{
    
          Connection  con=null;
     Statement  st=null;
    public void connn1()
    {
         try
            {
         
        Class.forName("com.mysql.jdbc.Driver");

         con=DriverManager.getConnection("jdbc:mysql://localhost/advanceonlinevoatingmachinesystemusingwebcam","root","");
         st=con.createStatement();
    
         }
                 catch(Exception et)
                 {
                       et.printStackTrace();

                 }
    }
}
