package com.todo.utils;

import com.todo.entity.ToDoItem;

import java.time.LocalDateTime;

/**
 * @author Sancean
 * @Date 2023/05/01 21:37
 **/
public class CheckUtils {

    public static boolean toDoItemEmptyCheck(ToDoItem toDoItem) {
        if (toDoItem == null) {
            return true;
        }
        String itemTitle = toDoItem.getItemTitle();
        String itemDescription = toDoItem.getItemDescription();
        LocalDateTime creationDate = toDoItem.getCreationDate();
        LocalDateTime dueDate = toDoItem.getDueDate();
        Byte completionFlag = toDoItem.getCompletionFlag();
        return itemTitle == null || itemDescription == null || creationDate == null || dueDate == null || completionFlag == null;
    }
}
