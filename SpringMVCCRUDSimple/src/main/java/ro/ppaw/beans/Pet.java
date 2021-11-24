package ro.ppaw.beans;

public class Pet {
	private Integer id;
	private Integer shelterId;
	private String shelter;
	private String name;
	private String dateBirth;
	private Character sex;

	public Pet() {
	}

	public Pet(Integer id, String shelter, String name, String dateBirth, Character sex) {
		super();
		this.id = id;
		this.shelter = shelter;
		this.name = name;
		this.dateBirth = dateBirth;
		this.sex = sex;
	}

	public Pet(Integer id, String shelter, String name, String dateBirth, Character sex, Integer sid) {
		super();
		this.id = id;
		this.shelter = shelter;
		this.name = name;
		this.dateBirth = dateBirth;
		this.sex = sex;
		this.shelterId = sid;
	}

	public Pet(Integer id, Integer shelterId, String name, String dateBirth, Character sex) {
		super();
		this.id = id;
		this.shelterId = shelterId;
		this.name = name;
		this.dateBirth = dateBirth;
		this.sex = sex;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getShelterId() {
		return shelterId;
	}

	public void setShelterId(Integer shelterId) {
		this.shelterId = shelterId;
	}

	public String getShelter() {
		return shelter;
	}

	public void setShelter(String shelter) {
		this.shelter = shelter;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDateBirth() {
		return dateBirth;
	}

	public void setDateBirth(String dateBirth) {
		this.dateBirth = dateBirth;
	}

	public Character getSex() {
		return sex;
	}

	public void setSex(Character sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		return "Pet [shelterId=" + shelter + ", name=" + name + ", dateBirth=" + dateBirth + ", sex=" + sex + "]";
	}

}
