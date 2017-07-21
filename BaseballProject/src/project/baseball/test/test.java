package project.baseball.test;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import project.baseball.dao.SearchDAO;
import project.baseball.dto.StadiumBallDTO;


public class test {

	public static void main(String[] args) {
		List<StadiumBallDTO> list = new ArrayList<>();
		try {
			//list = SearchDAO.getInstance().selectStadiumAllBall("사직야구장");
			//list = SearchDAO.getInstance().selectStadiumFoul("사직야구장");
			list = SearchDAO.getInstance().selectStadiumHomeRun("사직야구장");
			for(StadiumBallDTO sbt : list){
				System.out.println(sbt.getbSeatCode());
				System.out.println(sbt.getCountBallSeatCode());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
