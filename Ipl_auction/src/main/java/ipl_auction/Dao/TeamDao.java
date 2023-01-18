package ipl_auction.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ipl_auction.Dto.Team;

@Component
public class TeamDao {

	@Autowired
	EntityManagerFactory factory;

	public void save(Team team) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		transaction.begin();
		manager.persist(team);
		transaction.commit();
	}

	public Team login(String username) {
		EntityManager manager = factory.createEntityManager();
		List<Team> list = manager.createQuery("select x from Team x where username=?1").setParameter(1, username)
				.getResultList();
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

	public List<Team> getAllTeam() {
		EntityManager manager = factory.createEntityManager();
		return manager.createQuery("select x from Team x").getResultList();
	}

	public Team findById(int id) {
		EntityManager manager = factory.createEntityManager();
		return manager.find(Team.class, id);
	}

	public void update(Team team) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		transaction.begin();
		manager.merge(team);
		transaction.commit();
	}

	public List<Team> getAllTeamByName(String name) {
		EntityManager manager = factory.createEntityManager();

		return manager.createQuery("select x from Team x where name=?1").setParameter(1, name).getResultList();
	}

}
