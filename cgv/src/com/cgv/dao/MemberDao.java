package com.cgv.dao;

import com.cgv.vo.MemberVO;

public class MemberDao extends DBConn {
    /**
     * insert(MemberVO vo) : 회원가입
     */
    public int insert(MemberVO vo) {
        int result = 0;
        String sql = "insert into cgv_member values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getId());
            pstmt.setString(2, vo.getPass());
            pstmt.setString(3, vo.getName());
            pstmt.setString(4, vo.getGender());
            pstmt.setString(5, vo.getEmail1());
            pstmt.setString(6, vo.getEmail2());
            pstmt.setString(7, vo.getAddr1());
            pstmt.setString(8, vo.getAddr2());
            pstmt.setString(9, vo.getTel());
            pstmt.setString(10, vo.getHp1());
            pstmt.setString(11, vo.getHp2());
            pstmt.setString(12, vo.getHp3());
            pstmt.setString(13, vo.getHobbylist());
            pstmt.setString(14, vo.getIntro());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * getLoginResult(MemberVO vo) : 로그인 체크
     */
    public int getLoginResult(MemberVO vo) {
        int result = 0;
        String sql = "select count(*) from cgv_member where id=? and pass=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getId());
            pstmt.setString(2, vo.getPass());

            rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getInt(1);
            }

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
