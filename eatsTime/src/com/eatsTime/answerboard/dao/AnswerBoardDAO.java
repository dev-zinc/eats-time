package com.eatsTime.answerboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.answerboard.domain.AnswerBoardDTO;
import com.eatsTime.answerboard.domain.AnswerBoardVO;
import com.eatsTime.inquiryboard.domain.InquiryBoardDTO;
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class AnswerBoardDAO {
	public SqlSession sqlSession;

	public AnswerBoardDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

//	전체 게시글 개수 조회
	public int getTotal() {
		return sqlSession.selectOne("answerboard.getTotal");
	}
	
//	게시글 전체 조회
	public List<AnswerBoardDTO> selectAll(HashMap<String, Object> pagable){
		System.out.println("boardDao 들어옴");
		 return sqlSession.selectList("answerboard.selectAll", pagable);
	}
	
//	게시글 상세 조회
	public AnswerBoardDTO select(Long InqbId) {
		return sqlSession.selectOne("answerboard.select");
	}
	
//	전체 게시글 리스트에서 게시글 삭제
	public void delete(Long InqbId) {
		System.out.println("AnswerBoardDao 들어옴");
		sqlSession.delete("answerboard.delete", InqbId);
	}
}