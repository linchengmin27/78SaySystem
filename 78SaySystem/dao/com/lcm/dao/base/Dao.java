package com.lcm.dao.base;

import java.io.Serializable;
import java.lang.reflect.Method;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * 数据访问对象
 * @author 林成民
 * */

@SuppressWarnings("unchecked")
public class Dao extends HibernateDaoSupport {

	
	/**
	 * 通过ID来获取实体对象
	 * @param T 实体Class
	 * @param id 实体对象的标识符
	 * @return T
	 * */
	public <T> T getEntity(Class<T> entity, Serializable id) {
		return (T) this.getHibernateTemplate().get(entity, id);
	}
	
	/**
	 * 获取实体列表
	 * @return List<T>
	 * */
	public <T> List<T> getEntities(String hql, Map paramMap) {
		Query query = getSession().createQuery(hql);
	    
		if (paramMap != null) {
	        query.setProperties(paramMap);
	    }
       	
		List<T> list = query.list();
		return list;
	}
	
	/**
	 * 获取实体列表
	 * @return List<T>
	 * */
	public <T> List<T> getEntities(String hql, Object[] values) {
		Query query = getSession().createQuery(hql);
        
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
        		query.setParameter(i, values[i]);
        	}
        }
		List<T> list = query.list();
		return list;
	}
	
	/**
	 * 获取分页的实体列表
	 * @return List<T>
	 * */
	public <T> List<T> getEntities(String hql, Map paramMap, int page, int pageSize) {
		Query query = getSession().createQuery(hql);
	    
		if (paramMap != null) {
	        query.setProperties(paramMap);
	    }
		
		//判断是或者所有还是每一页的数据
		if(-1 != page) {
			query.setFirstResult((page - 1) * pageSize);
			query.setMaxResults(pageSize);
		}
		
		List<T> list = query.list();
		return list;
	}
	
	/**
	 * 获取分页的实体列表
	 * @return List<T>
	 * */
	public <T> List<T> getEntities(String hql, Object[] values, int page, int pageSize) {
		Query query = getSession().createQuery(hql);
        
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
        		query.setParameter(i, values[i]);
        	}
        }
		
		//判断是或者所有还是每一页的数据
		if(-1 != page) {
			query.setFirstResult((page - 1) * pageSize);
			query.setMaxResults(pageSize);
		}
		
		List<T> list = query.list();
		return list;
	}
	
	
	/**
	 * 根据SQL语句获取实体列表
	 * @return List<T>
	 * */
	public <T> List<T> getEntities(Class<T> entity, String sql, Map paramMap) {
		Query query = getSession().createSQLQuery(sql).addEntity(entity);
	    
		if (paramMap != null) {
	        query.setProperties(paramMap);
	    }
       	
		List<T> list = query.list();
		return list;
	}
	
	/**
	 * 根据SQL语句获取实体列表
	 * @return List<T>
	 * */
	public <T> List<T> getEntities(Class<T> entity, String sql, Object[] values) {
		Query query = getSession().createSQLQuery(sql).addEntity(entity);
        
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
        		query.setParameter(i, values[i]);
        	}
        }
		List<T> list = query.list();
		return list;
	}
	
	/**
	 * 根据SQL语句获取分页的实体列表
	 * @return List<T>
	 * */
	public <T> List<T> getEntities(Class<T> entity, String sql, Map paramMap, int page, int pageSize) {
		Query query = getSession().createSQLQuery(sql).addEntity(entity);
	    
		if (paramMap != null) {
	        query.setProperties(paramMap);
	    }
		
		//判断是或者所有还是每一页的数据
		if(-1 != page) {
			query.setFirstResult((page - 1) * pageSize);
			query.setMaxResults(pageSize);
		}
       	
		List<T> list = query.list();
		return list;
	}
	
	/**
	 * 根据SQL语句获取分页的实体列表
	 * @return List<T>
	 * */
	public <T> List<T> getEntities(Class<T> entity, String sql, Object[] values, int page, int pageSize) {
		Query query = getSession().createSQLQuery(sql).addEntity(entity);
        
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
        		query.setParameter(i, values[i]);
        	}
        }
		
		//判断是或者所有还是每一页的数据
		if(-1 != page) {
			query.setFirstResult((page - 1) * pageSize);
			query.setMaxResults(pageSize);
		}
		
		List<T> list = query.list();
		return list;
	}
	
	
	/**
	 * 根据SQL语句获取实体对象集合
	 * @param sql 占位符查询语句
	 * @param values 占位符对应的值
	 * @return 符合要求的Map对象集合,其中map的key为数据库表字段名称,value为其对应的记录值
	 * */
	@SuppressWarnings("deprecation")
	public List<Map<String, Object>> getEntitiesResultBySql(String sql,Object[] values,int page,int pageSize) {
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		
		ResultSet rs = null;
		 
		try {
			//判断是或者所有还是每一页的数据
			if(-1 != page) {
				sql = sql + " limit " + ((page-1) * pageSize) + "," + pageSize;
			}
			
			PreparedStatement stmt = getSession().connection().prepareStatement(sql);
			
			for (int i = 0; i < values.length; i++) {
				stmt.setObject(i+1, values[i]);
			}
		
			rs = stmt.executeQuery();
			
			Integer count = rs.getMetaData().getColumnCount();
			
			while (rs.next()) {
				Map<String, Object> map = new LinkedHashMap<String, Object>();
				
				for (int i = 0; i < count; i++) {
					if(i == count - 1) {
						map.put(rs.getMetaData().getColumnName(i+1), rs.getObject(i+1));
						list.add(map);
						map = new LinkedHashMap<String, Object>();
						
					} else {
						map.put(rs.getMetaData().getColumnName(i+1), rs.getObject(i+1));
					}
					
				}
				
			}
			
			return list;
			
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 统计实体对象的个数<br/>
	 * @return long 返回的实体个数
	 */
	public long getAllRow(String hql, Map paramMap) {
		Query query = getSession().createQuery(hql);
		
		if (paramMap != null) {
	        query.setProperties(paramMap);
	    }
		
		return Long.valueOf(query.uniqueResult().toString()).longValue();
	}
	
	/**
	 * 统计实体对象的个数<br/>
	 * @return long 返回的实体个数
	 */
	public long getAllRow(String hql, Object[] values) {
		Query query = getSession().createQuery(hql);
		
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
        		query.setParameter(i, values[i]);
        	}
        }
		
		return Long.valueOf(query.uniqueResult().toString()).longValue();
	}
	
	/**
	 * 根据SQL语句，统计实体对象的个数<br/>
	 * @return long 返回的实体个数
	 */
	public long getAllRowBySql(String sql,Map paramMap) {
	    Query query = getSession().createSQLQuery(sql);
		
	    if (paramMap != null) {
	        query.setProperties(paramMap);
	    }
	    
	    return Long.valueOf(query.uniqueResult().toString()).longValue();
	}
	
	/**
	 * 根据SQL语句，统计实体对象的个数<br/>
	 * @param sql 要统计的查询语句,带占位符的
	 * @param values 统计查询语句占位符的值
	 * @return long 返回的实体个数
	 */
	public long getAllRowBySql(String sql,Object[] values) {
	    Query query = getSession().createSQLQuery(sql);
		
	    if (values != null) {
			for (int i = 0; i < values.length; i++) {
        		query.setParameter(i, values[i]);
        	}
        }
	    
	    return Long.valueOf(query.uniqueResult().toString()).longValue();
	}
	
	/**
	 * 添加新实体对象
	 * @return 添加与否提示值,true为成功,false为失败
	 * */
	public boolean addEntity(Object entity) {
		try {
			this.getHibernateTemplate().save(entity);
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	/**
	 * 更新实体对象
	 * @return 更新提示符,true为成功,false为失败
	 * */
	public boolean updateEntity(Object entity) {
		try {
			this.getHibernateTemplate().update(entity);
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	/**
	 * 更新数据,支持只更新有修改的字段<br/>
	 * @param t 需要更新的对象
	 * @param id 需要更新的数据的id
	 * */
	public <T> boolean updateEntity(Class<T> entity, T t, Serializable id){
		getSession().flush();
		T thenew = t;
		
		//根据id查询旧的数据
		T old = (T) getSession().get(entity, id);
		
		//获取T实体的所有方法
		Method [] allMethod = entity.getMethods();

		//T实体的getter方法
		ArrayList<Method> getMethod = new ArrayList<Method>();

		//T实体的setter方法
		ArrayList<Method> setMethod = new ArrayList<Method>();

		//分别获取T实体的getter和setter方法
		for (int i = 0; i < allMethod.length; i++) {
			//获取getter方法
			if (allMethod[i].getName().startsWith("get")) {
				getMethod.add(allMethod[i]);
			}

			//获取setter方法
			if (allMethod[i].getName().startsWith("set")) {
				setMethod.add(allMethod[i]);
			}
		}

		try {
			//通过循环对未更新的值进行赋值
			for (int i = 0; i < getMethod.size(); i++) {
				if (null != getMethod.get(i).invoke(thenew) && 
						(getMethod.get(i).invoke(old) != getMethod.get(i).invoke(thenew) ||
								!getMethod.get(i).invoke(old).equals(getMethod.get(i).invoke(thenew)))) {

					for (int j = 0; j < setMethod.size(); j++) {
						if (getMethod.get(i).getName().substring(3).equals(setMethod.get(j).getName().substring(3))) {

							//对外键进行特殊处理（多对一的关系）
							if (null != getMethod.get(i).getAnnotation(ManyToOne.class)) {
								Method [] FKM = getMethod.get(i).invoke(thenew).getClass().getMethods();

								//通过循环获取外键对应类的主键
								for (int j1 = 0; j1 < FKM.length; j1++) {
									//判断该属性是否为外键对象的主键
									if (null != FKM[j1].getAnnotation(Id.class)) {
										Object FKValue = FKM[j1].invoke(getMethod.get(i).invoke(thenew));

										//判断该主键的值是否为空，若是不为空则在下面进行设置赋值
										if (null != FKValue && !"".equals(FKValue)) {
											Object tempValue = getMethod.get(i).invoke(thenew);
											setMethod.get(j).invoke(old, tempValue);
											break;
										}
									}
								}

							//若不是外键则进行值的改变判断
							}else{
								Object tempValue = getMethod.get(i).invoke(thenew);

								if (tempValue instanceof String) {
									tempValue = tempValue.toString();
								}
								setMethod.get(j).invoke(old, tempValue);
							}
						}
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		    return false;
		}
		getSession().save(old);
		return true;
	}
	
	/**
	 * 根据HQL语句 更新实体对象
	 * @param hql 占位符更新语句
	 * @param values 占位符对应的值
	 * */
	public boolean updateHQL(final String hql,final Object[] values) {
		getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException {
				Query query = session.createQuery(hql);
				if (values != null) {
					for (int i = 0; i < values.length; i++) {
						query.setParameter(i, values[i]);
					}
				}
				
				if(query.executeUpdate() >= 0) {
					return true;
				}
				return false;
			}
		});
		return false;
	}
	
	/**
	 * 根据HQL语句 更新实体对象
	 * @param hql 占位符更新语句
	 * @param values 占位符对应的值
	 * */
	public boolean updateHQL(final String hql, final Map paramMap) {
		getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException {
				Query query = session.createQuery(hql);
				if (paramMap != null) {
					query.setProperties(paramMap);
				}
				if(query.executeUpdate() >= 0) {
					return true;
				}
				return false;
			}
		});
		return false;
	}
	
	
	/**
	 * 根据SQL语句 更新实体对象
	 * @param hql 占位符更新语句
	 * @param values 占位符对应的值
	 * */
	public boolean updateSQL(final String sql,final Object[] values) {
		getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException {
				Query query = session.createSQLQuery(sql);
				if (values != null) {
					for (int i = 0; i < values.length; i++) {
						query.setParameter(i, values[i]);
					}
				}
				
				if(query.executeUpdate() >= 0) {
					return true;
				}
				return false;
			}
		});
		return false;
	}
	
	/**
	 * 根据SQL语句 更新实体对象
	 * @param hql 占位符更新语句
	 * @param values 占位符对应的值
	 * */
	public boolean updateSQL(final String sql, final Map paramMap) {
		getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException {
				Query query = session.createSQLQuery(sql);
				if (paramMap != null) {
					query.setProperties(paramMap);
				}
				if(query.executeUpdate() >= 0) {
					return true;
				}
				return false;
			}
		});
		return false;
	}
	
	/**
	 * 删除实体对象
	 * */
	public boolean deleteEntity(Object entity) {
		try {
			this.getHibernateTemplate().delete(entity);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * 删除实体对象
	 * */
	public boolean deleteEntities(List entities) {
		try {
			this.getHibernateTemplate().deleteAll(entities);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
	}
}
