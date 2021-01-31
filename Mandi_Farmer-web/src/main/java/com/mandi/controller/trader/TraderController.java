package com.mandi.controller.trader;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mandi.AllFarmer.orm.entities.AddCrop;
import com.mandi.AllTrader.orm.dao.TraderDao;

@Controller
public class TraderController {

	@Autowired
	private TraderDao traderDao;

	@RequestMapping(value = "/searchcrop")
	public String searchCrop(@RequestParam("cropName") String cropName, Model model) throws Exception {
		ArrayList<AddCrop> crop = (ArrayList<AddCrop>) traderDao.searchCrop(cropName);
		model.addAttribute("crop", crop);
		return "trader/searchcrop/searchcrop";
	}
}
