package com.mandi.controller.viewcrop;

import java.util.ArrayList;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mandi.AllFarmer.orm.dao.addcrop.AddCropDao;
import com.mandi.AllFarmer.orm.entities.AddCrop;

 @Controller
public class ViewCropControlller {

	@Autowired
	private AddCropDao addCropDao;

	@RequestMapping(value = "/viewcrop")
	public String listStudent(Model model) {
		ArrayList<AddCrop> list = (ArrayList<AddCrop>) addCropDao.viewAllCrop();
		model.addAttribute("crop", list);
		return "farmer/display/displaycrop";
	}

	@RequestMapping(value = "/getPhoto/{id}")
	public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") Integer id) throws Exception {
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		System.out.println("The id is : " + id);
		AddCrop item = addCropDao.getImage(id);
		response.getOutputStream().write(item.getImage());
		response.getOutputStream().close();
	}

	@RequestMapping(value = "/deletecrop/{id}")
	public String deleteCrop(@PathVariable("id") Integer id, HttpSession session, ModelMap modelMap) throws Exception {
		boolean status = false;
		status = addCropDao.deleteCrop(id);
		if (status) {
			modelMap.put("Success", "User Deleted Successfully");
			return "redirect:/viewcrop";
		} else {
			modelMap.put("error", "Crop Not Deleted");
			return "redirect:/viewcrop";
		}
	}

	@RequestMapping(value = "/editcropbyid/{id}")
	public ModelAndView  edit(@PathVariable("id") Integer id, Model m) {
		 ModelAndView mav = new ModelAndView("farmer/display/editcrop");
		AddCrop crop = new AddCrop();
		crop =addCropDao.getCropById(id);
		mav.addObject("command", crop);
		return mav;
	}

	/* It updates model object. */
	@RequestMapping(value = "/updatecrop", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("crop") AddCrop updatecrop,@RequestParam("id") int id) {
		System.out.println("the id is: "+ id);
		addCropDao.updateCrop(updatecrop,id);
		return "redirect:/viewcrop";
	}
}
