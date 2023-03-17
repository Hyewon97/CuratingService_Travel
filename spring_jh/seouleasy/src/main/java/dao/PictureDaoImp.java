package dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import dto.PictureDTO;


public class PictureDaoImp implements PictureDAO{
	private SqlSession sqlSession;
	
	public PictureDaoImp() {
		
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	@Override
	public List<PictureDTO> selectinfo_theme(String info_theme) {
		
		return sqlSession.selectList("picture.selectinfo_theme", info_theme);
	}
	

	
	
	
	
}

