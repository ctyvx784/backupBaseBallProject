package project.baseball.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.baseball.dao.SearchDAO;
import project.baseball.dto.StadiumBallDTO;

public class StadiumHomeRunBallService implements UserService {

	@Override
	public NextPage execute(HttpServletRequest request, HttpServletResponse response) {
		// Service에 들어오는지 확인
		System.out.println("2. StadiumAllBallService");

		// 1. 파라미터인 구장 이름 받기
		String stadium = request.getParameter("stadium");
		System.out.println(stadium);

		// 2. DB 처리
		List<StadiumBallDTO> list = new ArrayList<>();

		try {
			list = SearchDAO.getInstance().selectStadiumHomeRun(stadium);

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
		System.out.println(list.get(0).getbSeatCode()+":"+list.get(0).getCountBallSeatCode());
		System.out.println(list.get(1).getbSeatCode()+":"+list.get(1).getCountBallSeatCode());
		System.out.println(list.get(2).getbSeatCode()+":"+list.get(2).getCountBallSeatCode());
		System.out.println(list.get(3).getbSeatCode()+":"+list.get(3).getCountBallSeatCode());
		System.out.println(list.get(4).getbSeatCode()+":"+list.get(4).getCountBallSeatCode());
		System.out.println(list.get(5).getbSeatCode()+":"+list.get(5).getCountBallSeatCode());
		
		//이동할 다음 페이지 처리
		NextPage nextPage = new NextPage();
		//이동할 페이지 url 넣을것
		nextPage.setPageName("./user/search.jsp");
		nextPage.setRedirect(false);
		return nextPage;
	}

}
