package net.radamis.testapp;

import java.net.URL;

import org.apache.commons.io.IOUtils;
import java.nio.charset.Charset;
import java.net.MalformedURLException;
import java.io.IOException;
/*
 * Hello world!
 *
 */
public class App
{
    private static void run() {
      System.out.println("Starting Download");
      try{
        URL url = new URL("http://serenity:8080/ip.php");

        String o = IOUtils.toString(url.openStream(), Charset.defaultCharset());

        System.out.println("O: " + o);
      }catch(MalformedURLException e){
        System.out.println("MalformedURLException: " + e.getMessage());
      }catch(IOException e){
        System.out.println("IOException: " + e.getMessage());
      }
    }
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        run();
    }
}
