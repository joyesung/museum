package kr.green.museum.service;

import java.util.ArrayList;
import java.util.Map;

import kr.green.museum.vo.MemberVO;

import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.MemberVO;


public interface MemberService {

	public boolean signup(MemberVO mvo);

	public MemberVO signin(MemberVO mvo);//메소드 정의 새로만든거
	
	public boolean modify(MemberVO mvo,String oldPw);

	public boolean isMember(String id);

	public String getPw(Map<String, Object> paramMap);

	public String getVal(String id);

	public boolean checkMember(String id, String email);

	public String createPw();

	public void modify(String id, String email, String newPw);

	public void sendMail(String email, String title, String contents);

	public ArrayList<MemberVO> getAllMembers();

	ArrayList<MemberVO> getAllMembers(Criteria cri);

	public int getTotalCount(Criteria cri);

	public int getTotalCount();

	public void updateAuthority(MemberVO mVo);


}
