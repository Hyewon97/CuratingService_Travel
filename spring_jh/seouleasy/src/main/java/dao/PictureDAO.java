package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.PictureDTO;

public interface PictureDAO {
	
	public List<PictureDTO> selectinfo_theme(String info_theme);
   
}
