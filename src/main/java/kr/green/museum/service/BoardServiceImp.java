package kr.green.museum.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.museum.dao.BoardDAO;
import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.BoardVO;
import kr.green.museum.vo.MemberVO;

@Service
public class BoardServiceImp implements BoardService {
	@Autowired
	BoardDAO boardDao;
	
	@Override
	public ArrayList<BoardVO> getBoardList(Criteria cri, String valid) {
		return boardDao.selectBoardList(cri,valid);
	}

	@Override
	public int getTotalCount(Criteria cri, String valid) {
		return boardDao.selectCountBoardList(cri,valid);
	}

	@Override
	public void registerBoard(BoardVO bVo) {
		boardDao.insertBoard(bVo);
	}

	@Override
	public BoardVO getBoard(Integer viewnum) {
		return boardDao.selectBoard(viewnum);
	}

	@Override
	public void modifyBoard(BoardVO board) {
		BoardVO tmp = boardDao.selectBoard(board.getViewnum());
		board.setValid(tmp.getValid());
		board.setViews(tmp.getViews());
		boardDao.updateBoard(board);
	}

	@Override
	public boolean isWriter(Integer viewnum, HttpServletRequest r) {
		BoardVO board = boardDao.selectBoard(viewnum);
		MemberVO user = (MemberVO)(r.getSession().getAttribute("user"));
		if(board != null && board.getWriter().equals(user.getId())) {
			return true;
		}
		return false;
	}

	@Override
	public void deleteBoard(Integer viewnum) {
		BoardVO board = boardDao.selectBoard(viewnum);
		if(board == null)
			return;
		board.setValid("D");
		boardDao.updateBoard(board);
	}

	@Override
	public BoardVO increaseViews(BoardVO board) {
		int views = board.getViews();
		board.setViews(views+1);
		boardDao.updateBoard(board);
		return board;
	}

}