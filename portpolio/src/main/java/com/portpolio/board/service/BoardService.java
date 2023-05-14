package com.portpolio.board.service;

import java.util.List;

import com.portpolio.board.controller.PageObject;
import com.portpolio.board.vo.BoardVO;

public  interface BoardService {
	
public List<BoardVO> list(PageObject pageObject);
	
	public BoardVO view(long no, int inc);
	
	public int write(BoardVO vo);
	
	public int update(BoardVO vo);
	
	public int delete(BoardVO vo);

}
