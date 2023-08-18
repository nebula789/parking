package io.nebula.parking;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;

import java.sql.SQLException;

public class FastAutoGeneratorTest {

    /**
     * 执行 run
     */
    public static void main(String[] args) throws SQLException {
        FastAutoGenerator.create("jdbc:mysql://127.0.0.1:3306/park_member", "root", "root")
            // 数据库配置
            .dataSourceConfig((scanner, builder) -> builder.schema(scanner.apply("" +
                    "")))
            // 全局配置
            .globalConfig((scanner, builder) -> builder.author(scanner.apply("请输入作者名称")))
            // 包配置
            .packageConfig((scanner, builder) -> builder.parent(scanner.apply("请输入包名")))
            // 策略配置
            .strategyConfig((scanner, builder) -> builder.addInclude(scanner.apply("请输入表名，多个表名用,隔开")))
            /*
                模板引擎配置，默认 Velocity 可选模板引擎 Beetl 或 Freemarker 或 Enjoy
               .templateEngine(new BeetlTemplateEngine())
               .templateEngine(new FreemarkerTemplateEngine())
               .templateEngine(new EnjoyTemplateEngine())
             */
            .execute();
    }
}