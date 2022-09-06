package store;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAO implements StoreService {

	@Override
	public boolean store_join(StoreVO vo) {
		 return sql.insert("store.mapper.storejoin", vo)>0 ? true : false; }
	 
	
			@Autowired @Qualifier("ateam") private SqlSession sql;
	

	@Override
	public boolean store_update(StoreVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean store_delete(StoreVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
