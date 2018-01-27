package hotel.management;

public class Javaclasscabbookinginformation {
	 private String drivername;
	 private int driverphone;
	 private int carno;
	 private String cartype;
	public Javaclasscabbookinginformation(String drivername, int driverphone, int carno, String cartype) {
		super();
		this.drivername = drivername;
		this.driverphone = driverphone;
		this.carno = carno;
		this.cartype = cartype;
	}
	public String getDrivername() {
		return drivername;
	}
	public void setDrivername(String dname) {
		this.drivername = dname;
	}
	public int getDriverphone() {
		return driverphone;
	}
	public void setDriverphone(int dphone) {
		this.driverphone = dphone;
	}
	public int getCarno() {
		return carno;
	}
	public void setCarno(int carno) {
		this.carno = carno;
	}
	public String getCartype() {
		return cartype;
	}
	public void setCartype(String cartype) {
		this.cartype = cartype;
	}
		
}
