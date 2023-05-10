package application.model;

import org.springframework.data.repository.CrudRepository;

public interface LivrosRepository extends CrudRepository<Livro, Integer> {
    
}