//package fpt.fa.service.impl;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//import org.springframework.stereotype.Service;
//
//import fpt.fa.entities.KhachHang;
//import fpt.fa.repository.KhachHangRepository;
//import fpt.fa.service.KhachHangService;
//
//@Service
//public class KhachHangServiceImpl implements KhachHangService {
//	
//	
//	
//	@Autowired
//	KhachHangRepository khachHangRrepository;
//
//	
//	@Override
//	public void save(KhachHang khachHang) {
//		khachHangRrepository.saveAndFlush(khachHang);
//		
//	}
//
//	@Override
//	public void delete(String id) {
//		khachHangRrepository.deleteById(id);
//		
//	}
//
//	@Override
//	public KhachHang findById(String id) {
//	
//		return khachHangRrepository.findById(id).orElse(null);
//	}
//
//	@Override
//	public void update(KhachHang khachHang) {
//		khachHangRrepository.save(khachHang);
//		
//	}
//
//	
//
//	@Override
//	public Page<KhachHang> findAll(String search, Pageable pageable) {
//		
//		return khachHangRrepository.findAll( search, pageable );
//	}
//
//	@Override
//	public List<KhachHang> findCustomersUsingServices() {
//		// TODO Auto-generated method stub
//		return khachHangRrepository.findCustomersUsingServices();
//	}
//
//	@Override
//	public List<KhachHang> findAll() {
//		// TODO Auto-generated method stub
//		return khachHangRrepository.findAll();
//	}
//
//
//
//	
//
//	
//}
