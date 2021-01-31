package com.mandi.AllFarmer.orm.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.orm.hibernate5.HibernateTemplate;
import com.mandi.AllFarmer.orm.entities.Farmer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class FarmerDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// save student

	@SuppressWarnings("finally")
	@Transactional
	public boolean createFarmer(Farmer farmer) {
		try {
			this.hibernateTemplate.save(farmer);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			return true;
		}
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	public boolean farmerValidate(long mno, String pwd) {
		boolean isValidUser = false;
		String sqlQuery = "from farmerdetail f where f.mobileNo= ?0 and f.password= ?1";
		try {
			List<Farmer> f = (List<Farmer>) hibernateTemplate.find(sqlQuery, mno, pwd);
			if (f != null && f.size() > 0) {
				isValidUser = true;
			}
		} catch (Exception e) {
			isValidUser = false;
		}
		return isValidUser;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
}
