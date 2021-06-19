## 说明
`/docker-entrypoint-initdb.d/init.sql` 会在mysql第一次启动时执行, 之后重启容器不会重复执行.
如果此目录放置多个sql文件，它执行时是没有顺序的, 因此，这个目录只放一个init.sql，专门用来控制执行sql顺序的。

`sql` 目录中存放你真正要运行的 sql, 需要在 `/docker-entrypoint-initdb.d/init.sql` 引入.

配合如下的 `docker-compose` 文件使用:

```yaml
    volumes:
      - '.docker-compose/mysql/conf.d:/etc/mysql/conf.d'
      - '.docker-compose/mysql/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d'
      - '.docker-compose/mysql/sql:/opt/sql'
```