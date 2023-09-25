package Service;

import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.User;

public class UserService {
MyConnectUnit connect;
    private DateTimeFormatter fmtDataTime = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<User> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("user", condition, orderBy);
        ArrayList<User> users = new ArrayList<>();
        while ( result.next() ) {
        	User user = new User();
        	user.setFirstName(result.getString("firstName"));
        	user.setMiddleName(result.getString("middleName"));
        	user.setLastName(result.getString("lastName"));
        	user.setMobile (result.getString("mobile"));
        	user.setEmail(result.getString("email"));
        	user.setPasswordHash(result.getString("passwordHash"));
        	user.setAdmin(result.getByte("admin"));
        	user.setVendor(result.getByte("vendor"));
        	user.setRegisteredAt(LocalDateTime.parse(result.getString("registeredAt"),fmtDataTime));
        	user.setLastLogin(LocalDateTime.parse(result.getString("lastLogin"),fmtDataTime));
        	user.setIntro(result.getString("intro"));
        	user.setProfile(result.getString("profile"));
        	user.setAvatar(result.getString("avatar"));
        	users.add(user);
        	System.out.println("DateTim:"+ result.getString("registeredAt"));
        }
        connect.Close();
        return users;
    }
    
    public ArrayList<User> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<User> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(User user) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("firstName", user.getFirstName());
        insertValues.put("middleName", user.getMiddleName());
        insertValues.put("lastName", user.getLastName());
        insertValues.put("mobile", user.getMobile());
        insertValues.put("email", user.getEmail());
        insertValues.put("passwordHash", user.getPasswordHash());
        insertValues.put("admin", user.getAdmin());
        insertValues.put("vendor", user.getVendor());
        insertValues.put("registeredAt", user.getRegisteredAt());
        insertValues.put("lastLogin", user.getLastLogin());
        insertValues.put("intro", user.getIntro());
        insertValues.put("profile", user.getProfile());
        insertValues.put("avatar", user.getAvatar());
        
        Boolean check = connect.Insert("user", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(User user) throws Exception {
        connect = new MyConnectUnit();
        String condition = " id = '"+user.getId()+"'";
        
        Boolean check = connect.Delete("user", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(User user) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("firstName", user.getFirstName());
        insertValues.put("middleName", user.getMiddleName());
        insertValues.put("lastName", user.getLastName());
        insertValues.put("mobile", user.getMobile());
        insertValues.put("email", user.getEmail());
        insertValues.put("passwordHash", user.getPasswordHash());
        insertValues.put("admin", user.getAdmin());
        insertValues.put("vendor", user.getVendor());
        insertValues.put("registeredAt", user.getRegisteredAt());
        insertValues.put("lastLogin", user.getLastLogin());
        insertValues.put("intro", user.getIntro());
        insertValues.put("profile", user.getProfile());
        insertValues.put("avatar", user.getAvatar());
        
        String condition = " id = '"+user.getId()+"'";
        
        Boolean check = connect.Update("user", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
