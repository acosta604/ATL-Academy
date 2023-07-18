package academy.atl.trivia;

import academy.atl.trivia.entities.Category;
import academy.atl.trivia.entities.ChatGptClient;
import academy.atl.trivia.entities.Question;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class TriviaController{

        @GetMapping("/question/{category}")
        public String  setQuestion(@PathVariable String category) {
            ChatGptClient chatGpt = new ChatGptClient();
          String requestJson = chatGpt.sendQuestion("Estoy armando una trivia, necesito que me des una pregunta de la categoria " + category+ ", con la siguiente estructura de JSON. LA respuesta de la pregunta no siempre tiene que ser la primera, tiene que variar:\n" +
                  "\n" +
                  "{\n" +
                  "  \"category\": \"aca va el nombre de la categoria\",\n" +
                  "  \"question\": \"aca va la pregunta\",\n" +
                  "  \"options\": [\n" +
                  "    \"aca va la opcion 1\",\n" +
                  "    \"aca va la opcion 2\",\n" +
                  "    \"aca va la opcion 3\"\n" +
                  "  ],\n" +
                  "  \"answer\": aqui va la respuesta correcta en caso de ser la primera es el numero 0 en caso de ser la segunda es el 1 y en caso de ser la tercera es el 2,\n" +
                  "  \"explanation\": \"aca tienes que poner una explicacion diciendo porque es la respuesta correcta\"\n" +
                  "}");

            return requestJson;
        }


        @GetMapping("/categories")

        public List<Category> getCategories() {

            List<Category> categories = new ArrayList<>();

             Category cat1 = new Category();
            cat1.setCategory("Arte");
            cat1.setDescription("Preguntas relacionadas con pintura, escultura, arquitectura y otras formas de expresión artística.");

            Category cat2 = new Category();
            cat2.setCategory("Deporte");
            cat2.setDescription("Preguntas relacionadas con el mundo del deporte.");

            Category cat3 = new Category();
            cat3.setCategory("Cultura");
            cat3.setDescription("Preguntas relacionadas con arte, literatura, música y otras expresiones culturales.");


            Category cat4 = new Category();
            cat4.setCategory("Cine");
            cat4.setDescription("Preguntas relacionadas con películas, directores, actores y otros aspectos del cine.");

            Category cat5 = new Category();
            cat5.setCategory("History");
            cat5.setDescription("Preguntas relacionadas con eventos históricos, personajes y períodos importantes.");

            Category cat6 = new Category();
            cat6.setCategory("Ciencia");
            cat6.setDescription("Preguntas relacionadas con diferentes ramas de la ciencia, descubrimientos y avances científicos.");


            categories.add(cat1);
            categories.add(cat2);
            categories.add(cat3);
            categories.add(cat4);
            categories.add(cat5);
            categories.add(cat6);


            return categories;
        }
    }






