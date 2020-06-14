package br.com.usoftware.chefbot.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tb_bot")
public class Bot {
	 
	@Id @Column(name="id_bot")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="sequence_tb_bot")
	@SequenceGenerator(name="sequence_tb_bot", sequenceName="sequence_tb_bot", allocationSize=1)
	private Long id;
	
	private String name;
	private String welcomeMsg;
	private String farewellMsg;
	private int downtime;
	private String defaultAnswer;
	
	@OneToMany(mappedBy = "bot", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private List<Segment> segments;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getWelcomeMsg() {
		return welcomeMsg;
	}
	
	public void setWelcomeMsg(String welcomeMsg) {
		this.welcomeMsg = welcomeMsg;
	}
	
	public String getFarewellMsg() {
		return farewellMsg;
	}
	
	public void setFarewellMsg(String farewellMsg) {
		this.farewellMsg = farewellMsg;
	}
	
	public int getDowntime() {
		return downtime;
	}
	
	public void setDowntime(int downtime) {
		this.downtime = downtime;
	}
	
	public String getDefaultAnswer() {
		return defaultAnswer;
	}
	
	public void setDefaultAnswer(String defaultAnswer) {
		this.defaultAnswer = defaultAnswer;
	}
	
}
