package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.TinTuc;

public class TinTucService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<TinTuc> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_TinTuc", condition, orderBy);
        ArrayList<TinTuc> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	TinTuc model = new TinTuc();
        	model.setTinTucID(result.getInt("TinTucID"));
        	model.setTieuDe(result.getString("TieuDe"));   
        	model.setAnhDaiDien(result.getString("AnhDaiDien"));
        	model.setMoTa(result.getString("MoTa")); 
        	model.setNgayDang(result.getTimestamp("NgayDang"));
        	model.setLuotXem(result.getInt("LuotXem")); 
        	model.setChiTiet(result.getString("ChiTiet"));
        	model.setThuTu(result.getInt("ThuTu")); 
        	model.setMaDM(result.getInt("MaDM"));
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<TinTuc> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<TinTuc> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(TinTuc model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("TieuDe", model.getTieuDe());
        insertValues.put("AnhDaiDien", model.getTinTucID());
        insertValues.put("MoTa", model.getMoTa());
        insertValues.put("NgayDang", model.getNgayDang());
        insertValues.put("LuotXem", model.getLuotXem());
        insertValues.put("ChiTiet", model.getChiTiet());
        insertValues.put("ThuTu", model.getThuTu());
        insertValues.put("MaDM", model.getMaDM());
       
        
        Boolean check = connect.InsertUTF8TinTuc("db_TinTuc", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(TinTuc model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " TinTucID = '"+model.getTinTucID()+"'";
        
        Boolean check = connect.Delete("db_TinTuc", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(TinTuc model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TinTucID", model.getTinTucID());
        insertValues.put("TieuDe", model.getTieuDe());
        insertValues.put("AnhDaiDien", model.getTinTucID());
        insertValues.put("MoTa", model.getMoTa());
        insertValues.put("NgayDang", model.getNgayDang());
        insertValues.put("LuotXem", model.getLuotXem());
        insertValues.put("ChiTiet", model.getChiTiet());
        insertValues.put("ThuTu", model.getThuTu());
        insertValues.put("MaDM", model.getMaDM());
        
        
        String condition = " TinTucID = '"+model.getTinTucID()+"'";
        
        Boolean check = connect.Update("db_TinTuc", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
