package br.com.usoftware.chefbot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="tb_segment")
public class Segment {
	
	@Id @Column(name="id_segment")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="sequence_tb_segment")
	@SequenceGenerator(name="sequence_tb_segment", sequenceName="sequence_tb_segment", allocationSize=1)
	private Long id;
	
	@NotBlank(message = "Campo obrigtório!")
	private String name;
	
	@ManyToOne
    @JoinColumn(name="tb_bot", nullable=false)
	private Bot bot;
	
	public Segment() {
		this.bot = new Bot();
	}
	
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
	
	public Bot getBot() {
		return bot;
	}
	
	public void setBot(Bot bot) {
		this.bot = bot;
	}
}
