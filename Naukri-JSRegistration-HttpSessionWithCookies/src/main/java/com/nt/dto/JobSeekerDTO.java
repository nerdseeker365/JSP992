package com.nt.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class JobSeekerDTO  implements Serializable {
	private String name;
	private String addrs;
	private  float age;
	private  String skill;
	private float experience;
	private  String location;
	private float expectedSalary;

}
