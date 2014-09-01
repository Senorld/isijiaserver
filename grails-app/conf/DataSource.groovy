dataSource {
    pooled = true
    dialect = org.hibernate.dialect.MySQL5InnoDBDialect
    driverClassName = "com.mysql.jdbc.Driver"
    username = "isijiac"
    password = "wykWYK1994"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://senorldroll.com:3306/isijiac_prod?useUnicode=yes&characterEncoding=UTF-8"
            username = "isijiac"
            password = "wykWYK1994"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://senorldroll.com:3306/isijiac_prod?useUnicode=yes&characterEncoding=UTF-8"
            username = "isijiac"
            password = "wykWYK1994"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/isijiac_prod?useUnicode=yes&characterEncoding=UTF-8"
            username = "isijiac"
            password = "wykWYK1994"
            pooled = true
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis=1800000
                timeBetweenEvictionRunsMillis=1800000
                numTestsPerEvictionRun=3
                testOnBorrow=true
                testWhileIdle=true
                testOnReturn=true
                validationQuery="SELECT 1"
            }
        }
    }
}