package Metier;

import java.util.ArrayList;

import Dao.ServiceDAO;

public class Test {

	public static void main(String[] args) {
		
		news n = new news();
		n.setUrl("didoxation");
		
		System.out.println(ServiceDAO.NbAimeNews(n));
		System.out.println(ServiceDAO.NbDetesteNews(n));

	}

}
