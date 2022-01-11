package ua.com.apricotka;

import org.apache.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ApricotkaApplication {

    private static final Logger log = Logger.getLogger(ApricotkaApplication.class);

    public static void main(String[] args) {
        log.info("Program running ...");
        SpringApplication.run(ApricotkaApplication.class, args);
        log.info("Program stopped");
    }

}
