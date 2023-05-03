package com.todo.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.todo.entity.ToDoItem;
import com.todo.entity.vo.QueryVO;
import com.todo.entity.vo.UpdateVo;

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
     * @param queryVo
     * @return page
     */
    Page<ToDoItem> pageQueryByCondition(QueryVO queryVo);

    /**
     * 将 vo 转换为 toDoItem
     * 然后增加新一条待办事项
     * @param updateVo
     * @return boolean
     */
    boolean saveToDoItem(UpdateVo updateVo);

    /**
     * 批量删除待办事项
     * @param deleteIds 待删除的待办事项的 id 拼接字符串，id 之间以逗号分割
     * @return boolean
     */
    boolean deleteBatchToDoItem(String deleteIds);

    /**
     * 更新待办事项
     * @param updateVo
     * @return boolean
     */
    boolean updateToDoItem(UpdateVo updateVo);
}
