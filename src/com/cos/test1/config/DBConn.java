package com.cos.test1.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConn {
	public static Connection getConnection() {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/ssar?serverTimezone=Asia/Seoul";
		String username = "ssar";
		String password = "bitc5600";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, "root", "1234");
			
			System.out.println("DB 연결 성공");
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
