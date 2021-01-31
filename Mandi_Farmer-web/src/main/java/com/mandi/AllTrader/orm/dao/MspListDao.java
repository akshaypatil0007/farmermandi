package com.mandi.AllTrader.orm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.mandi.AllTrader.orm.entities.MspList;

@Repository
@Component
public class MspListDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public List<MspList> mspList() {
		List<MspList> m = hibernateTemplate.loadAll(MspList.class);
		return m;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

}
