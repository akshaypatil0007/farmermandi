package com.mandi.AllTrader.orm.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.mandi.AllFarmer.orm.entities.AddCrop;
import com.mandi.AllTrader.orm.entities.Trader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class TraderDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	// save student
	@Transactional
	public boolean createTrader(Trader trader) {
		try {
			this.hibernateTemplate.save(trader);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	public boolean traderValidate(long mno, String pwd) {
		boolean isValidUser = false;
		String sqlQuery = "from traderdetail t where t.mobileNo= ?0 and t.password= ?1";
		try {
			List<Trader> f = (List<Trader>) hibernateTemplate.find(sqlQuery, mno, pwd);
			if (f != null && f.size() > 0) {
				isValidUser = true;
			}
		} catch (Exception e) {
			isValidUser = false;
		}
		return isValidUser;
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<AddCrop> searchCrop(String crop) {
		String sqlQuery = "from addcrop where cropName=?0";
		List<AddCrop> f = (List<AddCrop>) hibernateTemplate.find(sqlQuery, crop);
		return f;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
}
