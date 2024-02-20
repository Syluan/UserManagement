//package fpt.fa.repository;
//
//
//import java.util.List;
//
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.query.Param;
//
//import fpt.fa.entities.KhachHang;
//
//public interface KhachHangRepository extends JpaRepository<KhachHang, String> {
//	
//	@Query(value =  "Select * from KhachHang kh where kh.maKH LIKE %:search% or kh.tenKH LIKE %:search% or kh.diaChi LIKE %:search% OR kh.soDienThoai LIKE %:search% OR kh.diaChiEmail LIKE %:search%",nativeQuery = true)
//	 Page<KhachHang> findAll(@Param("search") String search, Pageable pageable);
//
//	@Query(value= "SELECT * FROM KhachHang kh JOIN SuDungMay sdm ON kh.maKH = sdm.maKH ", nativeQuery = true)
//	List<KhachHang> findCustomersUsingServices();
//}
