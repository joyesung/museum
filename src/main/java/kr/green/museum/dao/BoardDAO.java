package kr.green.museum.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.BoardVO;

public interface BoardDAO {
	public ArrayList<BoardVO> selectBoardList(@Param("cri")Criteria cri,@Param("valid")String valid);

	public int selectCountBoardList(@Param("cri")Criteria cri,@Param("valid")String valid);

	public void insertBoard(@Param("board")BoardVO board);

	public BoardVO selectBoard(@Param("num")Integer num);

	public void updateBoard(@Param("board")BoardVO board);
}