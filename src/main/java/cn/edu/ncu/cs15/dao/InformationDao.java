package cn.edu.ncu.cs15.dao;

import cn.edu.ncu.cs15.entity.Information;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InformationDao {
    void add(@Param("information") Information information);
    void modify(@Param("information") Information information);
    Information queryById(String id);
    List<Information> queryByName(String name);
    List<Information> queryBySchool(String school);
}
