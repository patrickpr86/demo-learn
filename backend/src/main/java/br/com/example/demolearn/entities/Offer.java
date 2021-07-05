package br.com.example.demolearn.entities;

import java.io.Serializable;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "offer")
@NoArgsConstructor
@EqualsAndHashCode
public class Offer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Getter
	@Setter
	private Long id;
	private String edition;

	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	@Getter
	@Setter
	private Instant startMoment;

	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	@Getter
	@Setter
	private Instant endMoment;

	@ManyToOne
	@JoinColumn(name = "course_id")
	@Getter
	@Setter
	private Course course;

	@OneToMany(mappedBy = "offer")
	@Getter
	private List<Resource> resources = new ArrayList<>();

	public Offer(Long id, String edition, Instant startMoment, Instant endMoment, Course course) {
		super();
		this.id = id;
		this.edition = edition;
		this.startMoment = startMoment;
		this.endMoment = endMoment;
		this.course = course;
	}

}
