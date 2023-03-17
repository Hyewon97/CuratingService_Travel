package service;

import java.util.List;

import dao.PictureDAO;
import dto.PictureDTO;

public class PictureServiceImp implements PictureService {
    private PictureDAO pictureDao;
	
	public void setPictureDao(PictureDAO pictureDao) {
		this.pictureDao = pictureDao;
	}



	@Override
	public List<PictureDTO> selectinfo_themeProcess(String info_theme) {
		List<PictureDTO> pictureDtoList = pictureDao.selectinfo_theme(info_theme);
		return pictureDtoList;
	}
    
	
	
	
}
