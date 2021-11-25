package com.ctrl;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

import javax.sql.DataSource;

public class JDBCCtrl {
    private static DataSource source;
    static {
        source = new ComboPooledDataSource();
    }

    public static DataSource getSource(){
        return source;
    }

    public static QueryRunner getRunner (){
        return new QueryRunner(source);
    }
}
