package com.nt.service;

import com.nt.dto.EmployeeDTO;

public class EmployeeMgmtServiceImpl implements EmployeeMgmtService {

	@Override
	public void fetchSalaryDetails(EmployeeDTO dto) {
		   float gSal=0.0f;
		   float netSal=0.0f;
			//calc grossSalary and netSalary
		     gSal=dto.getEsalary()+dto.getEsalary()*0.3f;
		     netSal=gSal- (gSal*0.1f);
		     //store results into DTO
		     dto.setNetSalary(netSal);
		     dto.setGrossSalary(gSal);
		    
	}

}
