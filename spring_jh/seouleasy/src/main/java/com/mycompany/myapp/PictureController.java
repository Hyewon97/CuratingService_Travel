package com.mycompany.myapp;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import dto.PictureDTO;
import service.PictureService;

//http://localhost:8090/myapp/home.do

@Controller
public class PictureController {

	private PictureService pictureService;
	
	public void setPictureService(PictureService pictureService) {
		this.pictureService = pictureService;
	}
	
    
	@RequestMapping(value="/home.do", method = RequestMethod.GET)
	public ModelAndView theme( PictureDTO pictureDTO ) {
		ModelAndView mav = new ModelAndView();
		
		//System.out.println(pictureDTO);
		if(pictureDTO.getInfo_theme()==null)
			pictureDTO.setInfo_theme("Exhibition");
		List<PictureDTO> pictureDtoList = pictureService.selectinfo_themeProcess(pictureDTO.getInfo_theme());
		mav.addObject("pictureDtoList", pictureDtoList);
		mav.setViewName("home");
		return mav;
		
	}
}
