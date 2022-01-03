package ua.com.apricotka.models;

public class OrderItem {

    private int itemId;
    private Apricot apricot;
    private long quantity;

    public OrderItem(int itemId, Apricot apricot, long quantity) {
        this.itemId = itemId;
        this.apricot = apricot;
        this.quantity = quantity;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
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
