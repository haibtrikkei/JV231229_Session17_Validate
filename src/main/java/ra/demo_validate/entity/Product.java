package ra.demo_validate.entity;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.*;
import java.util.Date;

public class Product {
    @NotNull(message = "Product id is empty!")
    private Integer proId;
    @NotEmpty(message = "Product name is empty!")
    private String proName;
    @NotEmpty(message = "Producer name is empty!")
    private String producer;
    @NotNull(message = "Expire date is empty")
    @DateTimeFormat(pattern = "yyyy-MM-dd") // chỉ khi đặt type="date" mới bắt buộc phải theo định dạng này
    @Future(message = "Date is not valid")
    private Date expireDate;
    @NotNull(message = "Price is empty!")
    @Min(value = 0,message = "Price must be greater or equal than 0")
    private Double price;

    public Product() {
    }

    public Product(Integer proId, String proName, String producer, Date expireDate, Double price) {
        this.proId = proId;
        this.proName = proName;
        this.producer = producer;
        this.expireDate = expireDate;
        this.price = price;
    }

    public Integer getProId() {
        return proId;
    }

    public void setProId(Integer proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }
}
