package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.SanPham;
import Service.SanPhamService;
import Util.DateUtil;

@SuppressWarnings("unchecked")
public class SanPhamControl {
	private ArrayList<SanPham> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private SanPhamService service;
    
    public SanPhamControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new SanPhamService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(SanPham model) throws Exception{
        if ( service.them(model) ) {
        	arraylist.add(model);
        	return true;
        }
        return false;
    }
    
    /**
     * xóa 1 tài khoản khỏi danh sách và database
     * @return true nếu thành công
     */
    public Boolean xoa(SanPham model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( SanPham item : arraylist ) {
                if (item.getMaSP() == model.getMaSP()){
                	arraylist.remove(item);
                break;
                }
            }
            return true;
        }
        
        return false;
    }
    
    /**
     * sửa thông tin của 1 tài khoản <br>
     * - Trừ thông tin đăng nhập của tài khoản đó
     * @return true nếu thực hiện thành công
     */
    public Boolean sua(SanPham model) throws Exception {
        if ( service.sua(model) ) {
            
            // duyệt từng phẩn tử
            for ( SanPham item : arraylist ) {
                if (item.getMaSP() == model.getMaSP()){
                	
                	item.setTenSP(model.getTenSP());
                	item.setMauID(model.getMauID());
                	item.setSizeID(model.getSizeID());
                	item.setChatLieuID (model.getChatLieuID());
                	item.setAnhSP(model.getAnhSP());
                	item.setSoLuongSP(model.getSoLuongSP());
                	item.setGiaSP(model.getGiaSP());
                	item.setMotaSP(model.getMotaSP());
                	item.setNgayTao(model.getNgayTao());
                	item.setNgayHuy(model.getNgayHuy());
                	item.setMaDM(model.getMaDM());
                	item.setNhomID(model.getNhomID());
                	                 	
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<SanPham> getListDanhMuc() {
        return arraylist;
    }
    public String getListSanPhamJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(SanPham item : arraylist) {
        		jsonObject = new JSONObject();
        		jsonObject.put("MaSP", item.getMaSP());
        		jsonObject.put("TenSP", item.getTenSP());
        		jsonObject.put("MauID", item.getMauID());
        		jsonObject.put("SizeID", item.getSizeID());
        		jsonObject.put("ChatLieuID", item.getChatLieuID());
        		jsonObject.put("AnhSP", item.getAnhSP());
        		jsonObject.put("SoLuongSP", item.getSoLuongSP());
        		jsonObject.put("GiaSP", item.getGiaSP());
        		jsonObject.put("MotaSP", item.getMotaSP());
        		jsonObject.put("NgayTao", item.getNgayTao().toString());
        		jsonObject.put("NgayHuy", item.getNgayHuy().toString());
        		jsonObject.put("MaDM", item.getMaDM());
        		jsonObject.put("NhomID", item.getNhomID());      	
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toJSONString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toJSONString();
    }
    public String getSanPhamByIdJSON(int id) {
    	jsonObject = new JSONObject();
    	for ( SanPham item : arraylist ) {         
            if (item.getMaSP() == id) {
            	jsonObject.put("MaSP", item.getMaSP());
        		jsonObject.put("TenSP", item.getTenSP());
        		jsonObject.put("MauID", item.getMauID());
        		jsonObject.put("SizeID", item.getSizeID());
        		jsonObject.put("ChatLieuID", item.getChatLieuID());
        		jsonObject.put("AnhSP", item.getAnhSP());
        		jsonObject.put("SoLuongSP", item.getSoLuongSP());
        		jsonObject.put("GiaSP", item.getGiaSP());
        		jsonObject.put("MotaSP", item.getMotaSP());
        		jsonObject.put("NgayTao",DateUtil.convertTimestampToString(item.getNgayTao().toString()));
        		jsonObject.put("NgayHuy",DateUtil.convertTimestampToString(item.getNgayHuy().toString()));
        		jsonObject.put("MaDM", item.getMaDM());
        		jsonObject.put("NhomID", item.getNhomID());
                return jsonObject.toJSONString();
            }
        }
        return null;
    }
    public SanPham getSanPhamById(int id) {  
    	for ( SanPham item : arraylist ) {         
            if (item.getMaSP() == id) {
                return item;
            }
        }
        return null;
    }   
}
