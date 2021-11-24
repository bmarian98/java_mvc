package ro.ppaw.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import ro.ppaw.beans.Pet;

public class PetDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Pet pet) {
		String sql = "INSERT INTO pet (pet_name, shelter_id, date_birth, pet_sex) VALUES('" + pet.getName() + "',"
				+ pet.getShelterId() + ", '" + pet.getDateBirth() + "', '" + pet.getSex() + "')";

		return template.update(sql);
	}

	public int update(Pet pet) {
		String sql = "UPDATE pet set pet_name='" + pet.getName() + "', shelter_id=" + pet.getShelterId()
				+ ", date_birth='" + pet.getDateBirth() + "', pet_sex='" + pet.getSex() + "' WHERE id=" + pet.getId();
		System.out.println(pet.getShelterId());
		return template.update(sql);
	}

	public Pet getPet(Integer id) {
		String sql = "SELECT p.id, shelter_name, pet_name, date_birth, pet_sex, shelter_id FROM pet p, shelter s WHERE p.shelter_id=s.id AND p.id=?";
		return template.queryForObject(sql, new Object[] { id }, (rs, rowNum) -> new Pet(rs.getInt(1), rs.getString(2),
				rs.getString(3), rs.getString(4), rs.getString(5).charAt(0), rs.getInt(6)));
	}

	public List<Pet> getPets() {
		String sql = "SELECT p.id, shelter_name, pet_name, date_birth, pet_sex, shelter_id FROM pet p, shelter s WHERE p.shelter_id=s.id";

		return template.query(sql, new RowMapper<Pet>() {
			public Pet mapRow(ResultSet rs, int rowNum) throws SQLException {
				Pet pet = new Pet();
				pet.setId(rs.getInt(1));
				pet.setShelter(rs.getString(2));
				pet.setName(rs.getString(3));
				pet.setDateBirth(rs.getString(4));
				pet.setSex(rs.getString(5).charAt(0));
				pet.setShelterId(rs.getInt(6));

				System.out.println(pet);
				return pet;
			}
		});
	}

	public int delete(Integer id) {
		String sql = "DELETE FROM pet WHERE id=" + id;
		return template.update(sql);
	}

}
