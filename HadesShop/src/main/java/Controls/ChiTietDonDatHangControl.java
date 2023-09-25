package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.ChiTietDonDatHang;
import Service.ChiTietDonDatHangService;


@SuppressWarnings("unchecked")
public class ChiTietDonDatHangControl {
	private ArrayList<ChiTietDonDatHang> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private ChiTietDonDatHangService service;
    
    public ChiTietDonDatHangControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new ChiTietDonDatHangService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(ChiTietDonDatHang model) throws Exception{
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
    public Boolean xoa(ChiTietDonDatHang model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( ChiTietDonDatHang item : arraylist ) {
                if (item.getMaDonDatHang() == model.getMaDonDatHang()){
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
    public Boolean sua(ChiTietDonDatHang model) throws Exception {
        if ( service.sua(model) ) {
            
            // duyệt từng phẩn tử
            for ( ChiTietDonDatHang item : arraylist ) {
                if (item.getMaDonDatHang() == model.getMaDonDatHang()){
                	
                	
                	item.setMaSP(model.getMaSP());
                	item.setMaDonDatHang(model.getMaDonDatHang());
                	item.setSoLuongDat(model.getSoLuongDat());
                	item.setDonGiaDat(model.getDonGiaDat());
                	
                	                 	
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<ChiTietDonDatHang> getListDonDatHang() {
        return arraylist;
    }
    public String getListDonDatHangJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(ChiTietDonDatHang item : arraylist) {
        		jsonObject = new JSONObject();
        		
        		jsonObject.put("MaSP", item.getMaSP());        		
        		jsonObject.put("MaDonDatHang", item.getMaDonDatHang());
        		jsonObject.put("SoLuongDat", item.getDonGiaDat());
        		jsonObject.put("DonGiaDat", item.getSoLuongDat());
        		    	
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toJSONString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toJSONString();
    }
    public String getListChiTietDonDatHangByIdJSON(int id) {
    	try {
    		jsonArray = new JSONArray();
        	for(ChiTietDonDatHang item : arraylist) {
        		jsonObject = new JSONObject();
        		if(item.getMaDonDatHang() == id) {
        			jsonObject.put("MaSP", item.getMaSP());        		
            		jsonObject.put("MaDonDatHang", item.getMaDonDatHang());
            		jsonObject.put("SoLuongDat", item.getSoLuongDat());
            		jsonObject.put("DonGiaDat", item.getDonGiaDat());
            		    	
            		jsonArray.add(jsonObject);
        		}		
        	}
        	System.out.println(jsonArray.toJSONString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	} 
    	return jsonArray.toJSONString();
    }
    public ChiTietDonDatHang getChiTietDonDatHangById(int id) {  
    	for ( ChiTietDonDatHang item : arraylist ) {         
            if (item.getMaDonDatHang() == id) {
                return item;
            }
        }
        return null;
    }
}
