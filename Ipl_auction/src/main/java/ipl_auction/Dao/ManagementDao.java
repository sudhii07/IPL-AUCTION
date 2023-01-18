package ipl_auction.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ipl_auction.Dto.Management;
import ipl_auction.Dto.Player;
import ipl_auction.Dto.Team;

@Component
public class ManagementDao {
	@Autowired
	EntityManagerFactory factory;

	public void save(Management management) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		transaction.begin();
		manager.persist(management);
		transaction.commit();
	}

	public Management login(String username) {
		EntityManager manager = factory.createEntityManager();
		List<Management> list = manager.createQuery("select x from Management x where username=?1")
				.setParameter(1, username).getResultList();
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

}
