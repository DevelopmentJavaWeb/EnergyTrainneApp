package br.com.energias.treinamento.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import br.com.energias.treinamento.models.PaginatedList;
import br.com.energias.treinamento.models.Categoria;

@Repository
public class CategoriaDao
{

   @PersistenceContext
   private EntityManager manager;

   public List<Categoria> all()
   {
      return manager.createQuery("select p from Categoria p", Categoria.class).getResultList();
   }

   public void save(Categoria categoria)
   {
      manager.persist(categoria);
   }

   public Categoria findById(Integer id)
   {
      return manager.find(Categoria.class, id);
   }

   public void remove(Categoria categoria)
   {
      manager.remove(categoria);
   }

   public void update(Categoria categoria)
   {
      manager.merge(categoria);
   }

   public PaginatedList paginated(int page, int max)
   {
      return new PaginatorQueryHelper().list(manager, Categoria.class, page, max);
   }

}
