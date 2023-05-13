package logic;

import java.io.File;

public class path {


    protected  String sepr = File.separator;
    protected  String local = "C:"+sepr+"Users"+sepr+"Андрей"+sepr+"Desktop"+sepr+"учеба"+sepr+"!УНИВЕР"+sepr+"ТП"+sepr+"lab_web"+sepr+"src"+sepr+"file" ;
    protected  String src = local  + sepr ;

    public  String get_path(){   return src;  }




}
