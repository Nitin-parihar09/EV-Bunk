package com.nitin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;

import java.util.List;

import com.nitin.conn.MyConnection;
import com.nitin.entity.Bookings;
import com.nitin.entity.Bunk;


public class EvDaoDef implements EvDao {

	private MyConnection myConnection;
	
	public EvDaoDef() {
		myConnection = new MyConnection();
	}
	
	@Override
	public void addAdmin(Bunk bunk) {
		try {
			System.out.println("Inside Add Admin");
			Connection con = myConnection.getMyConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into admin_Info values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, bunk.getId());
			ps.setString(2, bunk.getBunk_name());
			ps.setString(3, bunk.getBunk_address());
			ps.setString(4, bunk.getNearby_area());
			ps.setString(5, bunk.getState());
			ps.setString(6, bunk.getCity());
			ps.setInt(7, bunk.getNo_ofSlots());
			ps.setString(8, bunk.getUser_name());
			ps.setString(9, bunk.getPassword());
			
			ps.executeUpdate();
			con.close();		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Bunk select(String user_name) {
		Bunk bunk = new Bunk();
		try {
			Connection con = myConnection.getMyConnection();
			PreparedStatement ps = con.prepareStatement(
					"select * from admin_Info where User_name = ?");
			ps.setString(1, user_name);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {		
				bunk.setId(rs.getInt(1));
				bunk.setBunk_name(rs.getString(2));
				bunk.setBunk_address(rs.getString(3));
				bunk.setNearby_area(rs.getString(4));
				bunk.setState(rs.getString(5));
				bunk.setCity(rs.getString(6));
				bunk.setNo_ofSlots(rs.getInt(7));
				bunk.setUser_name(rs.getString(8));
				bunk.setPassword(rs.getString(9));
			}
			System.out.println(bunk.getUser_name());
			System.out.println(bunk.getPassword());
			con.close();		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bunk;
	}

	@Override
	public void createSlots(String t_name,int slots) {
		try {
			System.out.println("Slot Table Create");
			Connection con = myConnection.getMyConnection();
			String s = "create table "+ t_name +" (date varchar(20) NOT NULL, slot int NOT NULL, time int NOT NULL, primary key(date, slot, time))";
			PreparedStatement ps = con.prepareStatement(s);
			
			ps.executeUpdate();
			con.close();			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean bookSlot(String t_name, String date, int slot, int time) {
		int i = 0;
		try {
			System.out.println("BookSlot");
			Connection con = myConnection.getMyConnection();
			String s = "insert into "+t_name+" values (?,?,?)";
			PreparedStatement ps = con.prepareStatement(s);
			
			ps.setString(1, date);
			ps.setInt(2, slot);
			ps.setInt(3, time);
			
			i = ps.executeUpdate();
			con.close();		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(i>0)
			return true;
		else
			return false;
		
	}


	@Override
	public List<Bunk> selectAll(String state,String city,String area) {
		List<Bunk> lst = new ArrayList<Bunk>();
		try {
			Connection con = myConnection.getMyConnection();
			PreparedStatement ps = con.prepareStatement("select User_name, Bunk_address, No_ofSlots from admin_info where State=? and City=? and Nearby_area=?");
			ps.setString(1, state);
			ps.setString(2, city);
			ps.setString(3, area);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Bunk bunk = new Bunk();
				bunk.setUser_name(rs.getString(1));
				bunk.setBunk_address(rs.getString(2));
				bunk.setNo_ofSlots(rs.getInt(3));
				lst.add(bunk);	
			}
			con.close();		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
	}

	@Override
	public void createBookings(String t_name) {
		try {
			System.out.println("Bookings");
			Connection con = myConnection.getMyConnection();
			String s = "create table "+ t_name +" (user varchar(30) not null,vehicleNo varchar(30) not null, slotNo int not null, time int not null, date varchar(12) not null)";
			PreparedStatement ps = con.prepareStatement(s);
			
			ps.executeUpdate();
			con.close();			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertBookings(String t_name, String user, String vehicleNo, int slot, int time, String date) {
		try {
			System.out.println("Inside Add Admin");
			Connection con = myConnection.getMyConnection();
			String s = "insert into "+t_name+" values(?,?,?,?,?);";
			PreparedStatement ps = con.prepareStatement(s);
			ps.setString(1, user);
			ps.setInt(3, slot);
			ps.setString(2, vehicleNo);
			ps.setInt(4, time);
			ps.setString(5, date);
			ps.executeUpdate();
			con.close();		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Bookings> selectBookings(String t_name) {
		List<Bookings> lst = new ArrayList<Bookings>();
		try {
			Connection con = myConnection.getMyConnection();
			String s = "select * from "+t_name+"";
			PreparedStatement ps = con.prepareStatement(s);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Bookings booking = new Bookings();
				booking.setUsername(rs.getString(1));
				booking.setVehicleNo(rs.getString(2));
				booking.setSlot(rs.getInt(3));
				booking.setTime(rs.getInt(4));
				booking.setDate(rs.getString(5));
				lst.add(booking);	
			}
			con.close();		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
		
	}

}
