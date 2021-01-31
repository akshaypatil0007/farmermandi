package com.mandi.controller.addcrop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mandi.AllFarmer.orm.dao.addcrop.AddCropDao;
import com.mandi.AllFarmer.orm.entities.AddCrop;

@Controller
public class AddCropContoller {

	@Autowired
	private AddCropDao addCropDao;

	@RequestMapping(value = "/addcrop", method = RequestMethod.GET)
	public String addCrop() {
		return "farmer/product/addcrop";
	}

	@RequestMapping(value = "/savecrop", method = RequestMethod.POST)
	public ModelAndView saveCrop(@ModelAttribute AddCrop addCrop, @RequestParam("file") MultipartFile multipartImage)
			throws Exception {
		addCrop.setImage(multipartImage.getBytes());
		addCropDao.addCropDao(addCrop);
		return new ModelAndView("redirect:/mainfarmer");
	}
}
