package com.todo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.todo.constants.PageConstant;
import com.todo.entity.ToDoItem;
import com.todo.entity.vo.IndexVo;
import com.todo.entity.vo.PageVo;
import com.todo.entity.vo.QueryVo;
import com.todo.mapper.ToDoItemMapper;
import com.todo.service.ToDoItemService;
import com.todo.utils.CheckUtils;
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
    public PageVo<ToDoItem> pageQueryByCondition(QueryVo queryVo) {
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
        String itemDescription = queryVo.getItemDescription();
        if (itemDescription != null) {
            queryWrapper.like("item_description", itemDescription);
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
        PageVo<ToDoItem> toDoItemPageVo = new PageVo<>();
        toDoItemMapper.selectPage(page, queryWrapper);
        BeanUtils.copyProperties(page, toDoItemPageVo);
        toDoItemPageVo.setPages(page.getPages());
        return toDoItemPageVo;
    }

    @Override
    public boolean saveToDoItem(ToDoItem toDoItem) {
        if (CheckUtils.toDoItemEmptyCheck(toDoItem)) {
            return false;
        }
        LocalDateTime creationDate = toDoItem.getCreationDate();
        LocalDateTime dueDate = toDoItem.getDueDate();
        if (creationDate.isAfter(dueDate)) {
            return false;
        }
        return toDoItemMapper.insert(toDoItem) == 1;
    }

    @Override
    public boolean deleteBatchToDoItem(String deleteIds) {
        if (deleteIds == null || "".equals(deleteIds)) {
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
    public boolean updateToDoItem(ToDoItem toDoItem) {
        if (CheckUtils.toDoItemEmptyCheck(toDoItem)) {
            return false;
        }
        LocalDateTime creationDate = toDoItem.getCreationDate();
        LocalDateTime dueDate = toDoItem.getDueDate();
        if (creationDate.isAfter(dueDate)) {
            return false;
        }
        int value = toDoItemMapper.updateById(toDoItem);
        return value == 1;
    }

    @Override
    public IndexVo indexData() {
        Long total = toDoItemMapper.selectCount(null);
        QueryWrapper<ToDoItem> wrapper = new QueryWrapper<>();
        wrapper.eq("completion_flag", 0);
        Long unfinished = toDoItemMapper.selectCount(wrapper);
        wrapper = new QueryWrapper<>();
        wrapper.eq("completion_flag", 1);
        Long finished = toDoItemMapper.selectCount(wrapper);
        Long expired = toDoItemMapper.selectExpiredCount();
        return new IndexVo(total, unfinished, finished, expired);
    }
}
