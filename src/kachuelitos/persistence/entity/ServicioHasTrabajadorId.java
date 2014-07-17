package kachuelitos.persistence.entity;

// Generated 17-jul-2014 1:32:08 by Hibernate Tools 4.0.0

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * ServicioHasTrabajadorId generated by hbm2java
 */
@Embeddable
public class ServicioHasTrabajadorId implements java.io.Serializable {

	private int servicioIdServicio;
	private int trabajadorUserDniuser;

	public ServicioHasTrabajadorId() {
	}

	public ServicioHasTrabajadorId(int servicioIdServicio,
			int trabajadorUserDniuser) {
		this.servicioIdServicio = servicioIdServicio;
		this.trabajadorUserDniuser = trabajadorUserDniuser;
	}

	@Column(name = "Servicio_idServicio", nullable = false)
	public int getServicioIdServicio() {
		return this.servicioIdServicio;
	}

	public void setServicioIdServicio(int servicioIdServicio) {
		this.servicioIdServicio = servicioIdServicio;
	}

	@Column(name = "Trabajador_User_DNIUser", nullable = false)
	public int getTrabajadorUserDniuser() {
		return this.trabajadorUserDniuser;
	}

	public void setTrabajadorUserDniuser(int trabajadorUserDniuser) {
		this.trabajadorUserDniuser = trabajadorUserDniuser;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ServicioHasTrabajadorId))
			return false;
		ServicioHasTrabajadorId castOther = (ServicioHasTrabajadorId) other;

		return (this.getServicioIdServicio() == castOther
				.getServicioIdServicio())
				&& (this.getTrabajadorUserDniuser() == castOther
						.getTrabajadorUserDniuser());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getServicioIdServicio();
		result = 37 * result + this.getTrabajadorUserDniuser();
		return result;
	}

}
