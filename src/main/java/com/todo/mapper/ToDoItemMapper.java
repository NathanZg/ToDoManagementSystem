package com.todo.mapper;

import com.todo.entity.ToDoItem;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
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

}
