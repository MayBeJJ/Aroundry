package store;

import java.util.HashMap;

public interface StoreService {
	//CRUD(Create, Read, Update, Delete)
	boolean store_join(StoreVO vo); //회원가입시 회원정보저장
	boolean store_update(StoreVO vo); //내정보수정
	boolean store_delete(StoreVO vo); //회원탈퇴시
}
