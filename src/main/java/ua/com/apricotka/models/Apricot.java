package ua.com.apricotka.models;

public class Apricot {

    private int apricotId;
    private String name;
    private String info;
    private double price;

    public Apricot(int apricotId, String name, String info, double price) {
        this.apricotId = apricotId;
        this.name = name;
        this.info = info;
        this.price = price;
    }

    public int getApricotId() {
        return apricotId;
    }

    public void setApricotId(int apricotId) {
        this.apricotId = apricotId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
