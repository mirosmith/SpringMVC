package myPackage;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseController {

	@RequestMapping("/hello")	
	public ModelAndView helloWorld(@ModelAttribute("info") Information userInfo){
		 
		ModelAndView model = new ModelAndView("hello");		
		model.addObject("firstName",userInfo.getFirstName());
		model.addObject("lastName",userInfo.getLastName());
		model.addObject("gender",userInfo.getGender());
		model.addObject("country",userInfo.getCountry());
		model.addObject("visitedCountry", userInfo.getVisited());
		
		return model;
	}
	
	@RequestMapping("/")	
	public ModelAndView homepage(){
		ModelAndView model2 = new ModelAndView("index","info", new Information());
		
		Map<String, String> radioMap = new HashMap<>();
		radioMap.put("Muz", "Male");
		radioMap.put("Zena", "Female");
		model2.addObject("radiomapa", radioMap);
		
		Map<String, String> selectMap = new HashMap<>();
		selectMap.put("Ceska republika", "Czechia");
		selectMap.put("Australia", "Australia");
		selectMap.put("Spanelsko", "Spain");
		model2.addObject("selectmapa", selectMap);
		
		String str = model2.toString();		
		model2.addObject("str", str);		
		
	return model2;
	}
}

/*
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseController {
	
	/*
	@RequestMapping("/hello")		
	public ModelAndView helloWorld(@RequestParam("jmeno") String name) {	
		
		//model.addAttribute("formName", name);
		
		List<String> list = createList();
		
		ModelAndView modelview = new ModelAndView("hello");
		modelview.addObject("forName",name);
		modelview.addObject("seznam", list);
		
		return modelview;
	}
	
	
	@RequestMapping("/hello")		
	public ModelAndView helloWorld(@RequestAttribute("info") Information in) {
		
		ModelAndView modelview = new ModelAndView("hello");
		modelview.addObject("jmeno", info.getFirstName());
		modelview.addObject("prijmeni",info.getLastName());
		return modelview;
	}
	
	@RequestMapping("/")
	public ModelAndView index() {
		
		ModelAndView modelV = new ModelAndView("index", "info", new Information());
		
		return modelV;
		
	}
	
	public List<String> createList() {
		List<String> list = new ArrayList<>();
		list.add("Miriam");
		list.add("Vlasta");
		list.add("Kocian");
		list.add("Iridescent");
		return list;
	}

}
*/