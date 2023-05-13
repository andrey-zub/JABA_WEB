package logic;


import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class data {

    student obj;


    public void writeFile(String pth,student student_object){

        try{

            FileOutputStream fos = new FileOutputStream(pth);
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(   student_object    );
            fos.close();
            System.out.println("------Serialize_[OK]---------");

        } catch(IOException e){
            System.out.println("------Serialize_[!ERR!]---------");
            System.out.println(e.getMessage());

        }
    }


    public  void  readFile(String pth){

        try{

            FileInputStream fis = new FileInputStream(pth);
            ObjectInputStream ois = new ObjectInputStream(fis);


            obj = (student) ois.readObject() ;

            ois.close();
            System.out.println("------DeSerialize_[OK]---------");

        } catch(IOException e){
            System.out.println("------DeSerialize_[!ERR!]------");
            System.out.println(e.getMessage());

        } catch (ClassNotFoundException e) {
            System.out.println("------DeSerialize_[!ERR!]------");
            System.out.println(e.getMessage());
        }

    }

    public String getFname(){  return obj.getFname();  }
    public String getLname(){  return obj.getLname();  }
    public String getSname(){  return obj.getSname();  }
    public String getSpecial(){  return obj.getSpecial();  }
    public String getMark(){  return obj.getMark();  }

}
