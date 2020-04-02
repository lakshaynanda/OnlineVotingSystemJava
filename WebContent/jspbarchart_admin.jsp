<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <%@ include file="conn.jsp"%>
          <%@ page  import="java.awt.*" %>
            <%@ page  import="java.io.*" %>
               <%@ page  import="org.jfree.chart.*" %>
            <%@ page  import="org.jfree.chart.entity.*" %>
             <%@ page  import ="org.jfree.data.general.*"%>
             
              <%
            final DefaultPieDataset data = new DefaultPieDataset();
			
			try {
			
			
			ResultSet rs=st.executeQuery("select * from vote_cast");


String idd="we";
int  vno=90;

	while(rs.next())
			{
			 data.setValue(rs.getString(3), new Double(rs.getString(2)));	
				
			}
	
		

              JFreeChart chart = ChartFactory.createPieChart("Pie Chart ", data, true, true, false);
			
			

              
              final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());

              final File file1 = new File("D:/Tomcat7/webapps/Online Voating Machine/piechart.png");
			  
            ChartUtilities.saveChartAsPNG
			(
            file1, chart, 600, 400, info);
              } 
			  catch (Exception e)
			   {
            out.println(e);
              }
           %>
            <html>
           <head>
             <meta http-equiv="Content-Type" 
             content="text/html; charset=utf-8">
             <title>JSP Page</title>
            <style type="text/css">
            #form1 table tr td {
	color: #FF5;
}
            body {
	background-color: #000;
}
            </style>
           </head>
            <body>
            <form id="form1" name="form1" method="post" action="">
              <table width="64%" border="0" align="center">
                <tr>
                  <td width="88%" align="center"><img src="piechart.png" width="600" height="400" 
           border="4" usemap="#chart" /></td>
                </tr>
                <tr>
                  <td height="21" align="center" bgcolor="#5555FF"><h2><a href="admin_panel.jsp">BACK</a></h2></td>
                </tr>
              </table>
            </form>
            </body>
            </html> 