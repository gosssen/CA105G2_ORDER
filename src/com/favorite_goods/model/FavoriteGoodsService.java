package com.favorite_goods.model;

import java.util.List;

public class FavoriteGoodsService {
	
	private FavoriteGoodsDAO_interface dao;
	public FavoriteGoodsService() {
		dao = new FavoriteGoodsDAO();
	}
	
	public FavoriteGoodsVO addFavoriteGoods(String member_no, String goods_no) {
		FavoriteGoodsVO favoriteGoodsVO = new FavoriteGoodsVO();
		
		favoriteGoodsVO.setMember_no(member_no);
		favoriteGoodsVO.setGoods_no(goods_no);
		dao.insert(favoriteGoodsVO);
		
		return favoriteGoodsVO;
	}
	
	public FavoriteGoodsVO updateFavoriteGoods(String member_no, String goods_no) {
		FavoriteGoodsVO favoriteGoodsVO = new FavoriteGoodsVO();
		
		favoriteGoodsVO.setMember_no(member_no);
		favoriteGoodsVO.setGoods_no(goods_no);
		dao.insert(favoriteGoodsVO);
		
		return favoriteGoodsVO;
	}
	
	public void deleteFavoriteGoods(String member_no, String goods_no) {
		dao.delete(member_no, goods_no);
	}
	
	public FavoriteGoodsVO getOneFavoriteGoods(String member_no) {
		return dao.findByPrimaryKey(member_no);
	}
	
	public List<FavoriteGoodsVO> getAll() {
		return dao.getAll();
	}
	
	public List<String> getAllMemberNo() {
		return dao.getAllMemberNo();
	}
	
	public List<FavoriteGoodsVO> findByMemberNo(String member_no) {
		return dao.findByMemberNo(member_no);
	}
}
