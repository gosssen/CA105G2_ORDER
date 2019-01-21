package com.goods_qa.model;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.order_history.model.OrderHistoryVO;

public class GoodsQaDAO implements GoodsQaDAO_interface {
	
	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup(com.utility.Util.JNDI_DATABASE_NAME);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String INSERT_STMT = 
		"INSERT INTO GOODS_QA (GFAQ_NO, GOODS_NO, MEMBER_NO, ADMINSTRATOR_NO, QUESTIONS_CONTENT, ANSWER_CONTENT, QUESTIONS_DATE, ANSWER_DATE) "
		+ "VALUES ('GF'||LPAD(TO_CHAR(GOODS_QA_SEQ.NEXTVAL),7,'0'), ?, ?, ?, ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = 
		"SELECT GOODS_NO, MEMBER_NO, ADMINSTRATOR_NO, QUESTIONS_CONTENT, ANSWER_CONTENT, QUESTIONS_DATE, ANSWER_CONTENT FROM GOODS_QA ORDER BY GFAQ_NO";
	private static final String GET_ONE_STMT = 
		"SELECT GOODS_NO, MEMBER_NO, ADMINSTRATOR_NO, QUESTIONS_CONTENT, ANSWER_CONTENT, QUESTIONS_DATE, ANSWER_CONTENT FROM GOODS_QA WHERE GFAQ_NO = ?";
	private static final String DELETE = 
		"DELETE FROM GOODS_QA WHERE GFAQ_NO = ?";
	private static final String UPDATE =
		"UPDATE GOODS_QA SET GOODS_NO=?, MEMBER_NO=?, ADMINSTRATOR_NO=?, QUESTIONS_CONTENT=?, ANSWER_CONTENT=?, QUESTIONS_DATE=?, ANSWER_CONTENT=? WHERE GFAQ_NO = ?";
	private static final String GET_ALL_GOODSNO = 
		"SELECT DISTINCT GOODS_NO FROM GOODS_QA ORDER BY GOODS_NO";
	private static final String GET_ONE_GOODSNO = 
		"SELECT * FROM GOODS_QA WHERE GOODS_NO = ?";
	
	
	@Override
	public void insert(GoodsQaVO goodsQaVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt.setString(1, goodsQaVO.getGoods_no());
			pstmt.setString(2, goodsQaVO.getMember_no());
			pstmt.setString(3, goodsQaVO.getAdministrator_no());
			pstmt.setString(4, goodsQaVO.getQuestions_content());
			pstmt.setString(5, goodsQaVO.getAnswer_content());
			pstmt.setTimestamp(6, goodsQaVO.getQuestions_date());
			pstmt.setTimestamp(7, goodsQaVO.getAnswer_date());
			pstmt.executeUpdate();

		} catch (SQLException se) {
			throw new RuntimeException("資料庫錯誤。" + se.getMessage());
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
	}

