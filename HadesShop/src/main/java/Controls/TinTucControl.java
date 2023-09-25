package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.TinTuc;
import Service.TinTucService;
import Util.DateUtil;
@SuppressWarnings("unchecked")
public class TinTucControl {
	private ArrayList<TinTuc> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private TinTucService service;
    
    public TinTucControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new TinTucService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(TinTuc model) throws Exception{
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
    public Boolean xoa(TinTuc model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( TinTuc item : arraylist ) {
                if (item.getTinTucID() == model.getTinTucID()){
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
    public Boolean sua(TinTuc model) throws Exception {
        if ( service.sua(model) ) {
            
            // duyệt từng phẩn tử
            for ( TinTuc item : arraylist ) {
                if (item.getTinTucID() == model.getTinTucID()){
                	
                	item.setTieuDe(model.getTieuDe());
                	item.setAnhDaiDien(model.getAnhDaiDien());
                	item.setMoTa(model.getMoTa());
                	item.setNgayDang (model.getNgayDang());
                	item.setLuotXem(model.getLuotXem());
                	item.setChiTiet(model.getChiTiet());
                	item.setThuTu(model.getThuTu());
                	item.setMaDM(model.getMaDM());
                	                 	
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<TinTuc> getListTinTuc() {
        return arraylist;
    }
    public String getListTinTucJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(TinTuc item : arraylist) {
        		jsonObject = new JSONObject();
        		jsonObject.put("TinTucID", item.getTinTucID());
        		jsonObject.put("TieuDe", item.getTieuDe());
        		jsonObject.put("AnhDaiDien", item.getAnhDaiDien());
        		jsonObject.put("MoTa", item.getMoTa());
        		jsonObject.put("NgayDang", DateUtil.convertTimestampToString(item.getNgayDang().toString()));
        		jsonObject.put("LuotXem", item.getLuotXem());
        		jsonObject.put("ChiTiet", item.getChiTiet());
        		jsonObject.put("ThuTu", item.getThuTu());
        		jsonObject.put("MaDM", item.getMaDM());      	
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toJSONString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toJSONString();
    }
    public String getTinTucByIdJSON(int id) {
    	jsonObject = new JSONObject();
    	for ( TinTuc item : arraylist ) {         
            if (item.getTinTucID() == id) {
            	jsonObject.put("TinTucID", item.getTinTucID());
        		jsonObject.put("TieuDe", item.getTieuDe());
        		jsonObject.put("AnhDaiDien", item.getAnhDaiDien());
        		jsonObject.put("MoTa", item.getMoTa());
        		jsonObject.put("NgayDang", DateUtil.convertTimestampToString(item.getNgayDang().toString()));
        		jsonObject.put("LuotXem", item.getLuotXem());
        		jsonObject.put("ChiTiet", item.getChiTiet());
        		jsonObject.put("ThuTu", item.getThuTu());
        		jsonObject.put("MaDM", item.getMaDM()); 
                return jsonObject.toJSONString();
            }
        }
        return null;
    }
    public TinTuc getTinTucById(int id) {  
    	for ( TinTuc item : arraylist ) {         
            if (item.getTinTucID() == id) {
                return item;
            }
        }
        return null;
    }
    public ArrayList<TinTuc> getListTinTucByMaDM(int MaDM) {  
    	ArrayList<TinTuc> arrlist = new ArrayList<>();
    	for ( TinTuc item : arraylist ) {         
            if (item.getMaDM() == MaDM) {
            	arrlist.add(item);
            }
        }
        return arrlist;
    }
}
