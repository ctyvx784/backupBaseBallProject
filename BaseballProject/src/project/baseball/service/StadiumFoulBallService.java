package project.baseball.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.baseball.dao.SearchDAO;
import project.baseball.dto.StadiumBallDTO;

public class StadiumFoulBallService implements UserService {

	@Override
	public NextPage execute(HttpServletRequest request, HttpServletResponse response) {
		// Service에 들어오는지 확인
		System.out.println("2. StadiumAllBallService");

		// 1. 파라미터인 구장 이름 받기
		String stadium = request.getParameter("stadium");

		// 2. DB 처리
		List<StadiumBallDTO> list = new ArrayList<>();

		try {
			list = SearchDAO.getInstance().selectStadiumFoul(stadium);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*for (StadiumBallDTO sbd : list) {
			System.out.println(sbd);
		}*/
		
		//3. DB 결과 처리
		request.setAttribute("list", list);
		//리스트가 잘 담겼는지 확인
		System.out.println(list);
				
		//이동할 다음 페이지 처리
		NextPage nextPage = new NextPage();
		//이동할 페이지 url 넣을것
		nextPage.setPageName("./user/search.jsp");
		nextPage.setRedirect(false);
		return nextPage;
	}

}
