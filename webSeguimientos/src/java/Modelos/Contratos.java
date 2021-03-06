package Modelos;
// Generated 5/11/2015 08:28:15 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Contratos generated by hbm2java
 */
public class Contratos  implements java.io.Serializable {


     private Integer idContratos;
     private Empresa empresa;
     private Usuario usuario;
     private String jefeInmediato;
     private String cargoJefe;
     private Date fechaInicial;
     private Date fechaFinal;
     private String sede;
     private String tipoContrato;
     private String programa;
     private int ficha;
     private String estado;
     private Set seguimientoses = new HashSet(0);

    public Contratos() {
    }

	
    public Contratos(Empresa empresa, Usuario usuario, String jefeInmediato, String cargoJefe, Date fechaInicial, Date fechaFinal, String sede, String tipoContrato, String programa, int ficha, String estado) {
        this.empresa = empresa;
        this.usuario = usuario;
        this.jefeInmediato = jefeInmediato;
        this.cargoJefe = cargoJefe;
        this.fechaInicial = fechaInicial;
        this.fechaFinal = fechaFinal;
        this.sede = sede;
        this.tipoContrato = tipoContrato;
        this.programa = programa;
        this.ficha = ficha;
        this.estado = estado;
    }
    public Contratos(Empresa empresa, Usuario usuario, String jefeInmediato, String cargoJefe, Date fechaInicial, Date fechaFinal, String sede, String tipoContrato, String programa, int ficha, String estado, Set seguimientoses) {
       this.empresa = empresa;
       this.usuario = usuario;
       this.jefeInmediato = jefeInmediato;
       this.cargoJefe = cargoJefe;
       this.fechaInicial = fechaInicial;
       this.fechaFinal = fechaFinal;
       this.sede = sede;
       this.tipoContrato = tipoContrato;
       this.programa = programa;
       this.ficha = ficha;
       this.estado = estado;
       this.seguimientoses = seguimientoses;
    }
   
    public Integer getIdContratos() {
        return this.idContratos;
    }
    
    public void setIdContratos(Integer idContratos) {
        this.idContratos = idContratos;
    }
    public Empresa getEmpresa() {
        return this.empresa;
    }
    
    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public String getJefeInmediato() {
        return this.jefeInmediato;
    }
    
    public void setJefeInmediato(String jefeInmediato) {
        this.jefeInmediato = jefeInmediato;
    }
    public String getCargoJefe() {
        return this.cargoJefe;
    }
    
    public void setCargoJefe(String cargoJefe) {
        this.cargoJefe = cargoJefe;
    }
    public Date getFechaInicial() {
        return this.fechaInicial;
    }
    
    public void setFechaInicial(Date fechaInicial) {
        this.fechaInicial = fechaInicial;
    }
    public Date getFechaFinal() {
        return this.fechaFinal;
    }
    
    public void setFechaFinal(Date fechaFinal) {
        this.fechaFinal = fechaFinal;
    }
    public String getSede() {
        return this.sede;
    }
    
    public void setSede(String sede) {
        this.sede = sede;
    }
    public String getTipoContrato() {
        return this.tipoContrato;
    }
    
    public void setTipoContrato(String tipoContrato) {
        this.tipoContrato = tipoContrato;
    }
    public String getPrograma() {
        return this.programa;
    }
    
    public void setPrograma(String programa) {
        this.programa = programa;
    }
    public int getFicha() {
        return this.ficha;
    }
    
    public void setFicha(int ficha) {
        this.ficha = ficha;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Set getSeguimientoses() {
        return this.seguimientoses;
    }
    
    public void setSeguimientoses(Set seguimientoses) {
        this.seguimientoses = seguimientoses;
    }




}


