package easyusers.dto;

//로그인 성공 후 인증 상태 정보 세션에 보관
public class AuthInfo {

	private String email;
	private String easyuser_pass;
	private String nick_name;
	
	public AuthInfo() {

	}

	public AuthInfo(String email, String easyuser_pass) {
		super();
		this.email = email;
		this.easyuser_pass = easyuser_pass;

	}

	public AuthInfo(String email, String nick_name, String easyuser_pass) {
		super();
		this.email = email;
		this.easyuser_pass = easyuser_pass;
		this.nick_name = nick_name;
		this.easyuser_pass = easyuser_pass;
	}
	
	public String getEmail() {
		return email;
	}

	public String getEasyuser_pass() {
		return easyuser_pass;
	}

	public String getEasyuser_name() {
		return nick_name;
	}
	
	
}
