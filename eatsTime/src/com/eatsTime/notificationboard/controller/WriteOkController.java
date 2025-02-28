package com.eatsTime.notificationboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.notificationboard.dao.NotificationBoardDAO;
import com.eatsTime.notificationboard.domain.NotificationBoardVO;

public class WriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("writeOkController 들어옴");
		NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
		NotificationBoardVO notificationBoardVO = new NotificationBoardVO();
		Result result = new Result();
		
//		HttpSession session = req.getSession();
		
		String notbTitle = req.getParameter("notbTitle");
		String notbContent = req.getParameter("notbContent");
		System.out.println(notbTitle);
		System.out.println(notbContent);
		
		notificationBoardVO.setNotbTitle(notbTitle);
		notificationBoardVO.setNotbContent(notbContent);
//		notificationBoardVO.setMemberId((Long)session.getAttribute("memberId"));
		
		notificationBoardDAO.insert(notificationBoardVO);		
		result.setPath(req.getContextPath() + "/listOk.notificationboard");
		result.setRedirect(true);
		
		return result;
	}

}
