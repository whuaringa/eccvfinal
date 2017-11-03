package bean;

import java.io.Serializable;

public class Trabajador implements Serializable {
    private static final long serialVersionUID = 1L;
    private String codtraba;

    public Trabajador() {
    }

    public String getCodtraba() {
        return this.codtraba;
    }

    public void setCodtraba(String codtraba) {
        this.codtraba = codtraba;
    }
}
