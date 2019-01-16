package com.goods_qa.model;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class GoodsQaDAO implements GoodsQaDAO_interface {

	private static DataSource ds = null;
	static {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/ETIckeTsDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	private static final String INSERT_STMT = "INSERT INTO GOODS_QA VALUES ('GF'||LPAD(TO_CHAR(GOODS_QA_SEQ.NEXTVAL),7,'0'),? ,? ,? ,? ,? ,? ,?)";
	private static final String UPDATE_STMT = "UPDATE GOODS_QA SET goods_no=?, member_no=?, administrator_no=?, questions_content=?, answer_content=?,Questions_date=?,answer_date=? where gfaq_no=?";
	private static final String DELETE_STMT = "DELETE FROM GOODS_QA WHERE gfaq_no = ?";
	private static final String GET_ONE_STMT = "SELECT * FROM GOODS_QA WHERE gfaq_no = ?";
	private static final String GET_ALL_STMT = "SELECT * FROM GOODS_QA ORDER BY gfaq_no";

	@Override
	public void insert(GoodsQaVO goodsQaVO) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = ds.getConnection();
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setString(1, goodsQaVO.getGoods_no());
			pstmt.setString(2, goodsQaVO.getMember_no());
			pstmt.setString(3, goodsQaVO.getAdministrator_no());
			pstmt.setString(4, goodsQaVO.getQuestions_content());
			pstmt.setString(5, goodsQaVO.getAnswer_content());
			pstmt.setTimestamp(6, goodsQaVO.getQuestions_date());
			pstmt.setTimestamp(7, goodsQaVO.getAnswer_date());

			pstmt.executeUpdate();

			System.out.println("----------Inserted----------");
			} catch (SQLException se) {
				throw new RuntimeException("A database error occured. " + se.getMessage());
				// Clean up JDBC resources
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
	public void update(GoodsQaVO faqVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(UPDATE_STMT);
			
			pstmt.setString(1, faqVO.getGoods_no());
			pstmt.setString(2, faqVO.getMember_no());
			pstmt.setString(3, faqVO.getAdministrator_no());
			pstmt.setString(4, faqVO.getQuestions_content());
			pstmt.setString(5, faqVO.getAnswer_content());
			pstmt.setTimestamp(6, faqVO.getQuestions_date());
			pstmt.setTimestamp(7, faqVO.getAnswer_date());
			pstmt.setString(8, faqVO.getGfaq_no());

			pstmt.executeUpdate();
			System.out.println("----------Updated----------");

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
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
			pstmt = con.prepareStatement(DELETE_STMT);

			pstmt.setString(1, gfaq_no);

			pstmt.executeUpdate();

			System.out.println("----------Deleted----------");

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
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

		GoodsQaVO goodsfaqVO1 = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;


		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setString(1, gfaq_no);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				goodsfaqVO1 = new GoodsQaVO();
				goodsfaqVO1.setGfaq_no(rs.getString("gfaq_no"));
				goodsfaqVO1.setGoods_no(rs.getString("goods_no"));
				goodsfaqVO1.setMember_no(rs.getString("member_no"));
				goodsfaqVO1.setAdministrator_no(rs.getString("administrator_no"));
				goodsfaqVO1.setQuestions_content(rs.getString("questions_content"));
				goodsfaqVO1.setAnswer_content(rs.getString("answer_content"));
				goodsfaqVO1.setQuestions_date(rs.getTimestamp("Questions_date"));
				goodsfaqVO1.setAnswer_date(rs.getTimestamp("answer_date"));

			}

			System.out.println("----------findByPrimaryKey finished----------");

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
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
		return goodsfaqVO1;
	}

	@Override
	public List<GoodsQaVO> getAll() {

		List<GoodsQaVO> list = new ArrayList<GoodsQaVO>();
		GoodsQaVO goodsfaqVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				goodsfaqVO = new GoodsQaVO();
				goodsfaqVO.setGfaq_no(rs.getString("gfaq_no"));
				goodsfaqVO.setGoods_no(rs.getString("goods_no"));
				goodsfaqVO.setMember_no(rs.getString("member_no"));
				goodsfaqVO.setAdministrator_no(rs.getString("administrator_no"));
				goodsfaqVO.setQuestions_content(rs.getString("questions_content"));
				goodsfaqVO.setAnswer_content(rs.getString("answer_content"));
				goodsfaqVO.setQuestions_date(rs.getTimestamp("Questions_date"));
				goodsfaqVO.setAnswer_date(rs.getTimestamp("answer_date"));
				list.add(goodsfaqVO);
			}

			System.out.println("----------getAll finished----------");

		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. " + se.getMessage());
			// Clean up JDBC resources
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
}
