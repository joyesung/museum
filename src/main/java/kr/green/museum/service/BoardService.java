package kr.green.museum.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.BoardVO;

public interface BoardService {
	public ArrayList<BoardVO> getBoardList(Criteria cri,String valid);

	public int getTotalCount(Criteria cri, String valid);

	public void registerBoard(BoardVO bVo);

	public BoardVO getBoard(Integer num);

	public void modifyBoard(BoardVO bVo);

	public boolean isWriter(Integer num, HttpServletRequest r);

	public void deleteBoard(Integer num);

	public BoardVO increaseViews(BoardVO board);
}