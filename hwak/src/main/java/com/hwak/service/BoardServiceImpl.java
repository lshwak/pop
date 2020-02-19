package com.hwak.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hwak.mapper.BoardMapper;
import com.hwak.model.BoardVO;
import com.hwak.model.Criteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardMapper bm;
	
	@Transactional
	@Override
	public void boardWrite(BoardVO board) throws Exception {
		System.out.println("ServiceImpl board ... "+board.getEaddress());
		bm.boardWrite(board);
		
	}
	// 이벤트 목록
	@Override
	public List<BoardVO> boardEventPaging(Criteria cri) throws Exception {
		return bm.boardEventPaging(cri);
	}
	// boards테이블 전체 갯수
	@Override
	public int boardCount(Criteria cri) throws Exception {
		return bm.boardCount(cri);
	}
	// 행사 상세내용
	@Override
	public BoardVO boardDetail(int eno) throws Exception {
		return bm.boardDetail(eno);
	}
}	
