package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.DonDatHang;
import Service.DonDatHangService;
import Util.DateUtil;

@SuppressWarnings("unchecked")
public class DonDatHangControl {
	private ArrayList<DonDatHang> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private DonDatHangService service;
    
    public DonDatHangControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new DonDatHangService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(DonDatHang model) throws Exception{
        if ( service.them(model) ) {
        	arraylist = service.docDB();
        	return true;
        }
        return false;
    }
    
    /**
     * xóa 1 tài khoản khỏi danh sách và database
     * @return true nếu thành công
     */
    public Boolean xoa(DonDatHang model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( DonDatHang item : arraylist ) {
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
    public Boolean sua(DonDatHang model) throws Exception {
        if ( service.sua(model) ) {
            
            // duyệt từng phẩn tử
            for ( DonDatHang item : arraylist ) {
                if (item.getMaDonDatHang() == model.getMaDonDatHang()){
                	
                	
                	item.setDiaChiKH(model.getDiaChiKH());
                	item.setEmailKH(model.getEmailKH());
                	item.setSdtKH(model.getSdtKH());
                	item.setTenKH(model.getTenKH());
                	item.setMaKH(model.getMaKH());
                	item.setNgayTao(model.getNgayTao());              	
                	item.setThanhTienDH(model.getThanhTienDH());
                	item.setTinhTrangDonHang(model.getTinhTrangDonHang());
                	                 	
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<DonDatHang> getListDonDatHang() {
        return arraylist;
    }
    public String getListDonDatHangJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(DonDatHang item : arraylist) {
        		jsonObject = new JSONObject();
        		
        		jsonObject.put("MaDonDatHang", item.getMaDonDatHang());
        		jsonObject.put("NgayTao",DateUtil.convertTimestampToString(item.getNgayTao().toString()));
        		jsonObject.put("ThanhTienDH", item.getThanhTienDH());
        		jsonObject.put("TinhTrangDonHang", item.getTinhTrangDonHang());
        		jsonObject.put("MaKH", item.getMaKH());
        		jsonObject.put("TenKH", item.getTenKH());
        		jsonObject.put("sdtKH", item.getSdtKH());
        		jsonObject.put("EmailKH", item.getEmailKH());
        		jsonObject.put("DiaChiKH", item.getDiaChiKH());      	
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toJSONString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toJSONString();
    }
    
    public String getListDonDatHangByMaKHJSON(int id) {
    	try {
    		jsonArray = new JSONArray();
        	for(DonDatHang item : arraylist) {
        		if(item.getMaKH() == id) {
        			jsonObject = new JSONObject();
            		
            		jsonObject.put("MaDonDatHang", item.getMaDonDatHang());
            		jsonObject.put("NgayTao",DateUtil.convertTimestampToString(item.getNgayTao().toString()));
            		jsonObject.put("ThanhTienDH", item.getThanhTienDH());
            		jsonObject.put("TinhTrangDonHang", item.getTinhTrangDonHang());
            		jsonObject.put("MaKH", item.getMaKH());
            		jsonObject.put("TenKH", item.getTenKH());
            		jsonObject.put("sdtKH", item.getSdtKH());
            		jsonObject.put("EmailKH", item.getEmailKH());
            		jsonObject.put("DiaChiKH", item.getDiaChiKH());      	
            		jsonArray.add(jsonObject);
        		}     		   		
        	}
        	System.out.println(jsonArray.toJSONString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toJSONString();
    }
    public String getDonDatHangByIdJSON(int id) {
    	jsonObject = new JSONObject();
    	for ( DonDatHang item : arraylist ) {         
            if (item.getMaDonDatHang() == id) {
            	jsonObject.put("MaDonDatHang", item.getMaDonDatHang());
        		jsonObject.put("NgayTao",DateUtil.convertTimestampToString(item.getNgayTao().toString()));
        		jsonObject.put("ThanhTienDH", item.getThanhTienDH());
        		jsonObject.put("TinhTrangDonHang", item.getTinhTrangDonHang());
        		jsonObject.put("MaKH", item.getMaKH());
        		jsonObject.put("TenKH", item.getTenKH());
        		jsonObject.put("sdtKH", item.getSdtKH());
        		jsonObject.put("EmailKH", item.getEmailKH());
        		jsonObject.put("DiaChiKH", item.getDiaChiKH());
                return jsonObject.toJSONString();
            }
        }
        return null;
    }
    public DonDatHang getDonDatHangById(int id) {  
    	for ( DonDatHang item : arraylist ) {         
            if (item.getMaDonDatHang() == id) {
                return item;
            }
        }
        return null;
    }
    
    public DonDatHang getDonDatHangNew() {           
    	if (arraylist != null && !arraylist.isEmpty()) {
    		return arraylist.get(arraylist.size()-1);
    	}
        return null;
    }
}
