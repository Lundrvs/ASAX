USE PanelesSolares_ELGG;
GO
ALTER DATABASE PanelesSolares_ELGG SET COMPATIBILITY_LEVEL = 130;
ALTER DATABASE PanelesSolares_ELGG SET MEMORY_OPTIMIZED_ELEVATE_TOSNAPSHOT = ON;
ALTER DATABASE PanelesSolares_ELGG ADD FILEGROUP memoria1 CONTAINS MEMORY_OPTIMIZED_DATA;
ALTER DATABASE PanelesSolares_ELGG ADD FILE (
	NAME = archivoDeMemoria1,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\memoria1.ndf'
) TO FILEGROUP memoria1;
--
CREATE TABLE placaSolar (
	ID_placa INT PRIMARY KEY NONCLUSTERED,
	tipo_placa CHAR(20),
) WITH (
	MEMORY_OPTIMIZED = ON;
	DURABILITY = SCHEMA_AND_DATA;
);
