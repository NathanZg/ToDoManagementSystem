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

    /**
     * 返回首页数据
     *
     * @return Response<IndexVo>
     */
    @GetMapping("index")
    public Response<IndexVo> index() {
        IndexVo indexVo = toDoItemService.indexData();
        return ResponseUtils.success(indexVo);
    }

    /**
     * 添加待办事项
     *
     * @param toDoItem
     * @return Response<Object>
     */
    @PostMapping("/add")
    public Response<Object> add(@RequestBody ToDoItem toDoItem) {
        if (toDoItemService.saveToDoItem(toDoItem)) {
            return ResponseUtils.success("add toDoItem successfully!");
        } else {
            return ResponseUtils.fail("Failed to add toDoItem!");
        }
    }

    /**
     * 批量删除代办实习
     *
     * @param deleteIds
     * @return Response<Object>
     */
    @DeleteMapping("/delete")
    public Response<Object> delete(@RequestBody String deleteIds) {
        if (toDoItemService.deleteBatchToDoItem(deleteIds)) {
            return ResponseUtils.success("delete toDoItem successfully!");
        } else {
            return ResponseUtils.fail("Failed to delete toDoItem!");
        }
    }

    /**
     * 更新待办事项
     *
     * @param toDoItem
     * @return Response<Object>
     */
    @PostMapping("/update")
    public Response<Object> update(@RequestBody ToDoItem toDoItem) {
        if (toDoItemService.updateToDoItem(toDoItem)) {
            return ResponseUtils.success("update toDoItem successfully!");
        } else {
            return ResponseUtils.fail("Failed to update toDoItem!");
        }
    }

    /**
     * 分页查询待办事项
     *
     * @param queryVo
     * @return Response<PageVo < ToDoItem>>
     */
    @PostMapping("/list")
    public Response<PageVo<ToDoItem>> list(@RequestBody QueryVo queryVo) {
        PageVo<ToDoItem> toDoItemPageVo = toDoItemService.pageQueryByCondition(queryVo);
        return ResponseUtils.success(toDoItemPageVo);
    }
}
