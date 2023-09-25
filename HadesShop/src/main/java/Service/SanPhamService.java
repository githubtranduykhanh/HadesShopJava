package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.SanPham;

public class SanPhamService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<SanPham> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_SanPham", condition, orderBy);
        ArrayList<SanPham> sanPhams = new ArrayList<>();
        while ( result.next() ) {
        	SanPham sanPham = new SanPham();
        	sanPham.setMaSP(result.getInt("MaSP"));
        	sanPham.setTenSP(result.getString("TenSP"));
        	sanPham.setMauID(result.getInt("MauID"));
        	sanPham.setSizeID(result.getInt("SizeID"));
        	sanPham.setChatLieuID(result.getInt("ChatLieuID"));
        	sanPham.setAnhSP(result.getString("AnhSP"));
        	sanPham.setSoLuongSP(result.getInt("SoLuongSP"));
        	sanPham.setGiaSP(result.getDouble("GiaSP"));
        	sanPham.setMotaSP(result.getString("MotaSP"));
        	sanPham.setNgayTao(result.getTimestamp("NgayTao"));
        	sanPham.setNgayHuy(result.getTimestamp("NgayHuy"));
        	sanPham.setMaDM(result.getInt("MaDM"));
        	sanPham.setNhomID(result.getInt("NhomID"));
        	sanPhams.add(sanPham);
        }
        connect.Close();
        return sanPhams;
    }
    
    public ArrayList<SanPham> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<SanPham> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(SanPham sp) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TenSP", sp.getTenSP());
        insertValues.put("MauID", sp.getMauID());
        insertValues.put("SizeID", sp.getSizeID());
        insertValues.put("ChatLieuID", sp.getChatLieuID());
        insertValues.put("AnhSP", sp.getAnhSP());
        insertValues.put("SoLuongSP", sp.getSoLuongSP());
        insertValues.put("GiaSP", sp.getGiaSP());
        insertValues.put("MotaSP", sp.getMotaSP());
        insertValues.put("NgayTao", sp.getNgayTao());
        insertValues.put("NgayHuy", sp.getNgayHuy());
        insertValues.put("MaDM", sp.getMaDM());
        insertValues.put("NhomID", sp.getNhomID());
        
        Boolean check = connect.InsertUTF8SanPham("db_SanPham", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(SanPham sp) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaSP = '"+sp.getMaSP()+"'";
        
        Boolean check = connect.Delete("db_SanPham", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(SanPham sp) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TenSP", sp.getTenSP());
        insertValues.put("MauID", sp.getMauID());
        insertValues.put("SizeID", sp.getSizeID());
        insertValues.put("ChatLieuID", sp.getChatLieuID());
        insertValues.put("AnhSP", sp.getAnhSP());
        insertValues.put("SoLuongSP", sp.getSoLuongSP());
        insertValues.put("GiaSP", sp.getGiaSP());
        insertValues.put("MotaSP", sp.getMotaSP());
        insertValues.put("NgayTao", sp.getNgayTao());
        insertValues.put("NgayHuy", sp.getNgayHuy());
        insertValues.put("MaDM", sp.getMaDM());
        insertValues.put("NhomID", sp.getNhomID());
        
        String condition = " MaSP = '"+sp.getMaSP()+"'";
        
        Boolean check = connect.UpdateUTF8SanPham("db_SanPham", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
