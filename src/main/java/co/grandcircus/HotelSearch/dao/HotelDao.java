package co.grandcircus.HotelSearch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import co.grandcircus.HotelSearch.entity.hotel;


@Repository
@Transactional
public class HotelDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<hotel> findByCity(String city) {
		return em.createQuery("from hotel where city = :n order by pricePerNight", hotel.class).setParameter("n", city).getResultList();
		}
	}


