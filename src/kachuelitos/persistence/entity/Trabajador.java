package kachuelitos.persistence.entity;

// Generated 17-jul-2014 1:32:08 by Hibernate Tools 4.0.0

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Trabajador generated by hbm2java
 */
@Entity
@Table(name = "trabajador", catalog = "mydb")
public class Trabajador implements java.io.Serializable {

	private int trabajadorDniuser;
	private Float reputacionTrabajador;

	public Trabajador() {
	}

	public Trabajador(int trabajadorDniuser) {
		this.trabajadorDniuser = trabajadorDniuser;
	}

	public Trabajador(int trabajadorDniuser, Float reputacionTrabajador) {
		this.trabajadorDniuser = trabajadorDniuser;
		this.reputacionTrabajador = reputacionTrabajador;
	}

	@Id
	@Column(name = "Trabajador_DNIUser", unique = true, nullable = false)
	public int getTrabajadorDniuser() {
		return this.trabajadorDniuser;
	}

	public void setTrabajadorDniuser(int trabajadorDniuser) {
		this.trabajadorDniuser = trabajadorDniuser;
	}

	@Column(name = "ReputacionTrabajador", precision = 12, scale = 0)
	public Float getReputacionTrabajador() {
		return this.reputacionTrabajador;
	}

	public void setReputacionTrabajador(Float reputacionTrabajador) {
		this.reputacionTrabajador = reputacionTrabajador;
	}

}
