package project.baseball.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import project.baseball.dto.StadiumBallDTO;
import project.baseball.util.DBUtil;

public class SearchDAO {
	// 싱글턴 패턴--------------------------------------
	private static SearchDAO dao = new SearchDAO();

	private SearchDAO() {
	}

	public static SearchDAO getInstance() {
		return dao;
	}

	// ----------------------------------------------
	//특정 구장에 떨어진 좌석별 홈런+파울의 개수
	public List<StadiumBallDTO> selectStadiumAllBall(String sName) throws SQLException {
		//DAO에 들어오는지 확인
		System.out.println("3. SearchDAO");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<StadiumBallDTO> list = new ArrayList<>();
		StadiumBallDTO sbd;
		try {
			con = DBUtil.getConnection();
			String sql = "select b.bseatcode bsc, count(b.bseatcode) cnt"
					+ " from stadium s join game g on s.snum=g.snum"
					+ " join ballinfo b on b.gcode = g.gcode"
					+ " where s.sname=?"
					+ " group by b.bseatcode" 
					+ " order by b.bseatcode";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sName);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				sbd = new StadiumBallDTO(rs.getString("bsc"), rs.getInt("cnt"));
				list.add(sbd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, pstmt, con);
		}
		System.out.println(list.size());
		return list;
	}
	//특정 구장에 떨어진 좌석별 파울의 개수
	public List<StadiumBallDTO> selectStadiumFoul(String sName) throws SQLException {
		//DAO에 들어오는지 확인
		System.out.println("3. SearchDAO");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<StadiumBallDTO> list = new ArrayList<>();
		StadiumBallDTO sbd;
		try {
			con = DBUtil.getConnection();
			String sql = "select b.bseatcode bsc, count(b.bseatcode) cnt"
					+ " from stadium s join game g on s.snum=g.snum"
					+ " join ballinfo b on b.gcode = g.gcode"
					+ " where s.sname=? and b.hf = 'F'" 
					+ " group by b.bseatcode" 
					+ " order by b.bseatcode";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sName);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				sbd = new StadiumBallDTO(rs.getString("bsc"), rs.getInt("cnt"));
				list.add(sbd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, pstmt, con);
		}
		System.out.println(list.size());
		return list;
	}
	
	//특정 구장에 떨어진 좌석별 홈런의 개수
	public List<StadiumBallDTO> selectStadiumHomeRun(String sName) throws SQLException {
		//DAO에 들어오는지 확인
		System.out.println("3. SearchDAO");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<StadiumBallDTO> list = new ArrayList<>();
		StadiumBallDTO sbd;
		try {
			con = DBUtil.getConnection();
			String sql = "select b.bseatcode bsc, count(b.bseatcode) cnt"
					+ " from stadium s join game g on s.snum=g.snum"
					+ " join ballinfo b on b.gcode = g.gcode"
					+ " where s.sname=? and b.hf = 'H'" 
					+ " group by b.bseatcode" 
					+ " order by b.bseatcode";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sName);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				sbd = new StadiumBallDTO(rs.getString("bsc"), rs.getInt("cnt"));
				list.add(sbd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, pstmt, con);
		}
		System.out.println(list.size());
		return list;
	}

}
