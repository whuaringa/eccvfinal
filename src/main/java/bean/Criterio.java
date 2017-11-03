package bean;

import java.io.Serializable;

public class Criterio implements Serializable {
    private static final long serialVersionUID = 1L;
    private String codtrabajador;
    private String dni;
    private String periodo;

    public Criterio() {
    }

    public String getCodtrabajador() {
        return this.codtrabajador;
    }

    public void setCodtrabajador(String codtrabajador) {
        this.codtrabajador = codtrabajador;
    }

    public String getDni() {
        return this.dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getPeriodo() {
        return this.periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }
}
