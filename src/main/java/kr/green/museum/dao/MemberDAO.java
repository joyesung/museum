package kr.green.museum.dao;

import java.util.ArrayList;

import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.MemberVO;

public interface MemberDAO {
	MemberVO getMember(String id);

	void signup(MemberVO mvo);
	
	void signin(MemberVO mvo);//signin을 추가

	void modify(MemberVO mvo);
	void newPassword(MemberVO memberVO) throws Exception;

	ArrayList<MemberVO> getAllMember(Criteria cri);

	int getTotalCount();

	void updateAuthority(MemberVO mVo);
}
