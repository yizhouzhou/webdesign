package models;

public class Fatchinfor {


    String apartmentinfo;
    String aparttotalbedroom;
    String apartprice;
    String apartbedrooms;

    public Fatchinfor(String apartmentinfo, String aparttotalbedroom, String apartprice, String apartbedrooms) {

        this.apartmentinfo = apartmentinfo;
        this.aparttotalbedroom = aparttotalbedroom;
        this.apartprice = apartprice;
        this.apartbedrooms = apartbedrooms;
    }

    public String getApartmentinfo() {
        return apartmentinfo;
    }

    public void setApartmentinfo(String apartmentinfo) {
        this.apartmentinfo = apartmentinfo;
    }

    public String getAparttotalbedroom() {
        return aparttotalbedroom;
    }

    public void setAparttotalbedroom(String aparttotalbedroom) {
        this.aparttotalbedroom = aparttotalbedroom;
    }

    public String getApartprice() {
        return apartprice;
    }

    public void setApartprice(String apartprice) {
        this.apartprice = apartprice;
    }

    public String getApartbedrooms() {
        return apartbedrooms;
    }

    public void setApartbedrooms(String apartbedrooms) {
        this.apartbedrooms = apartbedrooms;
    }
}
