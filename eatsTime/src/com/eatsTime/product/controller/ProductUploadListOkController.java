package com.eatsTime.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.product.dao.ProductDAO;
import com.eatsTime.product.domain.ProductListDTO;

public class ProductUploadListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        
		
		ProductDAO productDAO = new ProductDAO();
		ProductListDTO productListDTO = new ProductListDTO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		productDAO.selectUploadListAll().stream().map(product -> new JSONObject(product)).forEach(jsonArray::put);
		
		req.setAttribute("productUploadList", jsonArray.toString());
		result.setPath("templates/member/seller_list.jsp");
		return result;
	}

}
