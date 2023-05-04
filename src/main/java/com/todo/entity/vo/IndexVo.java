package com.todo.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Sancean
 * @Date 2023/05/04 21:08
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class IndexVo {
    /**
     * 待办事项总数
     */
    private Long total;
    /**
     * 未完成的待办事项总数
     */
    private Long unfinished;

    /**
     * 已完成的待办事项总数
     */
    private Long finished;

    /**
     * 已过期的待办事项总数
     */
    private Long expired;
}
