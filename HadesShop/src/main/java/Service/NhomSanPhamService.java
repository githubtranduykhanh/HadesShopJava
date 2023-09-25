package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.NhomSanPham;

public class NhomSanPhamService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<NhomSanPham> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_NhomSanPham", condition, orderBy);
        ArrayList<NhomSanPham> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	NhomSanPham model = new NhomSanPham();
        	model.setNhomID(result.getInt("NhomID"));
        	model.setTenNhom(result.getString("TenNhom"));   
        	model.setAnhDaiDien(result.getString("AnhDaiDien"));
        	model.setThuTu(result.getInt("ThuTu")); 
        	model.setSoSPHienThi(result.getInt("SoSPHienThi"));    	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<NhomSanPham> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<NhomSanPham> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(NhomSanPham model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("NhomID", model.getNhomID());
        insertValues.put("TenNhom", model.getTenNhom());
        insertValues.put("AnhDaiDien", model.getAnhDaiDien());
        insertValues.put("ThuTu", model.getThuTu());
        insertValues.put("SoSPHienThi", model.getSoSPHienThi());
           
        
        Boolean check = connect.Insert("db_NhomSanPham", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(NhomSanPham model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " NhomID = '"+model.getNhomID()+"'";
        
        Boolean check = connect.Delete("db_NhomSanPham", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(NhomSanPham model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("NhomID", model.getNhomID());
        insertValues.put("TenNhom", model.getTenNhom());
        insertValues.put("AnhDaiDien", model.getAnhDaiDien());
        insertValues.put("ThuTu", model.getThuTu());
        insertValues.put("SoSPHienThi", model.getSoSPHienThi());
        
        
        String condition = " NhomID = '"+model.getNhomID()+"'";
        
        Boolean check = connect.Update("db_NhomSanPham", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
