package com.spring.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Player;

@Repository
public class PlayerDAOImpl implements PlayerDAO{


	private SessionFactory sessionFactory;

	@Autowired
	public PlayerDAOImpl(SessionFactory session){
		this.sessionFactory = session;
	}
	
	@Override
	public List<Player> getPlayers() {
		Session session = sessionFactory.getCurrentSession();
													// model(class) not DB
		Query<Player> query = session.createQuery("From Player",Player.class); // select  *
		
		return query.getResultList();
	}
	
	

}
