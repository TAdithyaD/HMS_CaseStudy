package com.hospital.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.declaration.PatientDeclaration;

public class HospitalDao
{
	static String databaseName= "hospitalmanagement";
	static String url = "jdbc:mysql://localhost:3306/" + databaseName;
	static String username = "ForHospital";
	static String password = "hospital12$";
	
	public static Connection getConnection()  // CONNECTION
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,username,password);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	
	public static int create(PatientDeclaration pd)  // INSERT / CREATE
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("insert into hospital_table (patientSSNId,patientName,patientAge,dateOfAdmission,typeOfBed,address,state,city) values(?,?,?,?,?,?,?,?)");
			
			ps.setInt(1,pd.getPatientSSNId());
			ps.setString(2,pd.getPatientName());
			ps.setInt(3,pd.getPatientAge());
			ps.setString(4,pd.getDateOfAdmission());
			ps.setString(5,pd.getTypeOfBed());		
			ps.setString(6,pd.getAddress());
			ps.setString(7,pd.getState());
			ps.setString(8,pd.getCity());
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static int update(PatientDeclaration pd)  // UPDATE
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("update hospital_table set patientSSNId=?,patientName=?,patientAge=?,dateOfAdmission=?,typeOfBed=?,address=?,state=?,city=? where patientId=?");
			
			ps.setInt(1,pd.getPatientSSNId());
			ps.setString(2,pd.getPatientName());
			ps.setInt(3,pd.getPatientAge());
			ps.setString(4,pd.getDateOfAdmission());
			ps.setString(5,pd.getTypeOfBed());		
			ps.setString(6,pd.getAddress());
			ps.setString(7,pd.getState());
			ps.setString(8,pd.getCity());
												//where
			ps.setInt(9,pd.getPatientId());
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static int delete(PatientDeclaration pd)  // DELETE
	{
		int status=0;
		
		try
		{
			Connection con = getConnection();
			
			PreparedStatement ps = con.prepareStatement("delete from hospital_table where patientId=?");
			
			ps.setInt(1,pd.getPatientId());  // Deleting record using ID
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static List<PatientDeclaration> getAllRecords()  // READ
	{
		List<PatientDeclaration> list=new ArrayList<PatientDeclaration>();
	
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from hospital_table");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{	
				
				PatientDeclaration pd=new PatientDeclaration();
								
				pd.setPatientId(rs.getInt(1));
				pd.setPatientSSNId(rs.getInt(2));
				pd.setPatientName(rs.getString(3));
				pd.setPatientAge(rs.getInt(4));				
				pd.setDateOfAdmission(rs.getString(5));				
				pd.setTypeOfBed(rs.getString(6));				
				pd.setAddress(rs.getString(7));
				pd.setState(rs.getString(8));
				pd.setCity(rs.getString(9));
				
				list.add(pd);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return list;
	}
	
	public static PatientDeclaration ProfileById(int id)  // READ using ID
	{
		PatientDeclaration pd=null;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from hospital_table where patientId=?");
			
			ps.setInt(1,id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				pd=new PatientDeclaration();
				
				pd.setPatientId(rs.getInt("patientId"));
				pd.setPatientSSNId(rs.getInt("patientSSNId"));
				pd.setPatientName(rs.getString("patientName"));
				pd.setPatientAge(rs.getInt("patientAge"));				
				pd.setDateOfAdmission(rs.getString("dateOfAdmission"));				
				pd.setTypeOfBed(rs.getString("typeOfBed"));				
				pd.setAddress(rs.getString("address"));
				pd.setState(rs.getString("state"));
				pd.setCity(rs.getString("city"));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return pd;
	}
}
