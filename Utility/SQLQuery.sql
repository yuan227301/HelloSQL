--查询所有表的总行数
--
select schema_name(t.schema_id) as [Schema], t.name as TableName,i.rows as [RowCount]
from sys.tables as t, sysindexes as i
where t.object_id = i.id and i.indid <=1

