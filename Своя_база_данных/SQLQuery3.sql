
ALTER DATABASE ShopDB
ADD FILE
(
    NAME = ShopDB_A1,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ShopDB_A1.ndf',
    SIZE = 11MB,
    FILEGROWTH = 6MB
)
TO FILEGROUP A1;
GO

ALTER DATABASE ShopDB
ADD FILE
(
    NAME = ShopDB_A2,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ShopDB_A2.ndf',
    SIZE = 11MB,
    FILEGROWTH = 6MB
)
TO FILEGROUP A2;
--GO

SELECT
    fg.name AS FileGroupName,
    df.name AS FileName,
    df.physical_name
FROM sys.filegroups fg
LEFT JOIN sys.database_files df
    ON fg.data_space_id = df.data_space_id;
