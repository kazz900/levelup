package com.gs.levelup.common;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class JDBCTemplate {
	// MyBatis 가 제공하는 SqlSession 인터페이스 생성 및 리턴 처리
	// resources/mybatis-config.xml 설정파일의 environment의 내용을 읽어와서 
	// db 연결하고 PreparedStatement 객체 생성과 동일하게 처리됨
	public static Connection getConnection() {
		Connection conn = null;
		try { 
			// context.xml 에 설정된 <Resource> 엘리먼트의 값들을 이용해서
				// 톰캣의 DBCP 를 통해서Connection 을 얻어옴
			Context initContext = new InitialContext();
			DataSource ds = (DataSource) initContext.lookup("java:comp/env/jdbc/oraDB");

			conn = ds.getConnection();
			conn.setAutoCommit(false);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
	
	public static SqlSession getSession() {
		SqlSession session = null;
		try { 
//			String resource = "resources/mybatis-config.xml";
//			InputStream input = Resources.getResourceAsStream(resource);
//			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
//			SqlSessionFactory factory = builder.build(input);
//			session = factory.openSession(false); // autocommit false
			session = new SqlSessionFactoryBuilder().build(
					Resources.getResourceAsStream("resources/mybatis-config.xml")
					).openSession(false);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return session;
	}

	
//	
//	public static Connection getConnection() {
//		Connection conn = null;
//		try { 
//			// context.xml 에 설정된 <Resource> 엘리먼트의 값들을 이용해서
//				// 톰캣의 DBCP 를 통해서Connection 을 얻어옴
//			Context initContext = new InitialContext();
//			DataSource ds = (DataSource) initContext.lookup("java:comp/env/jdbc/oraDB");
//
//			conn = ds.getConnection();
//			conn.setAutoCommit(false);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return conn;
//	}

	
	public static void commit(Connection conn) {
		try {
			if (conn != null && !conn.isClosed())
				conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void rollback(Connection conn) {
		try {
			if (conn != null && !conn.isClosed())
				conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(Connection conn) {
		try {
			if (conn != null && !conn.isClosed())
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(Statement stmt) {
		try {
			if (stmt != null && !stmt.isClosed())
				stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rset) {
		try {
			if (rset != null && !rset.isClosed())
				rset.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
