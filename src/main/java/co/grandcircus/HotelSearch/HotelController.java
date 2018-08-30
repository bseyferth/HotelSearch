package co.grandcircus.HotelSearch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.HotelSearch.dao.HotelDao;

@Controller
public class HotelController {
	
	
	@Autowired
	private HotelDao hotelDao;
	
	
	@RequestMapping("/")
	public ModelAndView viewHome() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	@PostMapping("/results")
	public ModelAndView resultsByCity(@RequestParam("city")String city) {
		ModelAndView mav = new ModelAndView("results");
		mav.addObject("list", hotelDao.findByCity(city));
		return mav;
	}
	

}
