package Controls;


import java.util.ArrayList;


import Models.User;
import Service.UserService;

public class UserControl {
	private ArrayList<User> listUser;
    /**
     * Xử lý các lệnh trong SQL
     */
    private UserService userService;
    
    public UserControl() throws Exception {
    	listUser = new ArrayList<>();
        userService = new UserService();
        listUser = userService.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(User user) throws Exception{
        if ( userService.them(user) ) {
        	listUser.add(user);
        }
        return false;
    }
    
    /**
     * xóa 1 tài khoản khỏi danh sách và database
     * @return true nếu thành công
     */
    public Boolean xoa(User user) throws Exception {
        if ( userService.xoa(user) ) {
            
            // duyệt từng phẩn tử
            for ( User taikhoan : listUser ) {
                if (taikhoan.getEmail().equals(user.getEmail())){
                	listUser.remove(taikhoan);
                break;
                }
            }
        }
        
        return false;
    }
    
    /**
     * sửa thông tin của 1 tài khoản <br>
     * - Trừ thông tin đăng nhập của tài khoản đó
     * @return true nếu thực hiện thành công
     */
    public Boolean sua(User user) throws Exception {
        if ( userService.sua(user) ) {
            
            // duyệt từng phẩn tử
            for ( User userItem : listUser ) {
                if (userItem.getEmail().equals(user.getEmail())){
                	
                	userItem.setFirstName(user.getFirstName());
                	userItem.setMiddleName(user.getMiddleName());
                	userItem.setLastName(user.getLastName());
                	userItem.setMobile (user.getMobile());
                	userItem.setEmail(user.getEmail());
                	userItem.setPasswordHash(user.getPasswordHash());
                	userItem.setAdmin(user.getAdmin());
                	userItem.setVendor(user.getVendor());
                	userItem.setRegisteredAt(user.getRegisteredAt());
                	userItem.setLastLogin(user.getLastLogin());
                	userItem.setIntro(user.getIntro());
                	userItem.setProfile(user.getProfile());
                	userItem.setAvatar(user.getAvatar());     
                	
                break;
                }
            }
        }
        
        return false;
    }

    /**
     * Kiêm tra xem tài khoản đó có trong arraylist hay chưa <br>
     * <h3> Không phân biệt hoa thường </h3>
     * @return true nếu thành công
     */
    public Boolean kiemTraDangNhap(User user) {
        for ( User userItem : listUser ) {
            // kiểm tra mật khảu và tên đăng nhập
            if (userItem.getEmail().equalsIgnoreCase(user.getEmail())
                    && userItem.getPasswordHash().equalsIgnoreCase(user.getPasswordHash()) ) {
                return true;
            }
        }
        return false;
    }
    
    public ArrayList<User> getListUser() {
        return listUser;
    }
    public User getUser(User user) {  
    	for ( User userItem : listUser ) {
            // kiểm tra mật khảu và tên đăng nhập
            if (userItem.getEmail().equalsIgnoreCase(user.getEmail()) && userItem.getPasswordHash().equalsIgnoreCase(user.getPasswordHash()) ) {
                return userItem;
            }
        }
        return null;
    }
    
    public int getAdmin_Email(String strEmail) {
        for ( User userItem : listUser ) {
            if ( userItem.getEmail().equalsIgnoreCase(strEmail))
                return userItem.getAdmin();
        } 
        return -1;
    }
    public int getVendor_Email(String strEmail) {
        for ( User userItem : listUser ) {
            if ( userItem.getEmail().equalsIgnoreCase(strEmail))
                return userItem.getVendor();
        } 
        return -1;
    }
}
