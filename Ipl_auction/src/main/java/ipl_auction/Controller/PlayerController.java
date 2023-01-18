package ipl_auction.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ipl_auction.Dao.PlayerDao;
import ipl_auction.Dao.TeamDao;
import ipl_auction.Dto.Player;
import ipl_auction.Dto.Team;

@Controller
public class PlayerController {
	@Autowired
	PlayerDao playerDao;

	@Autowired
	TeamDao teamDao;

	@PostMapping("playersignup")
	public ModelAndView save(@ModelAttribute Player player) {
		player.setStatus("Pending");
		playerDao.save(player);
		ModelAndView andView = new ModelAndView("index.jsp");
		andView.addObject("msg", "Player Account Got Created");
		return andView;
	}

	@PostMapping("playerlogin")
	public ModelAndView login(@RequestParam String username, @RequestParam String password, HttpSession session) {
		ModelAndView andView = new ModelAndView();
		Player player = playerDao.login(username);
		if (player == null) {
			andView.setViewName("playerlogin.jsp");
			andView.addObject("msg", "Invalid Username");
		} else {
			session.setAttribute("player", player);
			if (player.getPassword().equals(password)) {
				andView.setViewName("playerhome.jsp");
				andView.addObject("msg", "Login Successfully");
			} else {
				andView.setViewName("playerlogin.jsp");
				andView.addObject("msg", "Invalid Password");
			}
		}
		return andView;
	}

	@RequestMapping("viewplayers")
	public ModelAndView viewplayers(@RequestParam("id") int teamid) {
		ModelAndView andView = new ModelAndView();
		Team team = teamDao.findById(teamid);
		List<Player> players = team.getPlayers();
		if (players.isEmpty()) {
			andView.setViewName("viewteamplayers.jsp");
			andView.addObject("img", team.getImagelink());
			andView.addObject("teamname", team.getName());
			andView.addObject("msg", "No Players are there");
			return andView;
		} else {
			andView.setViewName("viewteamplayers.jsp");
			andView.addObject("img", team.getImagelink());
			andView.addObject("teamname", team.getName());
			andView.addObject("players", players);
			return andView;
		}
	}

	@RequestMapping("viewAllplayers")
	public ModelAndView viewAllplayers() {
		ModelAndView andView = new ModelAndView();
		List<Player> players = playerDao.getAllPlayers();
		if (players.isEmpty()) {
			andView.setViewName("managementhome.jsp");
			andView.addObject("msg", "There are No Players Present");
			return andView;
		} else {
			andView.setViewName("viewallplayers.jsp");
			andView.addObject("players", players);
			return andView;
		}
	}

	@RequestMapping("changeplayerstatus")
	public String changestatus(@RequestParam int id) {
		Player player = playerDao.getPlayerById(id);
		String status = player.getStatus();
		if (status.equals("Pending")) {
			player.setStatus("Available");
		} else if (status.equals("Available")) {
			player.setStatus("Pending");
		} else {

		}
		playerDao.updatePlayer(player);
		return "viewAllplayers";
	}

	@RequestMapping("viewavailable")
	public ModelAndView viewAvailable(HttpSession session) {
		Team team = (Team) session.getAttribute("team");
		ModelAndView andView = new ModelAndView();
		List<Player> players = playerDao.getAvailablePlayers();
		if (players.isEmpty()) {
			andView.setViewName("teamhome.jsp");
			andView.addObject("msg", "There are No Players Present");
			andView.addObject("img", team.getImagelink());
			return andView;
		} else {
			andView.addObject("img", team.getImagelink());
			andView.setViewName("buyplayers.jsp");
			andView.addObject("players", players);
			return andView;
		}
	}

	@RequestMapping("viewplayerteam")
	public ModelAndView viewplayerteam(HttpSession session) {
		ModelAndView andView = new ModelAndView();
		Player player = (Player) session.getAttribute("player");
		Team team = player.getTeam();
		List<Player> players = team.getPlayers();

		andView.setViewName("playerteam.jsp");
		andView.addObject("players", players);
		return andView;
	}

	@RequestMapping("editplayer")
	public ModelAndView editPlayer(HttpSession session) {
		Player player = (Player) session.getAttribute("player");
		ModelAndView andView = new ModelAndView("editplayer.jsp");
		andView.addObject("player", player);
		return andView;
	}

	@RequestMapping("updateplayer")
	public ModelAndView updatePlayer(@ModelAttribute Player player) {
		playerDao.updatePlayer(player);
		ModelAndView andView = new ModelAndView("playerhome.jsp");
		andView.addObject("msg", "Data Updated Successfully");
		return andView;

	}
}
