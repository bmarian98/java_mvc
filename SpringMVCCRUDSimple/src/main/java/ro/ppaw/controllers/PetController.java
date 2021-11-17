package ro.ppaw.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ro.ppaw.beans.Pet;
import ro.ppaw.dao.PetDao;

@Controller()
public class PetController {

	@Autowired
	PetDao petDao;

	@RequestMapping("/petform")
	public String showform(Model m) {
		m.addAttribute("command", new Pet());
		return "petform";
	}

	@RequestMapping(value = "/save_pet", method = RequestMethod.POST)
	public String save(@ModelAttribute("pet") Pet pet) {
		petDao.save(pet);
		return "redirect:/list_pets";
	}

	@RequestMapping("/list_pets")
	public String list(Model m) {
		List<Pet> list = petDao.getPets();
		m.addAttribute("list", list);
		return "list_pets";
	}

	@RequestMapping(value = "/pet_details/{id}")
	public String detilas(@PathVariable int id, Model m) {
		Pet pet = petDao.getPet(id);
		m.addAttribute("command", pet);
		return "pet_details";
	}

	@RequestMapping(value = "/edit_tmp_pet/{id}")
	public String edit_tmp_pet(@PathVariable int id, Model m) {
		Pet pet = petDao.getPet(id);
		m.addAttribute("command", pet);
		return "pet_edit_form";
	}

	@RequestMapping(value = "/edit_save_pet", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("pet") Pet pet) {
		petDao.update(pet);

		return "redirect:/list_pets";
	}
}
