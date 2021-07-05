package br.com.example.demolearn.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import br.com.example.demolearn.entities.enums.ResourceType;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "resource")
@NoArgsConstructor
@EqualsAndHashCode
public class Resource implements Serializable {
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
	
	@Getter
	@Setter
	private ResourceType type;

	@ManyToOne
	@JoinColumn(name = "offer_id")
	@Getter
	@Setter
	private Offer offer;

	@OneToMany(mappedBy = "resource")
	@Getter
	private List<Section> sections = new ArrayList<>();

	public Resource(Long id, String title, String description, Integer position, String imgUri, ResourceType type,
			Offer offer) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.position = position;
		this.imgUri = imgUri;
		this.type = type;
		this.offer = offer;
	}

}
