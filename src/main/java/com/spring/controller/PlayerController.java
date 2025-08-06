package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Player;
import com.spring.service.PlayerService;

//http://localhost:8081/Player/
@Controller
@RequestMapping("/fifa")
//http://localhost:8081/Player/fifa
public class PlayerController {
	
	@Autowired
	private PlayerService playerService;
	
	
	public PlayerController() {
		super();
	}


	@GetMapping("/players") // retrieve data
	//http://localhost:8081/Player/fifa/players
	public String players(Model model){
		
		List<Player> players =  playerService.allPlayers();
						//  attrubiute   list
		model.addAttribute("players",players);
		return "fifa-players";
	}
	
	
	@GetMapping("/add")
	//http://localhost:8081/Player/fifa/add
	public String savePage() {
		return "addPlayer";
	}

}
