package com.todo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;

import lombok.*;

/**
 * <p>
 *
 * </p>
 *
 * @author Sancean
 * @since 2023-05-01
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("to_do_item")
public class ToDoItem implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 待办事项id
     */
    @TableId(value = "item_id", type = IdType.AUTO)
    private Integer itemId;

    /**
     * 待办事项标题
     */
    private String itemTitle;

    /**
     * 待办事项描述
     */
    private String itemDescription;

    /**
     * 创建时间
     */
    private LocalDateTime creationDate;

    /**
     * 到期时间
     */
    private LocalDateTime dueDate;

    /**
     * 完成标识
     */
    private Byte completionFlag;
}
