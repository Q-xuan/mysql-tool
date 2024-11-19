package com.py;

import com.py.config.DBConfig;
import com.py.tool.BackupGenerator;
import com.sun.org.apache.xalan.internal.xsltc.cmdline.getopt.GetOpt;
import sun.tools.jar.CommandLine;

import javax.activation.CommandInfo;
import java.util.ArrayList;
import java.util.Properties;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {

        args = new String[]{"-h", "192.168.110.198", "-n", "guest_sys", "-f", "backup", "-p", "dimarts2013"};

        //读取args 赋值DBConfig
        for (int i = 0; i < args.length; i++) {
            if (args[i].contains("-h")) {
                DBConfig.DB_HOST = args[i + 1];
            }
            if (args[i].contains("-n")) {
                DBConfig.DB_NAME = args[i + 1];
            }
            if (args[i].contains("-f")) {
                DBConfig.DB_BACKUP_PATH = args[i + 1];
            }
            if (args[i].contains("-p")) {
                DBConfig.DB_PASSWORD = args[i + 1];
            }
        }

        BackupGenerator.generateBackup();
    }

}
