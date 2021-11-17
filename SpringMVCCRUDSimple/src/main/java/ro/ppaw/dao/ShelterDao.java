package ro.ppaw.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import ro.ppaw.beans.Shelter;

public class ShelterDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Shelter shelter) {
		String sql = "INSERT INTO shelter VALUES (" + shelter.getId() + ", '" + shelter.getName() + "', '"
				+ shelter.getAddress() + "')";
		System.out.println("upodate: " + sql);
		return template.update(sql);
	}

	public int update(Shelter shelter) {
		String sql = "UPDATE shelter SET shelter_name='" + shelter.getName() + "', adress='" + shelter.getAddress()
				+ "' where id=" + shelter.getId();
		return template.update(sql);
	}

	public int delete(Integer id) {
		String sql = "DELETE FROM shelter WHERE id=" + id;
		return template.update(sql);
	}

	public Shelter getShelter(Integer id) {
		String sql = "SELECT * FROM shelter WHERE id= ?";
		return template.queryForObject(sql, new Object[] { id },
				(rs, rowNum) -> new Shelter(rs.getInt("id"), rs.getString("shelter_name"), rs.getString("adress")));
	}

	public List<Shelter> getShelters() {
		return template.query("SELECT * FROM shelter", new RowMapper<Shelter>() {
			public Shelter mapRow(ResultSet rs, int row) throws SQLException {
				Shelter shelter = new Shelter();
				shelter.setId(rs.getInt(1));
				shelter.setName(rs.getString(2));
				shelter.setAddress(rs.getString(3));
				return shelter;
			}
		});
	}
}
