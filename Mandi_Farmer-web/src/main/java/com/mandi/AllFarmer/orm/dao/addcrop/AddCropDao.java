package com.mandi.AllFarmer.orm.dao.addcrop;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import com.mandi.AllFarmer.orm.entities.AddCrop;

@Component
public class AddCropDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void addCropDao(AddCrop addCrop) {
		this.hibernateTemplate.save(addCrop);
	}

	@Transactional
	public List<AddCrop> viewAllCrop() {
		List<AddCrop> crop = (List<AddCrop>) hibernateTemplate.loadAll(AddCrop.class);
		return crop;
	}

	@Transactional
	public AddCrop getImage(int id) {
		AddCrop photo = (AddCrop) hibernateTemplate.get(AddCrop.class, id);
		return photo;
	}

	// get the single data(object)
	public AddCrop getCropById(int id) {
		// return the id of user inserted
		AddCrop crop = hibernateTemplate.get(AddCrop.class, id);
		return crop;
	}

	// Updating the data(object)
	@Transactional
	public void updateCrop(AddCrop p,int id) {
		Optional<AddCrop> crop = Optional.of(hibernateTemplate.get(AddCrop.class, id));
        
            AddCrop newEntity = crop.get();
            newEntity.setMobileno(p.getMobileno());
            newEntity.setQuantity(p.getQuantity());
            newEntity.setHarvestDate(p.getHarvestDate());
            newEntity.setVillage(p.getVillage());
            newEntity.setCity(p.getCity());
            newEntity.setPincode(p.getPincode());
            hibernateTemplate.save(newEntity);
             
	}

	// Deleting the data(object)
	@Transactional
	public boolean deleteCrop(int id) {
		boolean status = false;
		AddCrop delete = hibernateTemplate.get(AddCrop.class, id);
		try {
			hibernateTemplate.delete(delete);
			status = true;
		} catch (Exception e) {
			status = false;
		}
		return status;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
}
