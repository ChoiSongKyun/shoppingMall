package shop.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import shop.bean.ProductBean;



public class shopDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public shopDao(){
		sqlSessionFactory=util.SqlSessionFactoryManager.getSqlSessionFactory();
		
	}
	public List<ProductBean> selectProduct() throws Exception{
		
		return sqlSessionFactory.openSession().selectList("selectProduct");
     }
	
	public ProductBean selectOne(int pno)throws Exception{
		return sqlSessionFactory.openSession().selectOne("selectOne",pno);
	}
	
}
