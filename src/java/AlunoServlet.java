import Classes.Aluno;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
    name = "AlunoServlet",
    urlPatterns = "/"
)
public class AlunoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            Aluno aluno1 = new Aluno(1, "Luiz", "luiz@outlook.com");
            
            List<Aluno> alunos = new ArrayList<Aluno>();
            alunos.add(aluno1);
            
            
            request.setAttribute("Alunos: ", alunos);
            request.getRequestDispatcher("/listaAlunos.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return " ";
    }// </editor-fold>

}
