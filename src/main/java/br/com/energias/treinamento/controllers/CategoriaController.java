package br.com.energias.treinamento.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.energias.treinamento.daos.CategoriaDao;
import br.com.energias.treinamento.models.Categoria;

@Controller
@RequestMapping("/categoria")
@Transactional
public class CategoriaController
{

   @Autowired
   private CategoriaDao categoriaDao;

   @GetMapping("/form")
   public ModelAndView form(Categoria categoria)
   {
      ModelAndView modelAndView = new ModelAndView("categoria/form-add");
      return modelAndView;

   }

   @PostMapping
   public ModelAndView save(@Valid Categoria categoria, BindingResult bindingResult)
   {
      if (bindingResult.hasErrors())
      {
         return form(categoria);
      }
      categoriaDao.save(categoria);
      return new ModelAndView("redirect:/categoria");
   }

   @GetMapping("/{id}")
   public ModelAndView load(@PathVariable("id") Integer id)
   {
      ModelAndView modelAndView = new ModelAndView("categoria/form-update");
      modelAndView.addObject("categoria", categoriaDao.findById(id));
      return modelAndView;
   }

   @GetMapping
   public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page)
   {
      ModelAndView modelAndView = new ModelAndView("categoria/list");
      modelAndView.addObject("paginatedList", categoriaDao.paginated(page, 10));
      return modelAndView;
   }

   @GetMapping("/remove/{id}")
   public String remove(@PathVariable("id") Integer id)
   {
      Categoria categoria = categoriaDao.findById(id);
      categoriaDao.remove(categoria);
      return "redirect:/categoria";
   }

   @PostMapping("/{id}")
   public ModelAndView update(@PathVariable("id") Integer id, @Valid Categoria categoria, BindingResult bindingResult)
   {
      categoria.setId(id);
      if (bindingResult.hasErrors())
      {
         return new ModelAndView("categoria/form-update");
      }
      categoriaDao.update(categoria);
      return new ModelAndView("redirect:/categoria");
   }
}
