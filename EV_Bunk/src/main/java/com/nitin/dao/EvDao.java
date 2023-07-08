package com.nitin.dao;

import java.util.Date;
import java.util.List;

import com.nitin.entity.Bookings;
import com.nitin.entity.Bunk;


public interface EvDao {
	void addAdmin(Bunk bunk);
	Bunk select(String user_name);
	public void createSlots(String t_name,int slots);
	public void createBookings(String t_name);
	boolean bookSlot(String t_name, String date, int slot, int time);
	void insertBookings(String t_name, String user, String vehicleNo, int slot, int time, String date);
	public List<Bunk> selectAll(String state,String city,String area);
	public List<Bookings> selectBookings(String t_name);
}
