package com.noc.questionservice.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;

import com.noc.questionservice.service.QuestionServiceCache;
import com.noc.questionservice.service.QuestionServiceCache.CatSubCatMap;

public class QuestionDAO {
	
	private Logger logger = Logger.getLogger(QuestionDAO.class);

	@Autowired
	private JdbcTemplate jt;

	public void addCategory(String catName) {
		logger.info("QuestionDAO.addCategory"); 
		int count;
		String sql="INSERT INTO T_CATEGORIES "
				+ "(F_CAT_ID, F_CAT_NAME) "
				+ "VALUES (S_CAT_SEQ.NEXTVAL, ?)";
		
		count = jt.update(sql, catName);
		logger.info("Cat update count:" + count + "|categoryName:" + catName);
	}

	public void addSubCategory(String catName, String subCatName) {
		logger.info("QuestionDAO.addSubCategory");

		/*int count;
		
		String sql="INSERT INTO T_SUB_CATEGORIES "
				+ "(F_SUB_CAT_ID, F_SUB_CAT_NAME, F_CAT_ID) "
				+ "VALUES (S_SUB_CAT_SEQ.NEXTVAL, ?, (select F_CAT_ID from T_CATEGORIES where F_CAT_NAME = ?))";
		
		count = jt.update(sql, subCatName, catName);*/
		SimpleJdbcCall proc = new SimpleJdbcCall(jt).withProcedureName("insert_sub_cat");
		MapSqlParameterSource inParams = new MapSqlParameterSource();
		inParams.addValue("sub_cat_name", subCatName);
		inParams.addValue("cat_name", catName);
		proc.execute(inParams);
		

		//logger.info("SubCat update count:" + count + "|categoryName:" + catName + "|subCatName:" + subCatName);
	}

	public List<CatSubCatMap> refreshCatNSubCat() {
		
		String sql = "select f_cat_name, f_sub_cat_name from t_categories cat left join t_sub_categories subcat on cat.f_cat_id = subcat.f_cat_id";

		RowMapper<CatSubCatMap> catSubCatMapper = new RowMapper<CatSubCatMap>(){
			@Override
			public CatSubCatMap mapRow(ResultSet rs, int index) throws SQLException {

				CatSubCatMap catSubCatMap = new  QuestionServiceCache().new CatSubCatMap();
				catSubCatMap.setCatName(rs.getString("f_cat_name"));
				catSubCatMap.setSubCatName(rs.getString("f_sub_cat_name"));
				
				return catSubCatMap;
			}
		};
		return jt.query(sql, catSubCatMapper);
	}
}
