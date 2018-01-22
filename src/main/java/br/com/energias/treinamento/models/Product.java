package br.com.energias.treinamento.models;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@Entity
public class Product
{

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Integer id;
   
   @NotNull
   @Column(name="name")
   private String name;

   
   @Column(name="description")
   private String description;
   
   @NotNull
   @Column(name="price")
   private BigDecimal price;
   
   @NotNull
   @ManyToOne(optional = false)
   @JoinColumn(name = "categoria", referencedColumnName = "id")
   private Categoria categoria;
  

   public Integer getId()
   {
      return this.id;
   }

   public void setId(Integer id)
   {
      this.id = id;
   }

   public String getName()
   {
      return this.name;
   }

   public void setName(String name)
   {
      this.name = name;
   }

   public String getDescription()
   {
      return this.description;
   }

   public void setDescription(String description)
   {
      this.description = description;
   }

   public BigDecimal getPrice()
   {
      return this.price;
   }

   public void setPrice(BigDecimal price)
   {
      this.price = price;
   }

public Categoria getCategoria() {
	return categoria;
}

public void setCategoria(Categoria categoria) {
	this.categoria = categoria;
}


   
   

}
