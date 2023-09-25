package Tests;

import java.sql.SQLException;

import DBConnects.MySQLConnection;

public class TestConnectSQL {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MySQLConnection connect = new MySQLConnection("LAPTOP-POOHLKIL\\SQLEXPRESS", "root", "", "HadesShop");
		try {
			connect.getConnect();		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
