package com.mandi.controller;

import com.mandi.AllFarmer.orm.dao.FarmerDao;
import com.mandi.AllFarmer.orm.entities.Farmer;
import com.mandi.AllTrader.orm.dao.MspListDao;
import com.mandi.AllTrader.orm.dao.TraderDao;
import com.mandi.AllTrader.orm.entities.MspList;
import com.mandi.AllTrader.orm.entities.Trader;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@Autowired
	private FarmerDao farmerDao;

	@Autowired
	private TraderDao traderDao;
	@Autowired	
	private MspListDao mspListDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/loginfarmer", method = RequestMethod.GET)
	public String loginfarmer() {
		return "farmer/login_farmer";
	}

	@RequestMapping(value = "/logintrader", method = RequestMethod.GET)
	public String logintrader() {
		return "trader/login_trader";
	}

	@RequestMapping(value = "/mainFarmer", method = RequestMethod.POST)
	public ModelAndView formfarmer(@ModelAttribute Farmer farmer,Model model) {
		ArrayList<MspList> list = (ArrayList<MspList>) mspListDao.mspList();
		farmerDao.createFarmer(farmer);
		model.addAttribute("msp", list);
		return new ModelAndView("farmer/mainfarmer");
	}

	@RequestMapping(value = "/mainfarmer", method = RequestMethod.GET)
	public ModelAndView closeAddProduct(@ModelAttribute Farmer farmer,Model model) {
		ArrayList<MspList> list = (ArrayList<MspList>) mspListDao.mspList();
		model.addAttribute("msp", list);
		ModelAndView m = new ModelAndView("farmer/mainfarmer");
		return m;
	}

	@RequestMapping(value = "/mainTrader", method = RequestMethod.POST)
	public ModelAndView formtrader(@ModelAttribute Trader trader,Model model) {
		ArrayList<MspList> list = (ArrayList<MspList>) mspListDao.mspList();
		traderDao.createTrader(trader);
		model.addAttribute("msp", list);
		return new ModelAndView("trader/maintrader");
	}

	// Checks if the user credentials are valid or not.
	@RequestMapping(value = "/validatefarmer", method = RequestMethod.POST)
	public ModelAndView validatefarmer(@RequestParam("mobileNo") long mobileno,
			@RequestParam("password") String password, HttpSession session, ModelMap modelMap,Model model) {
		boolean isValid = farmerDao.farmerValidate(mobileno, password);
		ArrayList<MspList> list = (ArrayList<MspList>) mspListDao.mspList();
		if (isValid) {
			model.addAttribute("msp", list);
			session.setAttribute("mobileno", mobileno);
			ModelAndView modelAndView = new ModelAndView("farmer/mainfarmer");
			return modelAndView;
		} else {
			modelMap.put("error", "Invalid Account");
			ModelAndView modelAndView = new ModelAndView("farmer/login_farmer");
			return modelAndView;
		}
	}

	@RequestMapping(value = "/logoutfarmer", method = RequestMethod.GET)
	public String farmerlogout(HttpSession session) {
		session.removeAttribute("mobileno");
		session.invalidate();
		return "farmer/login_farmer";
	}

	// Checks if the user credentials are valid or not.
	@RequestMapping(value = "/validatetrader", method = RequestMethod.POST)
	public ModelAndView validatetrader(@RequestParam("mobileNo") long mobileno,
			@RequestParam("password") String password, HttpSession session, ModelMap modelMap,Model model) {

		boolean isValid = traderDao.traderValidate(mobileno, password);
		ArrayList<MspList> list = (ArrayList<MspList>) mspListDao.mspList();
		if (isValid) {
			model.addAttribute("msp", list);
			session.setAttribute("mobileno", mobileno);
			ModelAndView modelAndView = new ModelAndView("trader/maintrader");
			return modelAndView;
		} else {
			modelMap.put("error", "Invalid Account");
			ModelAndView modelAndView = new ModelAndView("trader/login_trader");
			return modelAndView;
		}
	}

	@RequestMapping(value = "/logouttrader", method = RequestMethod.GET)
	public String traderlogout(HttpSession session) {
		session.removeAttribute("mobileno");
		session.invalidate();
		return "trader/login_trader";
	}

}
