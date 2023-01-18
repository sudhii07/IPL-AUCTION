package ipl_auction.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ipl_auction.Dto.Player;
import ipl_auction.Dto.Team;

@Component
public class PlayerDao {
	@Autowired
	EntityManagerFactory factory;

	public void save(Player player) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		transaction.begin();
		manager.persist(player);
		transaction.commit();
	}

	public Player login(String username) {
		EntityManager manager = factory.createEntityManager();
		List<Player> list = manager.createQuery("select x from Player x where username=?1").setParameter(1, username)
				.getResultList();
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

	public List<Player> getAllPlayers() {
		EntityManager manager = factory.createEntityManager();

		return manager.createQuery("select x from Player x").getResultList();
	}

	public Player getPlayerById(int id) {
		EntityManager manager = factory.createEntityManager();
		return manager.find(Player.class, id);
	}

	public void updatePlayer(Player player) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		transaction.begin();
		manager.merge(player);
		transaction.commit();
	}

	public List<Player> getAvailablePlayers() {
		EntityManager manager = factory.createEntityManager();

		return manager.createQuery("select x from Player x where status='Available'").getResultList();
	}

}
