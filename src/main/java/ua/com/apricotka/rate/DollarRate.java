package ua.com.apricotka.rate;

import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import ua.com.apricotka.controller.OrderInfoController;

@Service
public class DollarRate {

    private static final Logger log = Logger.getLogger(OrderInfoController.class);
    @Value("${linkToNBU}")
    private String linkToNBU;

    public double getRate() {
        double rate = 0;
        try {
            Document doc = Jsoup.connect(linkToNBU).get();
            rate = Double.parseDouble(doc.select("rate").text());
        } catch (Exception e) {
            log.error(e);
        }
        log.info("Dollar rate got");
        return rate;
    }
}
