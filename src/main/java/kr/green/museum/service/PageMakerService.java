package kr.green.museum.service;

import kr.green.museum.pagination.Criteria;
import kr.green.museum.pagination.PageMaker;

public interface PageMakerService {
	PageMaker getPageMaker(int displayPageNum, Criteria cri, int totalCount);
}
