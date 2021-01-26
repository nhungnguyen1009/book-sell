package nlu.edu.fit.bookstore.model;

public class Publisher {
    private int id;
    private String name;
    private int id_product;
    private String name_product;
    private int quantity;

    public Publisher() {
    }

    public Publisher(int id, String name, int id_product, String name_product, int quantity) {
        this.id = id;
        this.name = name;
        this.id_product = id_product;
        this.name_product = name_product;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public String getName_product() {
        return name_product;
    }

    public void setName_product(String name_product) {
        this.name_product = name_product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
