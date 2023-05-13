package logic;

import lombok.Getter;
import lombok.Setter;

import java.io.*;
import java.util.ArrayList;

@Getter
@Setter
public class student implements Serializable {
    private String fname;
    private String lname;
    private String sname;
    private String special;
    private String mark;

}
