package com.homepage.web.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import oracle.jdbc.driver.OracleDriver;

public class JdbcTest {
	public static void main(String[] args) {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pass = "oracle";
		String memberId="", age="", password="", name="", email="";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		//import 단축키 : Ctrl + Shift + O
		OracleDriver od = new OracleDriver();
		Properties info = new Properties();
		info.put("user", user);
		info.put("password", pass);
		
		try {
			conn = od.connect(url, info);
		    stmt = conn.createStatement();
		    rs = stmt.executeQuery("select * from member");
			while (rs.next()) { // 커서 뒤에 값이 있으면
				memberId = rs.getString("MEMBERID");
				age = rs.getString("AGE");
				password = rs.getString("PASSWORD");
				name = rs.getString("NAME");
				email = rs.getString("EMAIL");
				
				System.out.print(memberId+"\t");
				System.out.print(password+"\t");
				System.out.print(name+"\t");
				System.out.print(email+"\t");
				System.out.print(age+"\t");
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
