package shop.dao;

import java.io.Closeable;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import shop.bean.OptionBean;
import shop.bean.ProductBean;

public class shopDao {
	private SqlSessionFactory sqlSessionFactory;

	public shopDao() {
		sqlSessionFactory = util.SqlSessionFactoryManager.getSqlSessionFactory();

	}

	private void closeSqlSession(Closeable c) {
		try {
			if (c != null)
				c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<ProductBean> selectProduct() {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectProduct");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}

	}

	public ProductBean selectOne(int pno) {

		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectOne("selectOne", pno);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}
	}

	public List<OptionBean> selectPoption(int pno) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			return sqlSession.selectList("selectPoption", pno);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			closeSqlSession(sqlSession);
		}

	}

}
