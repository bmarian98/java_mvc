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
		String sql = "INSERT INTO pet VALUES(" + pet.getId() + ", '" + pet.getName() + "'," + pet.getShelterId() + ", '"
				+ pet.getDateBirth() + "', '" + pet.getSex() + "')";

		return template.update(sql);
	}

	public int update(Pet pet) {
		String sql = "UPDATE pet set pet_name='" + pet.getName() + "', shelter_id=" + pet.getShelterId()
				+ ", date_birth='" + pet.getDateBirth() + "', pet_sex='" + pet.getSex() + "' WHERE id=" + pet.getId();
		System.out.println(sql);
		return template.update(sql);
	}

	public Pet getPet(Integer id) {
		String sql = "SELECT * FROM pet WHERE id=?";
		return template.queryForObject(sql, new Object[] { id },
				(rs, rowNum) -> new Pet(rs.getInt("id"), rs.getInt("shelter_id"), rs.getString("pet_name"),
						rs.getString("date_birth"), rs.getString("pet_sex").charAt(0)));
	}

	public List<Pet> getPets() {
		return template.query("SELECT * FROM pet", new RowMapper<Pet>() {
			public Pet mapRow(ResultSet rs, int rowNum) throws SQLException {
				Pet pet = new Pet();

				pet.setId(rs.getInt(1));
				pet.setName(rs.getString(2));
				pet.setShelterId(rs.getInt(3));
				pet.setDateBirth(rs.getString(4));
				pet.setSex(rs.getString(5).charAt(0));

				return pet;
			}
		});
	}

	public int delete(Integer id) {
		String sql = "DELETE FROM pet WHERE id=" + id;
		return template.update(sql);
	}

}
