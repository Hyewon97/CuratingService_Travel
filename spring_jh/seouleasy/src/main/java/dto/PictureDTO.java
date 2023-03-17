package dto;

public class PictureDTO {
     private String pic_name;
     private String info_title;
     private String info_theme;
     
     public PictureDTO() {
		
	}

	
     
	public PictureDTO(String pic_name, String info_title, String info_theme) {
		this.pic_name = pic_name;
		this.info_title = info_title;
		this.info_theme = info_theme;
	}



	public String getPic_name() {
		return pic_name;
	}

	public void setPic_name(String pic_name) {
		this.pic_name = pic_name;
	}

	public String getInfo_title() {
		return info_title;
	}

	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}

	public String getInfo_theme() {
		return info_theme;
	}
	
	public void setInfo_theme(String info_theme) {
		this.info_theme = info_theme;
	}
     
     
}
