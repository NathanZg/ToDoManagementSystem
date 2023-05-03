package com.todo.utils;

import com.todo.constants.DateConstant;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author Sancean
 * @Date 2023/05/01 21:37
 **/
public class DateUtils {
    public static LocalDateTime parseDate(String date) {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern(DateConstant.Pattern);
        return LocalDateTime.parse(date, dtf);
    }
}
