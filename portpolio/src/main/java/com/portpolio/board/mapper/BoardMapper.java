package com.portpolio.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.portpolio.board.controller.PageObject;
import com.portpolio.board.vo.BoardVO;


@Mapper
public interface BoardMapper {
public List<BoardVO> list(PageObject pageObject);
	
	public long getTotalRow(PageObject pageObject);
	
	public BoardVO view(long no);
	
	public int increase(long no);
	
	public int write(BoardVO vo);
	
	public int update(BoardVO vo);
	
	public int delete(BoardVO vo);
}
