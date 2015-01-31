
package controllers;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class HitCounterFilter implements Filter{
    
  private int hitCount; 
               
  @Override
  public void  init(FilterConfig config) 
                    throws ServletException{
     // Reset hit counter.
     hitCount = 0;
  }

    /**
     *
     * @param request
     * @param response
     * @param chain
     * @throws IOException
     * @throws ServletException
     */
    @Override
  public void  doFilter(ServletRequest request, 
              ServletResponse response,
              FilterChain chain) 
              throws java.io.IOException, ServletException {

      // increase counter by one
      hitCount++;

      // Print the counter.
      System.out.println("Site visits count :"+ hitCount );

      // Pass request back down the filter chain
      chain.doFilter(request,response);
  }
  @Override
  public void destroy() 
  { 
      // This is optional step but if you like you
      // can write hitCount value in your database.
  } 
}