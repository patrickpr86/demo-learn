package br.com.example.demolearn.entities;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "lesson")
@Inheritance(strategy = InheritanceType.JOINED)
@NoArgsConstructor
@EqualsAndHashCode
public abstract class Lesson implements Serializable {
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
	private Integer position;

	@ManyToOne
	@JoinColumn(name = "section_id")
	@Getter
	@Setter
	private Section section;

	@ManyToMany
	@JoinTable(name = "lessons_done",
	joinColumns = @JoinColumn(name = "lesson_id"),
	inverseJoinColumns = {
			@JoinColumn(name = "user_id"),
			@JoinColumn(name = "offer_id")
			}
	)
	@Getter
	private Set<Enrollment> enrollmentsDone = new HashSet<>();

	public Lesson(Long id, String title, Integer position, Section section) {
		super();
		this.id = id;
		this.title = title;
		this.position = position;
		this.section = section;
	}

}
