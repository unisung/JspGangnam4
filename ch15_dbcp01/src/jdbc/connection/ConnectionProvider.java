package jdbc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
  public static Connection getConntion() throws SQLException{
	  return DriverManager.getConnection("jdbc:apache:commons:dbcp:webmarketDB");
  }
}
