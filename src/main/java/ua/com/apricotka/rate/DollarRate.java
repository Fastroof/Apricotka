package ua.com.apricotka.rate;

import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import ua.com.apricotka.controller.OrderInfoController;

import java.io.IOException;

public class DollarRate {

    private static final Logger log = Logger.getLogger(OrderInfoController.class);

    public static double getDollarRate() {
        double rate = 0;
        try {
            Document doc = Jsoup.connect("https://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?valcode=USD").get();
            rate = Double.parseDouble(doc.select("rate").text());
        } catch (IOException e) {
            log.error(e);
        }
        log.info("Dollar rate got");
        return rate;
    }
}
