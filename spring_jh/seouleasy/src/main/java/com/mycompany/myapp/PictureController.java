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
	
	
	
//	@RequestMapping(value="/home.do", method = RequestMethod.GET)
//    public ModelAndView select(HttpServletRequest request, HttpServletResponse response) {
//		ModelAndView mav = new ModelAndView();
//		List<PictureDTO> list = pictureService.selectinfoProcess();
//		
//		String pic_name = request.getParameter("pic_name");
//		String info_title = request.getParameter("info_title");
//		String info_theme = request.getParameter("info_theme");
//		
//		PictureDTO pictureDto = new PictureDTO(pic_name, info_title, info_theme);
//		
//		mav.addObject("pic_name", pic_name);
//		mav.addObject("info_title", info_title);
//		mav.addObject("info_theme", info_theme);
//		
//		
//		mav.setViewName("select");
//		return mav;
//   
//    }
    
	@RequestMapping(value="/home.do", method = RequestMethod.GET)
	public ModelAndView theme( PictureDTO pictureDTO ) {
		ModelAndView mav = new ModelAndView();
		
		if(pictureDTO.getInfo_theme()==null)
			pictureDTO.setInfo_theme("History");
		List<PictureDTO> pictureDtoList = pictureService.selectinfo_themeProcess(pictureDTO.getInfo_theme());
		mav.addObject("pictureDtoList", pictureDtoList);
		mav.setViewName("home");
		return mav;
		
	}
}
