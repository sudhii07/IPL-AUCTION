package ipl_auction.Dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ManyToAny;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Player {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)

private int id;
private String name;
private String username;
private String role;
private String country;
private double price;
private String password;
private String status;

@ManyToOne
Team team;

public Team getTeam() {
	return team;
}
public void setTeam(Team team) {
	this.team = team;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}


}
