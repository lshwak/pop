package com.hwak.mapper;

import java.util.List;

import com.hwak.model.BoardVO;
import com.hwak.model.Criteria;

public interface BoardMapper {
	// 행사등록
	public void boardWrite(BoardVO board) throws Exception;
	// 이벤트 목록
	public List<BoardVO> boardEventPaging(Criteria cri) throws Exception;
	// boards테이블 전체 갯수
	public int boardCount(Criteria cri) throws Exception;
	// 행사 상세내용
	public BoardVO boardDetail(int eno) throws Exception;
	// 행사 수정
	public void boardModify(BoardVO board) throws Exception;
	// 행사 삭제
	public void boardDelete(BoardVO board) throws Exception;
}
