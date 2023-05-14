package com.portpolio.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portpolio.board.controller.PageObject;
import com.portpolio.board.mapper.BoardMapper;
import com.portpolio.board.vo.BoardVO;

import lombok.Setter;



@Repository
public class BoardServiceImpl implements BoardService{

	@Setter(onMethod_=@Autowired)
	private BoardMapper mapper;
	
	public List<BoardVO> list(PageObject pageObject){
		pageObject.setTotalRow(mapper.getTotalRow(pageObject));
		return mapper.list(pageObject);
	}
	
	@Override
	public BoardVO view(long no, int inc){
		if(inc == 1)
			mapper.increase(no);
		return mapper.view(no);
	}
	
	@Override
	public int write(BoardVO vo){
		return mapper.write(vo);
	}
	
	@Override
	public int update(BoardVO vo){
		return mapper.update(vo);
	}
	
	@Override
	public int delete(BoardVO vo){
		return mapper.delete(vo);
	}

	
}
