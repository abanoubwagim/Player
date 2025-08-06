package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.PlayerDAO;
import com.spring.model.Player;

@Service
public class PlayerServiceImpl implements PlayerService{
	
	@Autowired
	private PlayerDAO playerDao;
	
	
	public PlayerServiceImpl() {
		
	}
	

	@Override
	@Transactional  // in hibernate
	public List<Player> allPlayers() {
		return playerDao.getPlayers();
	}




	@Override
	@Transactional  // begin and commit session
	public void savePlayer(Player player) {
		playerDao.addPlayers(player);
		
	}

}
