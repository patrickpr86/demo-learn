package br.com.example.demolearn.entities;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "section")
@NoArgsConstructor

public class Section implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Getter
	@Setter
	private Long id;
	
	@Getter
	@Setter
	private String title;
	
	@Getter
	@Setter
	private String description;
	
	@Getter
	@Setter
	private Integer position;
	
	@Getter
	@Setter
	private String imgUri;

	@ManyToOne
	@JoinColumn(name = "resource_id")
	@Getter
	@Setter
	private Resource resource;

	@ManyToOne
	@JoinColumn(name = "prerequisite_id")
	@Getter
	@Setter
	private Section prerequisite;

	@OneToMany(mappedBy = "section")
	@Getter
	private Set<Lesson> lessons = new HashSet<>();

	public Section(Long id, String title, String description, Integer position, String imgUri, Resource resource,
			Section prerequisite) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.position = position;
		this.imgUri = imgUri;
		this.resource = resource;
		this.prerequisite = prerequisite;
	}
}
