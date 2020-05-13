package Dao;

import java.sql.*;
import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
public class Connexion {

	private static MongoDatabase connection;
	
	static {
		try {
			MongoClient mongoClient = new MongoClient();
	        connection = mongoClient.getDatabase("NewsDB");
	        System.out.println("Connexion etablie");
			}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static MongoDatabase getConnection() {
		return connection;
	}
	
	
}
