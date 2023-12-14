package com.kh.finalProject.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalProject.common.vo.Schedule;
import com.kh.finalProject.mail.EmailCheck;
import com.kh.finalProject.member.model.dao.MemberDao;
import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Professional;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertMember(Member m) {
		return memberDao.insertMember(sqlSession, m);
	}
	
	@Override
	public Member loginMember(Member m) {
		return memberDao.loginMember(sqlSession, m);
	}

	@Override
	public Member userInfo(Member m) {
		return memberDao.userInfo(sqlSession, m);
	}

	@Override
	public int updateUserInfo(Member m) {
		return memberDao.updateUserInfo(sqlSession, m);
	}

	@Override
	public Professional proInfo(Member m) {
		return memberDao.proInfo(sqlSession, m);
	}

	@Override
	public int updateProInfo(Member m) {
		return memberDao.updateProInfo(sqlSession, m);
	} // 전문 분야 및 상세 분야 추가해야함(보류상태)

	@Override
	public int updatePwd(Member m) {
		return memberDao.updatePwd(sqlSession, m);
	}
	
	@Override
	public Member emailCheck(Member m) {
		return memberDao.emailCheck(sqlSession, m);
	}

	@Override
	public int deleteMember(Member m) {
		return memberDao.deleteMember(sqlSession, m);
	}

    @Override
    public ArrayList<Schedule> scheduleList(Schedule s) {
        ArrayList<Schedule> scheduleList = memberDao.scheduleList(sqlSession, s);
        return scheduleList;
    }

	@Override
	public int updateUserImg(String memberNo, String filePath) {
		return memberDao.updateUserImg(sqlSession, memberNo, filePath);
	}


	@Override
	public ArrayList<Schedule> scheduleSendList(Schedule s) {
		ArrayList<Schedule> scheduleSendList = memberDao.scheduleSendList(sqlSession, s);
		return scheduleSendList;
	}

	@Override
	public int requestCancel(Schedule s) {
		return memberDao.requestCancel(sqlSession, s);
	}
	
	@Override
	public ArrayList<Member> memberList(Member m) {
		ArrayList<Member> memberList = memberDao.memberList(sqlSession, m);
		return memberList;
	}
	
    @Override
    public ArrayList<Member> searchMember(String searchText) {
        return memberDao.searchMember(sqlSession, searchText);
    }

	@Override
	public int insertEmailRandomNo(EmailCheck e) {
		return memberDao.insertEmailRandomNo(sqlSession, e);
	}

	@Override
	public EmailCheck checkRandomNo(EmailCheck e) {
		return memberDao.checkRandomNo(sqlSession, e);
	}

	@Override
	public EmailCheck checkCreateDate(EmailCheck e) {
		return memberDao.checkCreateDate(sqlSession, e);
	}

}
