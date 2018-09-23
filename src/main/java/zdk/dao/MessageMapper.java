package zdk.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import zdk.bean.Message;
import zdk.bean.MessageExample;

public interface MessageMapper {
    int countByExample(MessageExample example);

    int deleteByExample(MessageExample example);

    int deleteByPrimaryKey(Integer mId);

    int insert(Message record);

    int insertSelective(Message record);

    List<Message> selectByExample(MessageExample example);

    Message selectByPrimaryKey(Integer mId);

    int updateByExampleSelective(@Param("record") Message record, @Param("example") MessageExample example);

    int updateByExample(@Param("record") Message record, @Param("example") MessageExample example);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
}