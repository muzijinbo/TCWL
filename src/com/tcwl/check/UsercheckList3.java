package com.tcwl.check;
import DBBean.Bean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * ConnectionUtil
 * @author 李锦package tables;

 *
 */
public class UsercheckList3 {

	/**
	 * 数据库的链接对象
	 * @return
	 */
	public static List<HashMap<String,Object>> Qfind(String OrderID,String UserID,String OrderState)
	{
		Bean db=new Bean();
		
		ResultSet rs=null;
		List<HashMap<String,Object>> maps=null;
		try
		{
			//获取数据库连接
			String sql="select distinct ID,Des,UserID,Date,OrderState from order1 where aa=1 and OrderState=2 ";
			if(OrderID!=null){
				int ID=Integer.parseInt(OrderID);
				sql+=" and ID="+ID;
			}
			if(UserID!=null){
				int UserIDI=Integer.parseInt(UserID);
				sql+=" and UserID="+UserIDI;
			}
			if(OrderState!=null){
				sql+=" and OrderState='"+OrderState+"'";
			}
			
			System.out.println(sql);
			ResultSet rs1 = db.executeQuery(sql);
			String str="";
			maps=new ArrayList<HashMap<String,Object>>();
			HashMap<String,Object> map = null;
			while(rs1.next())
			{
				if(rs1.getString("OrderState").equals("1"))
				{
					str="未派送";
				}
				else if(rs1.getString("OrderState").equals("2"))
				{
					str="正在派送";
				}
				else
				{
					str="已送达";
				}
				map=new HashMap<String,Object>();
				map.put("ID", rs1.getInt("ID"));
				map.put("Des", rs1.getString("Des"));
				map.put("UserID", rs1.getInt("UserID"));
				map.put("OrderState", str);
				map.put("Date", rs1.getString("Date"));

				maps.add(map);
				
			}
			
		}catch(SQLException ex)
		{
			ex.printStackTrace();
			
		}
		return maps;
		
	}
	
	public static void main(String[] args) {
		
		 	List<HashMap<String,Object>> maps = Qfind(null,null,null);
			for (HashMap<String, Object> hashMap : maps) {
				System.out.println(hashMap.get("ID")+"==="+hashMap.get("Des")+"==="+hashMap.get("UserID")+"=="+hashMap.get("Date")+"=="+hashMap.get("OrderState"));
			}
	}
}
