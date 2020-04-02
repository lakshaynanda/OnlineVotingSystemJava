package comp;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;

import javax.imageio.ImageIO;

public class Compa
{

	
	public static int  printAllARGBDetails1(BufferedImage image) 
    {
		int al=0,gr=0,bl=0,rd=0,tot;
   
    	int width = image.getWidth();
        int height = image.getHeight();
        int pixel,alpha = 0,red = 0,green = 0,blue = 0;

     
        for (int i = 0; i < width; i++) 
        {
            for (int j = 0; j < height; j++) 
            {
            pixel = image.getRGB(i, j);

          alpha = (pixel >> 24) & 0x000000FF;
          red = (pixel >> 16) & 0x000000FF;
          green = (pixel >>8 ) & 0x000000FF;
          blue = (pixel) & 0x000000FF;
          
          al=al+alpha;
            bl=bl+blue;
            rd=rd+red;
            gr=gr+green;
            }
       }
        tot=al+bl+rd+gr;
       
 return tot;
    }
//-----------------------
	  public static int printAllARGBDetails(BufferedImage image) 
	    {
		  int al=0,gr=0,bl=0,rd=0,total;
	    	int width = image.getWidth();
	        int height = image.getHeight();
	        int pixel,alpha = 0,red = 0,green = 0,blue = 0;
	 
	        for (int i = 0; i < width; i++) 
	        {
	            for (int j = 0; j < height; j++) 
	            {
	            pixel = image.getRGB(i, j);

	           alpha = (pixel >> 24) & 0x000000FF;
	     
	           
	           red = (pixel >> 16) & 0x000000FF;
	     
	           green = (pixel >>8 ) & 0x000000FF;
	      
	            blue = (pixel) & 0x000000FF;
	     
	            al=al+alpha;
	            bl=bl+blue;
	            rd=rd+red;
	            gr=gr+green;
	            }
	       }
	        total=al+bl+rd+gr;
	       
	return total;

	    }

	//-----------------------------
	
	public  int  doPost1() throws  Exception 
	{
		
		   int imgg,imgg1,diff;
	    	BufferedImage img = null,img1=null;
	    	
	    	try 
	    	{
	    	    img = ImageIO.read(new File("D:/AdvanceJavaWorkSpace/AdvanceOnLineVoatingMachineSystemUsingWebcam/WebContent/img/databaseimage/databaseimg.jpg"));
	    	    img1= ImageIO.read(new File("D:/AdvanceJavaWorkSpace/AdvanceOnLineVoatingMachineSystemUsingWebcam/WebContent/img/reg/register.jpg"));
	    	    
	    	}
	    	catch (IOException e) 
	    	{
	    		e.printStackTrace();
	    	}
	    	
	
	   imgg=printAllARGBDetails(img);
	       
	     imgg1=printAllARGBDetails1(img1);
	       if(imgg>imgg1)
	    	   
	       diff=imgg-imgg1;
	       else
	    	 diff=imgg1-imgg;
	    
	        return diff;
	     
	       
	}
	
	
	
}
