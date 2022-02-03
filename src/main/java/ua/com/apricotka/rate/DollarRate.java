package ua.com.apricotka.rate;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import ua.com.apricotka.controller.OrderInfoController;

import java.net.URL;

@Service
public class DollarRate {

    private static final Logger log = Logger.getLogger(OrderInfoController.class);
    @Value("${linkForUSD}")
    private String linkForUSD;

    public double getRate() {
        double rate = 0;
        try {
            URL url = new URL(linkForUSD);
            JSONTokener tokener = new JSONTokener(url.openStream());
            JSONObject root = new JSONObject(tokener);
            rate = Double.parseDouble(root.getString("value"));
        } catch (Exception e) {
            log.error(e);
        }
        log.info("Dollar rate got");
        return rate;
    }
}
