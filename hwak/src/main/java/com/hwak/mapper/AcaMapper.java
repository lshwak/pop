package com.hwak.mapper;

import java.util.List;

import com.hwak.model.AcademyVO;
import com.hwak.model.Criteria;

public interface AcaMapper {
	// 학원 목록
	public List<AcademyVO> acaPaging(Criteria cri) throws Exception;
	// 학원 전체 갯수
	public int acaCount(Criteria cri) throws Exception;
	// 학원 상세내용
	public AcademyVO acaDetail(int ano) throws Exception;
}
