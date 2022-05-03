package models;

public class ApartmentModels {

    String apartmentinfo;
    String aparttotalbedroom;
    String apartprice;

    public ApartmentModels(String apartmentinfo, String aparttotalbedroom, String apartprice) {
        this.apartmentinfo = apartmentinfo;
        this.aparttotalbedroom = aparttotalbedroom;
        this.apartprice = apartprice;
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


}
