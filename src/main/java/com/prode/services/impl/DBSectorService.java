package com.prode.services.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.prode.model.entities.Sector;
import com.prode.repo.SectorRepository;
import com.prode.services.SectorService;

@Service
public class DBSectorService implements SectorService {

	@Resource
	SectorRepository sectorRepository;
	
	public List<Sector> getSectors(){
		List<Sector> sectors = sectorRepository.findAll(sortByName());
		
		return sectors;
	}
	
	public Sort sortByName() {
        return new Sort(Sort.Direction.ASC, "name");
    }
}