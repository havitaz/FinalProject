package com.kh.finalProject.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Professional;

@Repository
public class MemberDao {
	
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
		
	}
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int emailCheck(SqlSessionTemplate sqlSession, String checkEmail) {
		return sqlSession.selectOne("memberMapper.emailCheck", checkEmail);
	}
	

	public Member userInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.userInfo", m);
	}
	
	public int updateUserInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateUserInfo", m);
	}
	
	public Professional proInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.proInfo", m);
	}
	
	public int updateProInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateProInfo", m);
	}
	
	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updatePwd", m);
	}
}

