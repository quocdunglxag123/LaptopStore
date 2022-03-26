package connection;


import java.sql.DriverManager;

import javax.xml.stream.XMLInputFactory;

import java.sql.Connection;

public class DBConnection {
	public Connection getConnection() throws Exception {
		String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url, userID, password);
	}
	private final String serverName = "localhost";
	private final String dbName = "KinhDoanhLapTop";
	private final String portNumber = "1433";
	private final String userID = "sa";
	private final String password = "sa";
	public static void main(String[] args) {
		try {
			System.out.println(new DBConnection().getConnection());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
