package ipl_auction.Helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("ipl_auction")
public class IplConfig {
	@Bean
	public EntityManagerFactory getEMF() {
		return Persistence.createEntityManagerFactory("dev");
	}
}
