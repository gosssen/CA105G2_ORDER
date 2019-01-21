package com.goods_qa.model;

import java.util.List;
import java.sql.Timestamp;

public class GoodsQaService {
	private GoodsQaDAO_interface dao;
	public GoodsQaService() {
		dao = new GoodsQaDAO();
	}
	
	public GoodsQaVO addOrderDetail(String goods_no, String member_no, String administrator_no, String questions_content, String answer_content, Timestamp questions_date, Timestamp answer_date) {
		GoodsQaVO goodsQaVO = new GoodsQaVO();
		goodsQaVO.setGoods_no(goods_no);
		goodsQaVO.setMember_no(member_no);
		goodsQaVO.setAdministrator_no(administrator_no);
		goodsQaVO.setQuestions_content(questions_content);
		goodsQaVO.setAnswer_content(answer_content);
		goodsQaVO.setQuestions_date(questions_date);
		goodsQaVO.setAnswer_date(answer_date);

		dao.insert(goodsQaVO);
		return goodsQaVO;
	}
	
	public GoodsQaVO updateOrderDetail(String gfaq_no, String goods_no, String member_no, String administrator_no, String questions_content, String answer_content, Timestamp questions_date, Timestamp answer_date) {
		
		GoodsQaVO goodsQaVO = new GoodsQaVO();
		goodsQaVO.setGfaq_no(gfaq_no);
		goodsQaVO.setGoods_no(goods_no);
		goodsQaVO.setMember_no(member_no);
		goodsQaVO.setAdministrator_no(administrator_no);
		goodsQaVO.setQuestions_content(questions_content);
		goodsQaVO.setAnswer_content(answer_content);
		goodsQaVO.setQuestions_date(questions_date);
		goodsQaVO.setAnswer_date(answer_date);
		dao.update(goodsQaVO);
		
		return goodsQaVO;
	}
	
	public void deleteGoodsQa(String gfaq_no) {
		dao.delete(gfaq_no);
	}
	
	public GoodsQaVO getOneGoodsQa(String gfaq_no) {
		return dao.findByPrimaryKey(gfaq_no);
	}
	
	public List<GoodsQaVO> getAll() {
		return dao.getAll();
	}
	
	public List<String> getAllGoodsNo() {
		return dao.getAllGoodsNo();
	}
	
	public List<GoodsQaVO> findByGoodsNo(String goods_no) {
		return dao.findByGoodsNo(goods_no);
	}
}
