package com.tech.prjm09.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.tech.prjm09.dto.BDto;
import com.tech.prjm09.dto.ReBrdimgDto;

@Mapper
public interface IDao {
//	public ArrayList<BDto> list();
//	public ArrayList<BDto> list(int start,int end);
	public ArrayList<BDto> list(int start,int end,String sk,String selNum);
	public void write(String bname, String btitle, String bcontent);
	public int selBid(); //max
	public void imgwrite(int bid,String originalFile,String changeFile);
	public BDto contentView(String sbid);
	public void upHit(String sbid);
	public ArrayList<ReBrdimgDto> selectImg(String sbid);
	public BDto modifyView(String sbid);
	public void modify(String bid,String bname,String btitle, String bcontent);
	public BDto reply_View(String sbid);
	public void reply(String bid,String bname,String btitle, String bcontent,String bgroup,String bstep,String bindent);
	public void replyShape(String strgroup, String strstep);
	public void delete(String bid);
//	public int selectBoardCount();
	public int selectBoardCount(String sk, String selNUm);
	public void upHit(String sbid);
	
}
