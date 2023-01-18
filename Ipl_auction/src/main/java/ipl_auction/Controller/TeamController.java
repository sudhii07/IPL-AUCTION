package ipl_auction.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import ipl_auction.Dao.PlayerDao;
import ipl_auction.Dao.TeamDao;
import ipl_auction.Dto.Player;
import ipl_auction.Dto.Team;

@Controller
public class TeamController {
	@Autowired
	TeamDao teamDao;

	@Autowired
	PlayerDao playerDao;

	@PostMapping("teamsignup")
	public ModelAndView save(@ModelAttribute Team team) {
		teamDao.save(team);
		ModelAndView andView = new ModelAndView("index.jsp");
		andView.addObject("msg", "Team Account Got Created");
		return andView;
	}

	@PostMapping("teamlogin")
	public ModelAndView login(@RequestParam String username, @RequestParam String password, HttpSession session) {
		ModelAndView andView = new ModelAndView();
		Team team = teamDao.login(username);
		if (team == null) {
			andView.setViewName("teamlogin.jsp");
			andView.addObject("msg", "Invalid Username");
		} else {
			if (team.getPassword().equals(password)) {
				if (team.isStatus()) {
					session.setAttribute("team", team);
					andView.setViewName("teamhome.jsp");
					andView.addObject("img", team.getImagelink());
					andView.addObject("msg", "Login Success");
				} else {
					andView.setViewName("teamlogin.jsp");
					andView.addObject("msg", "Contact Management for Access");
				}
			} else {
				andView.setViewName("teamlogin.jsp");
				andView.addObject("msg", "Invalid Password");
			}
		}
		return andView;
	}

	@GetMapping("viewAllteams")
	public ModelAndView viewAllTeams() {
		ModelAndView andView = new ModelAndView();
		List<Team> teams = teamDao.getAllTeam();
		if (teams.isEmpty()) {
			andView.setViewName("managementhome.jsp");
			andView.addObject("msg", "There are no teams Present");
			return andView;
		} else {
			andView.setViewName("viewAllteams.jsp");
			andView.addObject("msg", "Amount added successfully");
			andView.addObject("teams", teams);
			return andView;
		}
	}

	@RequestMapping("changestatus")
	public String changeStatus(@RequestParam int id) {
		Team team = teamDao.findById(id);
		if (team.isStatus()) {
			team.setStatus(false);
		} else {
			team.setStatus(true);
		}
		teamDao.update(team);
		return "viewAllteams";
	}

	@RequestMapping("addamount")
	public String addamount(@RequestParam double amount, @RequestParam int id) {
		Team team = teamDao.findById(id);
		team.setWallet(team.getWallet() + amount);
		teamDao.update(team);
		return "viewAllteams";
	}

	@RequestMapping("buyplayer")
	public ModelAndView buyPlayer(@RequestParam int id, HttpSession session) {
		ModelAndView andView = new ModelAndView();
		Team team = (Team) session.getAttribute("team");
		Player player = playerDao.getPlayerById(id);
		if (player.getPrice() > team.getWallet()) {
			andView.addObject("msg", "Insufficient Funds");
			andView.addObject("img", team.getImagelink());
			andView.setViewName("teamhome.jsp");
		} else {
			team.setWallet(team.getWallet() - player.getPrice());
			player.setStatus("Sold");
			player.setTeam(team);
			List<Player> players = team.getPlayers();
			players.add(player);
			team.setPlayers(players);

			teamDao.update(team);
			playerDao.updatePlayer(player);

			andView.addObject("msg", "Player bought Successfully");
			andView.addObject("img", team.getImagelink());
			andView.setViewName("teamhome.jsp");
		}
		return andView;
	}

	@RequestMapping("viewteam")
	public ModelAndView viewplayers(HttpSession session) {
		Team team = (Team) session.getAttribute("team");
		ModelAndView andView = new ModelAndView();
		List<Player> players = team.getPlayers();
		if (players.isEmpty()) {
			andView.setViewName("viewmyteam.jsp");
			andView.addObject("img", team.getImagelink());
			andView.addObject("teamname", team.getName());
			andView.addObject("msg", "No Players are there");
			return andView;
		} else {
			andView.setViewName("viewmyteam.jsp");
			andView.addObject("img", team.getImagelink());
			andView.addObject("teamname", team.getName());
			andView.addObject("players", players);
			return andView;
		}
	}

	@RequestMapping("teamhomedummy")
	public ModelAndView dummy(HttpSession session) {
		Team team = (Team) session.getAttribute("team");
		ModelAndView andView = new ModelAndView("teamhome.jsp");
		andView.addObject("img", team.getImagelink());
		return andView;
	}

	@RequestMapping("viewteambyname")
	public ModelAndView viewTeamByName(HttpSession session) {
		ModelAndView andView = new ModelAndView();
		List<Team> teams = teamDao.getAllTeam();
		Team team = (Team) session.getAttribute("team");

		andView.setViewName("viewteambyname.jsp");
		andView.addObject("img", team.getImagelink());
		andView.addObject("teams", teams);
		return andView;
	}

	@RequestMapping("fetchusingteam")
	public ModelAndView fetchTeambyName(@RequestParam String name) {
		ModelAndView andView = new ModelAndView();
		List<Team> teams = teamDao.getAllTeamByName(name);
		Team team = teams.get(0);
		List<Player> players = team.getPlayers();
		andView.setViewName("viewmyteam.jsp");
		andView.addObject("img", team.getImagelink());
		andView.addObject("teamname", team.getName());
		andView.addObject("players", players);
		return andView;
	}
}
