package hotel.management;
public class Javaclassroombookinginformation {
 private int customerid;
 private String bookingname;
 private String idproof;
 private int phonenumber;
 private String checkindate;
 private String checkoutdate;
 private int advancepay;
 private int roomno;
 private int floorno;
 private String roomtype;
 private String roomservice;
 private int price;
public Javaclassroombookinginformation(int customerid,String bookingname, String idproof, String checkindate, String checkoutdate,  int advancepay,
		int phonenumber, int roomno, int floorno, String roomtype, String roomservice, int price) {
	super();
	this.bookingname = bookingname;
	this.idproof = idproof;
	this.checkindate = checkindate;
	this.checkoutdate = checkoutdate;
	this.customerid = customerid;
	this.advancepay = advancepay;
	this.phonenumber = phonenumber;
	this.roomno = roomno;
	this.floorno = floorno;
	this.roomtype = roomtype;
	this.roomservice = roomservice;
	this.price = price;
}
public String getBookingname() {
	return bookingname;
}
public void setBookingname(String bookingname) {
	this.bookingname = bookingname;
}
public String getIdproof() {
	return idproof;
}
public void setIdproof(String idproof) {
	this.idproof = idproof;
}
public String getCheckindate() {
	return checkindate;
}
public void setCheckindate(String checkindate) {
	this.checkindate = checkindate;
}
public String getCheckoutdate() {
	return checkoutdate;
}
public void setCheckoutdate(String checkoutdate) {
	this.checkoutdate = checkoutdate;
}
public int getAdvancepay() {
	return advancepay;
}
public void setAdvancepay(int advancepay) {
	this.advancepay = advancepay;
}
public int getRoomno() {
	return roomno;
}
public void setRoomno(int roomno) {
	this.roomno = roomno;
}
public int getFloorno() {
	return floorno;
}
public void setFloorno(int floorno) {
	this.floorno = floorno;
}
public String getRoomtype() {
	return roomtype;
}
public void setRoomtype(String roomtype) {
	this.roomtype = roomtype;
}
public String getRoomservice() {
	return roomservice;
}
public void setRoomservice(String roomservice) {
	this.roomservice = roomservice;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getcustomerid() {
	return customerid;
}
public int getphonenumber() {
	return phonenumber;
}
}