package kr.green.museum.service;



import java.util.ArrayList;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.museum.dao.MemberDAO;
import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	MemberDAO memberdao;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private JavaMailSender mailSender;

	
	
	
	@Override
	public boolean signup(MemberVO mvo) {
		// 기존에 해당 아이디가 있는지 체크
		// 있으면 false 반환하고 종료
		// 없으면 회원가입 진행
		if(mvo == null)
			return false;
		mvo.setName("");
		if(memberdao.getMember(mvo.getId()) !=null)
			return false;
		//회원가입창엣거 입력받은 암호를 암호화 시킴
		String encodePw = passwordEncoder.encode(mvo.getPw());
		//회원 정보의 비밀번호를 암호화된 비밀번호로 변경
		mvo.setPw(encodePw);
		memberdao.signup(mvo);
		return true;
	}
	@Override
	public MemberVO signin(MemberVO mvo) {
		if(mvo == null)//예외처리
			return null;
		MemberVO ovo = memberdao.getMember(mvo.getId());//아이디 값을 저장
		if(ovo == null)
			return null;
		if(passwordEncoder.matches(mvo.getPw(), ovo.getPw()))//equals를통해 값을 비교해 같은지 다른지 확인한다
			return ovo;
		return null;
		
	}
	@Override
	public boolean modify(MemberVO mvo, String oldPw) {
		if(mvo == null)//예외처리
			return false;
			MemberVO oVo = memberdao.getMember(mvo.getId());	//mvo 객체 정보를 가져오고
			if(passwordEncoder.matches(oldPw, oVo.getPw())){	//현재 비밀번호와 회원정보 비밀번호가 같다면
				mvo.setPw(passwordEncoder.encode(mvo.getPw()));	//수정 회원 정보 객체에 저장하고
				memberdao.modify(mvo);	//DB를 수정
				return true;
			}				
		return false;
	}
	@Override
	public boolean isMember(String id) {
		if(memberdao.getMember(id) == null){
			return false;
		}
		return true;
	}
	@Override
	public String getPw(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getVal(String id) {
		String [] arr = id.split("=");
		if(arr.length == 2)
			return arr[1];
		else
			return "";
	}
	@Override
	public boolean checkMember(String id, String email) {
		MemberVO user = memberdao.getMember(id);
		if(user != null && user.getEmail().equals(email)) {
			return true;
		}
		return false;
	}
	@Override
	public String createPw() {
		String str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String pw="";
		for(int i=0; i<8; i++) {
			int r = (int)(Math.random()*62);
			pw += str.charAt(r);
		}
		return pw;
	}
	@Override
	public void modify(String id, String email, String newPw) {
		MemberVO user = memberdao.getMember(id);
		if(user == null) return;
		if(!user.getEmail().equals(email)) return;
		String encodePw = passwordEncoder.encode(newPw);
		user.setPw(encodePw);
		memberdao.modify(user);
		
	}
	@Override
	public void sendMail(String email, String title, String contents ) {

	    String setfrom = "joyesung@naver.com";         
	    String tomail  = email;     // 받는 사람 이메일
	     
	    try {
	        MimeMessage message = mailSender.createMimeMessage();
	        MimeMessageHelper messageHelper 
	            = new MimeMessageHelper(message, true, "UTF-8");

	        messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
	        messageHelper.setTo(email);     // 받는사람 이메일
	        messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	        messageHelper.setText(contents);  // 메일 내용

	        mailSender.send(message);
	    } catch(Exception e){
	        System.out.println(e);
	    }
		
	}
	@Override
	public ArrayList<MemberVO> getAllMembers(Criteria cri) {
		// TODO Auto-generated method stub
		return memberdao.getAllMember(cri);
	}
	@Override
	public ArrayList<MemberVO> getAllMembers() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return memberdao.getTotalCount();
	}
	@Override
	public void updateAuthority(MemberVO mVo) {
		memberdao.updateAuthority(mVo);
		
	}
	
	
		
}


