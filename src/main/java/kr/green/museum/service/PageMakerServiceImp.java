package kr.green.museum.service;

import kr.green.museum.service.PageMakerService;
import kr.green.museum.pagination.Criteria;
import kr.green.museum.pagination.PageMaker;

public class PageMakerServiceImp implements PageMakerService {
	@Override
	public PageMaker getPageMaker(int displayPageNum, Criteria cri, int totalCount) {
		PageMaker pm = new PageMaker();
		//pm 현재 페이지 정보 설정
		pm.setCriteria(cri);
		pm.setDisplayPageNum(displayPageNum);
		//pm의 총 게시글 수 설정
		pm.setTotalCount(totalCount);
		return pm;
	}
}
