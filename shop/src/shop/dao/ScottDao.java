package shop.dao;

import java.util.HashMap;
import java.util.List;
import com.ibatis.sqlmap.client.SqlMapClient;

import shop.bean.EmpDto;


public class ScottDao {
	private static SqlMapClient sqlMapper;
	static{
		sqlMapper=util.ServiceUtil.getSqlMap();
	}
	public static List<EmpDto>selectEmp(HashMap<String, String>map)throws Exception{
		return sqlMapper.queryForList("scott.selectEmp",map);
	}
	public static Object selectEmpOne(int empno)throws Exception{
		return sqlMapper.queryForObject("scott.selectEmpOne", empno);
	}
	
	

}








