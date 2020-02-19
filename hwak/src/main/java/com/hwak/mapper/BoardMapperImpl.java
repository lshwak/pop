package com.hwak.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hwak.model.BoardVO;
import com.hwak.model.Criteria;

@Repository
public class BoardMapperImpl implements BoardMapper {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.hwak.mapper.BoardMapper";
	
	
	// 행사등록
	@Override
	public void boardWrite(BoardVO board) throws Exception {
		System.out.println(" ㄹㄹboard : "+board);
		System.out.println(" ㄹㄹboard : "+board.getEaddress());
		sqlSession.insert(namespace+".boardWrite",board);
	}
	// 이벤트 목록
	@Override
	public List<BoardVO> boardEventPaging(Criteria cri) throws Exception {
		List list = sqlSession.selectList(namespace+".boardEventPage",cri);
		return list;
	}
	// boards 테이블 전체 갯수
	public int boardCount(Criteria cri) throws Exception {
		int cnt = sqlSession.selectOne(namespace+".boardCount",cri);
		return cnt;
	}
	// 행사 상세내용
	@Override
	public BoardVO boardDetail(int eno) throws Exception {
		BoardVO boardvo = sqlSession.selectOne(namespace+".boardDetail",eno);
		return boardvo;
	}
	// 행사 수정
	@Override
	public void boardModify(BoardVO board) throws Exception {
		sqlSession.update(namespace+".boardModify",board);
	}
	// 행사 삭제
	@Override
	public void boardDelete(BoardVO board) throws Exception {
		sqlSession.update(namespace+".boardDelete",board);
	}
	
}
