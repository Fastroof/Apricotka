package ua.com.apricotka.entity;

public class OrderItem {

    private int id;
    private Apricot apricot;
    private long quantity;

    public int getId() {
        return id;
    }

    public void setId(int itemId) {
        this.id = itemId;
    }

    public Apricot getApricot() {
        return apricot;
    }

    public void setApricot(Apricot apricot) {
        this.apricot = apricot;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }
}
