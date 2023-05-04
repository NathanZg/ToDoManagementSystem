package com.todo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.todo.entity.ToDoItem;
import com.todo.entity.vo.IndexVo;
import com.todo.entity.vo.PageVo;
import com.todo.entity.vo.QueryVo;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Sancean
 * @since 2023-05-01
 */
public interface ToDoItemService extends IService<ToDoItem> {

    /**
     * 分页条件查询待办事项
     * @param queryVo 查询条件
     * @return PageVo 前端页面封装
     */
    PageVo<ToDoItem> pageQueryByCondition(QueryVo queryVo);

    /**
     * 将 vo 转换为 toDoItem
     * 然后增加新一条待办事项
     * @param toDoItem 待办事项
     * @return boolean 布尔值
     */
    boolean saveToDoItem(ToDoItem toDoItem);

    /**
     * 批量删除待办事项
     * @param deleteIds 待删除的待办事项的 id 拼接字符串，id 之间以逗号分割
     * @return boolean 布尔值
     */
    boolean deleteBatchToDoItem(String deleteIds);

    /**
     * 更新待办事项
     * @param toDoItem 待办事项
     * @return boolean 布尔值
     */
    boolean updateToDoItem(ToDoItem toDoItem);

    /**
     * 返回首页统计数据
     * 1.待办事项总数
     * 2.完成的待办事项总数
     * 3.已完成的待办事项总数
     * 4.已过期的待办事项总数
     * @return IndexVo 首页数据封装对象
     */
    IndexVo indexData();
}
