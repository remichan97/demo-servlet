package com.aptech.demo.lab9.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.aptech.demo.lab9.entity.Product;
import com.aptech.demo.lab9.utils.DbConnect;

public class ProductModel {
	private Connection con;

	public ProductModel() throws SQLException, ClassNotFoundException {
		con = DbConnect.getConnection();
	}

	public Product getById(int id) throws SQLException {
		PreparedStatement pre = con.prepareStatement("select * from product where id = ?");
		pre.setInt(1, id);
		ResultSet rs = pre.executeQuery();
		Product p = new Product();
		while (rs.next()) {
			p.setId(id);
			p.setPname(rs.getString("pname"));
			p.setPdesc(rs.getString("pdesc"));
			p.setPrice(rs.getFloat("price"));
			p.setImage(rs.getString("image"));
		}
		return p;
	}
	public List<Product> getAll() throws SQLException {
		PreparedStatement pre = con.prepareStatement("select * from product");
		ResultSet rs = pre.executeQuery();
		List<Product> pList = new ArrayList<>();
		while (rs.next()) {
			Product p = new Product();
			p.setId(rs.getInt("id"));
			p.setPname(rs.getString("pname"));
			p.setPdesc(rs.getString("pdesc"));
			p.setPrice(rs.getFloat("price"));
			p.setImage(rs.getString("image"));
		}
		return pList;
	}

	public int save(Product p) throws SQLException {
		PreparedStatement pre = con.prepareStatement("insert into product (pname, pdesc, price, image) values (?,?,?,?)");
		pre.setString(1, p.getPname());
		pre.setString(2, p.getPdesc());
		pre.setFloat(3, p.getPrice());
		pre.setString(4, p.getImage());

		return pre.executeUpdate();
	}

	public int update(Product p) throws SQLException {
		PreparedStatement pre = con.prepareStatement("update product set pname = ?, pdesc = ?, price = ?, image = ? where id = ?");
		pre.setString(1, p.getPname());
		pre.setString(2, p.getPdesc());
		pre.setFloat(3, p.getPrice());
		pre.setString(4, p.getImage());
		pre.setInt(5, p.getId());

		return pre.executeUpdate();
	}

	public int delete(int id) throws SQLException {
		PreparedStatement pre = con.prepareStatement("delete from product where id = ?");
		pre.setInt(1, id);
		return pre.executeUpdate();
	}

}
