package store;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class StoreServiceImpl implements StoreService {

	@Override
	public boolean store_join(StoreVO vo) {
		return dao.store_join(vo);
		}

		@Autowired private StoreDAO dao;


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
