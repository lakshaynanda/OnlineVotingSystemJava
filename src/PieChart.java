

import java.awt.image.RenderedImage;
import java.io.File;
import java.io.IOException;
import java.sql.*;

import javax.imageio.ImageIO;
import javax.swing.JFrame;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.PieDataset;
import org.jfree.util.Rotation;



public class PieChart extends JFrame 
{

  private static final long serialVersionUID = 1L;
  
  
 

  public static void main(String[] args) 
  {
         PieChart demo = new PieChart();
      
     }
  
  public   PieChart() 
  {
      
   
        PieDataset dataset = createDataset();
     
        JFreeChart chart = createChart(dataset);
    
      File filename_png = new File("E:/Advance Java/AdvanceOnLineVoatingMachineSystemUsingWebcam/WebContent/img/graph/graph.png");
       
       
        try 
        {
         ChartUtilities.saveChartAsPNG(filename_png, chart, 800, 500);
        } 
        catch (IOException ex) 
        {
            throw new RuntimeException("Error saving a file",ex);
        }
        
      
    }
    

 public   PieDataset createDataset() 
    {
	  
	 DefaultPieDataset result = new DefaultPieDataset();
	 
	 //============================database==========================================================
	 connn obj=new connn();
		obj.connn1();
		   try
		   {
ResultSet rs=obj.st.executeQuery("SELECT party_name ,vote_no FROM vote_cast v , candidate c WHERE v.cand_id=c.cand_id" );
		  

		String pt = null;
		int vt= 0;

		   while(rs.next())
		   {
			     pt=rs.getString(1);
			     vt=Integer.parseInt(rs.getString(2));
			 
			     System.out.println(pt);
				   System.out.print(vt);
			  
				 
				     
			        result.setValue(pt, vt);
			     
			      
			       
		   }
		   
		   }
		   catch(Exception et)
		   {
			  et.printStackTrace(); 
		   }
		   return result;       
		  
	
	 
	 
  
        
    }
    
  

    private JFreeChart createChart(PieDataset dataset) 
    {
        
        JFreeChart chart = ChartFactory.createPieChart3D("Winner Election Graph",dataset,true,true,false);

        PiePlot3D plot = (PiePlot3D) chart.getPlot();
        plot.setStartAngle(290);
        plot.setDirection(Rotation.CLOCKWISE);
        plot.setForegroundAlpha(0.5f);
        return chart;
        
    }
} 