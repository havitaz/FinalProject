package com.kh.finalProject.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.finalProject.board.model.service.BoardService;
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Reply;

@Controller
public class ReplyController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "insert.re", method = RequestMethod.POST)
	public void insertReply(Reply r, HttpServletResponse response) throws IOException {
		
		
		System.out.println(r);
		
		int result = boardService.insertReply(r);
		
		if(result > 0) {
			response.getWriter().print(result);
		} else {
			System.out.println("실패실패");
		}

	}
	
	@RequestMapping(value="list.re")
	public void replyList(Board b, HttpServletResponse responsetp) {
		
		
		ArrayList<Reply> list = boardService.selectReplyList(b);
	}

}
