package com.todo.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.todo.entity.ToDoItem;
import com.todo.entity.vo.QueryVO;
import com.todo.entity.vo.UpdateVo;
import com.todo.service.ToDoItemService;
import com.todo.utils.Response;
import com.todo.utils.ResponseUtils;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Sancean
 * @since 2023-05-01
 */
@RestController
@RequestMapping("/api")
public class ToDoItemController {
    private ToDoItemService toDoItemService;

    public ToDoItemController(ToDoItemService toDoItemService) {
        this.toDoItemService = toDoItemService;
    }

    @PostMapping("/add")
    public Response<Object> add(@RequestBody UpdateVo updateVo) {
        if (toDoItemService.saveToDoItem(updateVo)) {
            return ResponseUtils.success("add toDoItem successfully!");
        } else {
            return ResponseUtils.success("Failed to add toDoItem!");
        }
    }

    @DeleteMapping("/delete")
    public Response<Object> delete(@RequestBody String deleteIds) {
        if (toDoItemService.deleteBatchToDoItem(deleteIds)) {
            return ResponseUtils.success("delete toDoItem successfully!");
        } else {
            return ResponseUtils.success("Failed to delete toDoItem!");
        }
    }

    @PostMapping("/update")
    public Response<Object> update(@RequestBody UpdateVo updateVo) {
        if (toDoItemService.updateToDoItem(updateVo)) {
            return ResponseUtils.success("update toDoItem successfully!");
        } else {
            return ResponseUtils.success("Failed to update toDoItem!");
        }
    }

    @GetMapping("/list")
    public Response<Page<ToDoItem>> list(@RequestBody QueryVO queryVo) {
        Page<ToDoItem> toDoItemPage = toDoItemService.pageQueryByCondition(queryVo);
        return ResponseUtils.success(toDoItemPage);
    }
}
