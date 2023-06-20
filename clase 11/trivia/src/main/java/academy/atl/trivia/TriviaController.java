package academy.atl.trivia;

import academy.atl.trivia.entities.Category;
import academy.atl.trivia.entities.Question;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class TriviaController{

        @GetMapping("/question/{category}")
        public Question getQuestion(@PathVariable String category) {
            Question question = new Question();
            question.setCategory(category);
            List<String> options = new ArrayList<>();



            switch (category) {
                case "Cultura":
                    question.setQuestion("¿Cuál es el significado cultural del Día de los Muertos en México?");
                    question.setAnswer(1);
                    question.setExplanation("El Día de los Muertos es una festividad mexicana que honra a los difuntos. Se celebra el 1 y 2 de noviembre, y se cree que durante esos días los espíritus de los seres queridos fallecidos regresan para reunirse con sus familias.");

                    options.add("Celebrar el Año Nuevo");
                    options.add("Honrar a los difuntos");
                    options.add("Rendir homenaje a los artistas");

                    break;

                case "History":
                    question.setQuestion("¿Quién fue el primer presidente de Estados Unidos?");
                    question.setAnswer(1);
                    question.setExplanation("El primer presidente de Estados Unidos fue George Washington. Fue elegido como presidente en 1788 y asumió el cargo el 30 de abril de 1789.");

                    options.add( "Thomas Jefferson");
                    options.add("George Washington");
                    options.add("Abraham Lincoln");

                    break;

                case "Arte":
                    question.setQuestion("¿Quién pintó la famosa obra de arte 'La Mona Lisa'?");
                    question.setAnswer(1);
                    question.setExplanation("'La Mona Lisa' fue pintada por Leonardo da Vinci, uno de los artistas más famosos del Renacimiento. La pintura es conocida por su enigmática sonrisa y se encuentra en el Museo del Louvre en París.");

                    options.add( "Pablo Picasso");
                    options.add("Leonardo da Vinci");
                    options.add("Vincent van Gogh");
                    break;

                case "Deporte":
                    question.setQuestion("¿Cuál es el deporte más popular en el mundo?");
                    question.setAnswer(1);
                    question.setExplanation("El fútbol (también conocido como soccer en algunos países) es considerado el deporte más popular a nivel mundial. Es jugado en casi todos los países y cuenta con una gran base de seguidores.");

                    options.add("Baloncesto");
                    options.add("Fútbol");
                    options.add("Tenis");

                    break;

                case "Ciencia":
                    question.setQuestion("¿Cuál es la ley de la física que describe la acción y reacción entre dos objetos?");
                    question.setAnswer(2);
                    question.setExplanation("La tercera ley de Newton, también conocida como ley de acción y reacción, establece que por cada acción hay una reacción de igual magnitud pero en sentido opuesto. Esta ley es fundamental en el estudio de la física.");
                    options.add("Primera ley de Newton");
                    options.add("Segunda ley de Newton");
                    options.add("Tercera ley de Newton");
                    break;

            }

            return question;
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






