package com.todo;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.config.rules.DbColumnType;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.sql.Types;
import java.util.Collections;

@SpringBootTest
class ToDoManagementSystemApplicationTests {

    @Test
    void contextLoads() {
    }

    @Test
    void generator() {
        String projectPath = System.getProperty("user.dir");
        String outputDir = projectPath + "\\src\\main\\java";
        String mapperDir = projectPath + "\\src\\main\\resources\\mapper";
        FastAutoGenerator.create("jdbc:mysql://localhost:3306/todosystem", "root", "root")
                .globalConfig(builder -> {
                    builder.author("Sancean") // 设置作者
                            .disableOpenDir()
                            .fileOverride() // 覆盖已生成文件
                            .outputDir(outputDir); // 指定输出目录
                })
                .dataSourceConfig(builder -> builder.typeConvertHandler((globalConfig, typeRegistry, metaInfo) -> {
                    int typeCode = metaInfo.getJdbcType().TYPE_CODE;
                    if (typeCode == Types.SMALLINT) {
                        // 自定义类型转换
                        return DbColumnType.INTEGER;
                    }
                    return typeRegistry.getColumnType(metaInfo);

                }))
                .packageConfig(builder -> {
                    builder.parent("com") // 设置父包名
                            .moduleName("todo") // 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, mapperDir)); // 设置mapperXml生成路径
                })
                .strategyConfig(builder -> {
                    builder.addInclude("to_do_item") // 设置需要生成的表名
                            .addTablePrefix("t_", "c_"); // 设置过滤表前缀
                    builder.entityBuilder().enableLombok();
                    builder.mapperBuilder().enableMapperAnnotation();
                    builder.serviceBuilder()
                            .formatServiceFileName("%sService")
                            .formatServiceImplFileName("%sServiceImpl");
                })
                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();
    }

}
