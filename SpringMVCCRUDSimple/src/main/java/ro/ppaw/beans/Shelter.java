package ro.ppaw.beans;

public class Shelter {

	@Override
	public String toString() {
		return "Shelter [id=" + id + ", name=" + name + ", address=" + address + "]";
	}

	private Integer id;
	private String name;
	private String address;

	public Shelter() {
	}

	public Shelter(Integer id, String name, String address) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress() {
		return address;
	}
}
