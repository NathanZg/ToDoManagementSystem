package com.todo.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Sancean
 * @Date 2023/05/01 21:24
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UpdateVo {
    /**
     * 待办事项id
     */
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
    private String creationDate;

    /**
     * 到期时间
     */
    private String dueDate;

    /**
     * 完成标识
     */
    private Byte completionFlag;
}
