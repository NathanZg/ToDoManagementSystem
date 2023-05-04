package com.todo.controller;

import com.todo.entity.ToDoItem;
import com.todo.entity.vo.IndexVo;
import com.todo.entity.vo.PageVo;
import com.todo.entity.vo.QueryVo;
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

    @GetMapping("index")
    public Response<IndexVo> index() {
        IndexVo indexVo = toDoItemService.indexData();
        return ResponseUtils.success(indexVo);
    }

    @PostMapping("/add")
    public Response<Object> add(@RequestBody ToDoItem toDoItem) {
        if (toDoItemService.saveToDoItem(toDoItem)) {
            return ResponseUtils.success("add toDoItem successfully!");
        } else {
            return ResponseUtils.fail("Failed to add toDoItem!");
        }
    }

    @DeleteMapping("/delete")
    public Response<Object> delete(@RequestBody String deleteIds) {
        if (toDoItemService.deleteBatchToDoItem(deleteIds)) {
            return ResponseUtils.success("delete toDoItem successfully!");
        } else {
            return ResponseUtils.fail("Failed to delete toDoItem!");
        }
    }

    @PostMapping("/update")
    public Response<Object> update(@RequestBody ToDoItem toDoItem) {
        if (toDoItemService.updateToDoItem(toDoItem)) {
            return ResponseUtils.success("update toDoItem successfully!");
        } else {
            return ResponseUtils.fail("Failed to update toDoItem!");
        }
    }

    @PostMapping("/list")
    public Response<PageVo<ToDoItem>> list(@RequestBody QueryVo queryVo) {
        PageVo<ToDoItem> toDoItemPageVo = toDoItemService.pageQueryByCondition(queryVo);
        return ResponseUtils.success(toDoItemPageVo);
    }
}
