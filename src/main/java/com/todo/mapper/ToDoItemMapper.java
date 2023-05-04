package com.todo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.todo.entity.ToDoItem;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Sancean
 * @since 2023-05-01
 */
@Mapper
public interface ToDoItemMapper extends BaseMapper<ToDoItem> {

    /**
     * 查询过期待办事项个数
     * @return Long
     */
    Long selectExpiredCount();
}
