package com.todo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.todo.entity.ToDoItem;
import com.todo.entity.vo.QueryVO;
import com.todo.entity.vo.UpdateVo;
import com.todo.mapper.ToDoItemMapper;
import com.todo.service.ToDoItemService;
import com.todo.utils.DateUtils;
import com.todo.constants.PageConstant;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Sancean
 * @since 2023-05-01
 */
@Service
public class ToDoItemServiceImpl extends ServiceImpl<ToDoItemMapper, ToDoItem> implements ToDoItemService {

    private ToDoItemMapper toDoItemMapper;

    public ToDoItemServiceImpl(ToDoItemMapper toDoItemMapper) {
        this.toDoItemMapper = toDoItemMapper;
    }
    @Override
    public Page<ToDoItem> pageQueryByCondition(QueryVO queryVo) {
        if (queryVo == null) {
            return null;
        }
        QueryWrapper<ToDoItem> queryWrapper = new QueryWrapper<>();
        Integer itemId = queryVo.getItemId();
        if (itemId != null) {
            queryWrapper.eq("item_id", itemId);
        }
        String itemTitle = queryVo.getItemTitle();
        if (itemTitle != null) {
            queryWrapper.like("item_title", itemTitle);
        }
        LocalDateTime startDate = queryVo.getStartDate();
        if (startDate != null) {
            queryWrapper.ge("creation_date", startDate);
        }
        LocalDateTime endDate = queryVo.getEndDate();
        if (endDate != null) {
            queryWrapper.le("creation_date", endDate);
        }
        Byte completionFlag = queryVo.getCompletionFlag();
        if (completionFlag != null) {
            queryWrapper.eq("completion_flag", completionFlag);
        }
        Long current = queryVo.getCurrent();
        if (current == null) {
            current = PageConstant.CURRENT;
        }
        Long size = queryVo.getSize();
        if (size == null) {
            size = PageConstant.SIZE;
        }
        Page<ToDoItem> page = new Page<>(current, size);
        toDoItemMapper.selectPage(page, queryWrapper);
        return page;
    }

    @Override
    public boolean saveToDoItem(UpdateVo updateVo) {
        if (updateVo == null) {
            return false;
        }
        ToDoItem toDoItem = new ToDoItem();
        BeanUtils.copyProperties(updateVo, toDoItem);
        String creationDate = updateVo.getCreationDate();
        if (creationDate != null) {
            toDoItem.setCreationDate(DateUtils.parseDate(creationDate));
        }
        String dueDate = updateVo.getDueDate();
        if (dueDate != null) {
            toDoItem.setDueDate(DateUtils.parseDate(dueDate));
        }
        return toDoItemMapper.insert(toDoItem) == 1;
    }

    @Override
    public boolean deleteBatchToDoItem(String deleteIds) {
        if (deleteIds == null) {
            return false;
        }
        String[] ids = deleteIds.split(",");
        List<Integer> idList = new ArrayList<>();
        for (String id : ids) {
            try {
                idList.add(Integer.valueOf(id));
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return toDoItemMapper.deleteBatchIds(idList) == idList.size();
    }

    @Override
    public boolean updateToDoItem(UpdateVo updateVo) {
        if (updateVo == null) {
            return false;
        }
        ToDoItem toDoItem = new ToDoItem();
        BeanUtils.copyProperties(updateVo, toDoItem);
        String creationDate = updateVo.getCreationDate();
        if (creationDate != null) {
            toDoItem.setCreationDate(DateUtils.parseDate(creationDate));
        }
        String dueDate = updateVo.getDueDate();
        if (dueDate != null) {
            toDoItem.setDueDate(DateUtils.parseDate(dueDate));
        }
        return toDoItemMapper.updateById(toDoItem) == 1;
    }
}
