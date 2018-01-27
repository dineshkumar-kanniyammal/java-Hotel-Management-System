
package hotel.management;

public class Javaclasscustomerservices {

	 private int customerid;
	 private String drivername;
	 private int driverphone;
	 private int carno;
	public Javaclasscustomerservices(int customerid, String drivername, int driverphone, int carno) {
		super();
		this.customerid = customerid;
		this.drivername = drivername;
		this.driverphone = driverphone;
		this.carno = carno;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getDrivername() {
		return drivername;
	}
	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}
	public int getDriverphone() {
		return driverphone;
	}
	public void setDriverphone(int driverphone) {
		this.driverphone = driverphone;
	}
	public int getCarno() {
		return carno;
	}
	public void setCarno(int carno) {
		this.carno = carno;
	}

}
