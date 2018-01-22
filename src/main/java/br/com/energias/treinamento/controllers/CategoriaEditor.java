package br.com.energias.treinamento.controllers;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.energias.treinamento.daos.CategoriaDao;
import br.com.energias.treinamento.models.Categoria;

@Component
public class CategoriaEditor extends PropertyEditorSupport {

    private @Autowired CategoriaDao countryService;

    // Converts a String to a Country (when submitting form)
    @Override
    public void setAsText(String text) {
        Categoria c = this.countryService.findById(Integer.valueOf(text));

        this.setValue(c);
    }

}