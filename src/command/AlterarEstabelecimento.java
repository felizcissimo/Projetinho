package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Estabelecimento;
import service.EstabelecimentoService;

public class AlterarEstabelecimento implements Command {

	@Override
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pIdEst = request.getParameter("idEst");
		String pNomeFantasia = request.getParameter("nomeFantasia");
		String pEndereco = request.getParameter("endereco");
		int idEst = -1;
		try {
			idEst = Integer.parseInt(pIdEst);
		} catch (NumberFormatException e) {

		}

		Estabelecimento estabelecimento = new Estabelecimento();
		estabelecimento.setIdEst(idEst);
		estabelecimento.setNomeFantasia(pNomeFantasia);
		estabelecimento.setEndereco(pEndereco);
		EstabelecimentoService es = new EstabelecimentoService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();

		es.atualizar(estabelecimento);
		@SuppressWarnings("unchecked")
		ArrayList<Estabelecimento> lista = (ArrayList<Estabelecimento>) session
				.getAttribute("lista");
		int pos = busca(estabelecimento, lista);
		lista.remove(pos);
		lista.add(pos, estabelecimento);
		session.setAttribute("lista", lista);
		request.setAttribute("estabelecimento", estabelecimento);
		view = request.getRequestDispatcher("VisualizarEstabelecimento.jsp");

		view.forward(request, response);

	}

	public int busca(Estabelecimento estabelecimento, ArrayList<Estabelecimento> lista) {
		Estabelecimento to;
		for (int i = 0; i < lista.size(); i++) {
			to = lista.get(i);
			if (to.getIdEst() == estabelecimento.getIdEst()) {
				return i;
			}
		}
		return -1;
	}

}
