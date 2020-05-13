package Dao;

import java.sql.Connection;

import org.bson.Document;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class TestConnexion {

	public static void main(String[] args) {
		MongoDatabase  db =Connexion.getConnection();
		FindIterable<Document> mydatabaserecords = db.getCollection("employes").find();
      MongoCursor<Document> iterator = mydatabaserecords.iterator();
      while (iterator.hasNext()) {
          Document doc = iterator.next();
          String nom=doc.getString("nom");
          System.out.println(nom+" "+doc.getString("prenom"));
      }
	}

}