	@Override
	public void update(GoodsQaVO goodsQaVO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE);
			pstmt.setString(1, goodsQaVO.getGoods_no());
			pstmt.setString(2, goodsQaVO.getMember_no());
			pstmt.setString(3, goodsQaVO.getAdministrator_no());
			pstmt.setString(4, goodsQaVO.getQuestions_content());
			pstmt.setString(5, goodsQaVO.getAnswer_content());
			pstmt.setTimestamp(6, goodsQaVO.getQuestions_date());
			pstmt.setTimestamp(7, goodsQaVO.getAnswer_date());
			pstmt.setString(8, goodsQaVO.getGfaq_no());
			pstmt.executeUpdate();

		} catch (SQLException se) {
			throw new RuntimeException("資料庫錯誤。" + se.getMessage());
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

	}

	@Override
	public void delete(String gfaq_no) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(DELETE);
			pstmt.setString(1, gfaq_no);
			pstmt.executeUpdate();
		} catch (SQLException se) {
			throw new RuntimeException("資料庫錯誤。" + se.getMessage());
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
	}

	@Override
	public GoodsQaVO findByPrimaryKey(String gfaq_no) {
		GoodsQaVO goodsQaVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);
			pstmt.setString(1, gfaq_no);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				goodsQaVO = new GoodsQaVO();
				goodsQaVO.setGfaq_no(rs.getString("GFAQ_NO"));
				goodsQaVO.setGoods_no(rs.getString("GOODS_NO"));
				goodsQaVO.setMember_no(rs.getString("MEMBER_NO"));
				goodsQaVO.setAdministrator_no(rs.getString("ADMINISTRATOR_NO"));
				goodsQaVO.setQuestions_content(rs.getString("QUESTIONS_CONTENT"));
				goodsQaVO.setAnswer_content(rs.getString("ANSWER_CONTENT"));
				goodsQaVO.setQuestions_date(rs.getTimestamp("QUESTIONS_DATE"));
				goodsQaVO.setAnswer_date(rs.getTimestamp("ANSWER_DATE"));
			}

		} catch (SQLException se) {
			throw new RuntimeException("資料庫錯誤。" + se.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return goodsQaVO;
	}

	@Override
	public List<GoodsQaVO> getAll() {
		List<GoodsQaVO> list = new ArrayList<GoodsQaVO>();
		GoodsQaVO goodsQaVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				goodsQaVO = new GoodsQaVO();
				goodsQaVO.setGfaq_no(rs.getString("GFAQ_NO"));
				goodsQaVO.setGoods_no(rs.getString("GOODS_NO"));
				goodsQaVO.setMember_no(rs.getString("MEMBER_NO"));
				goodsQaVO.setAdministrator_no(rs.getString("ADMINISTRATOR_NO"));
				goodsQaVO.setQuestions_content(rs.getString("QUESTIONS_CONTENT"));
				goodsQaVO.setAnswer_content(rs.getString("ANSWER_CONTENT"));
				goodsQaVO.setQuestions_date(rs.getTimestamp("QUESTIONS_DATE"));
				goodsQaVO.setAnswer_date(rs.getTimestamp("ANSWER_DATE"));
				list.add(goodsQaVO);
			}

		} catch (SQLException se) {
			throw new RuntimeException("資料庫錯誤。" + se.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return list;
	}

	@Override
	public List<String> getAllGoodsNo() {
		List<String> list = new ArrayList<String>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_GOODSNO);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString("GOODS_NO")); 
			}
		} catch (SQLException se) {
			throw new RuntimeException("資料庫錯誤。" + se.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return list;
	}
	
	@Override
	public List<GoodsQaVO> findByGoodsNo(String goods_no) {
		List<GoodsQaVO> list = new ArrayList<GoodsQaVO>();
		GoodsQaVO goodsQaVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_GOODSNO);
			pstmt.setString(1, goods_no);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				goodsQaVO = new GoodsQaVO();
				goodsQaVO.setGfaq_no(rs.getString("GFAQ_NO"));
				goodsQaVO.setGoods_no(rs.getString("GOODS_NO"));
				goodsQaVO.setMember_no(rs.getString("MEMBER_NO"));
				goodsQaVO.setAdministrator_no(rs.getString("ADMINISTRATOR_NO"));
				goodsQaVO.setQuestions_content(rs.getString("QUESTIONS_CONTENT"));
				goodsQaVO.setAnswer_content(rs.getString("ANSWER_CONTENT"));
				goodsQaVO.setQuestions_date(rs.getTimestamp("QUESTIONS_DATE"));
				goodsQaVO.setAnswer_date(rs.getTimestamp("ANSWER_DATE"));
				list.add(goodsQaVO); 
			}
		} catch (SQLException se) {
			throw new RuntimeException("資料庫錯誤。" + se.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return list;
	}
	
//	public static void main(String[] args) {
//
//		OrderDetailJDBCDAO dao = new OrderDetailJDBCDAO();
//
//		// 新增
//		OrderDetailVO orderDetailVO1 = new OrderDetailVO();
//		orderDetailVO1.setOrder_no("O2018121610003");
//		orderDetailVO1.setGoods_no("P0000007");
//		orderDetailVO1.setGoods_bonus(new Double(44444));
//		orderDetailVO1.setGoods_pc(new Double(1));
//		dao.insert(orderDetailVO1);
//
//		// 修改
//		OrderDetailVO orderDetailVO2 = new OrderDetailVO();
//		orderDetailVO2.setOrder_no("O2018121610002");
//		orderDetailVO2.setGoods_no("P0000002");
//		orderDetailVO2.setGoods_bonus(new Double(765474));
//		orderDetailVO2.setGoods_pc(new Double(8));
//		dao.update(orderDetailVO2);
//
//		// 刪除
//		dao.delete("O2018121110004");
//
//		// 查詢
//		OrderDetailVO orderDetailVO3 = dao.findByPrimaryKey("O2018121610002");
//		System.out.println("訂單編號：　　" + orderDetailVO3.getOrder_no());
//		System.out.println("商品編號：　　" + orderDetailVO3.getGoods_no());
//		System.out.println("實際交易單價：" + orderDetailVO3.getGoods_bonus());
//		System.out.println("商品數量：　　" + orderDetailVO3.getGoods_pc());
//		System.out.println("------------------------------------");

		// 查詢列表
//		List<OrderDetailVO> list = dao.getAll();
//		for (OrderDetailVO aOrder : list) {
//			System.out.println("訂單編號：　　" + aOrder.getOrder_no());
//			System.out.println("商品編號：　　" + aOrder.getGoods_no());
//			System.out.println("實際交易單價：" + aOrder.getGoods_bonus());
//			System.out.println("商品數量：　　" + aOrder.getGoods_pc());
//			System.out.println("------------------------------------");
//		}
//		
//	}
	
}
