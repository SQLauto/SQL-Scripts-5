USE DBAdmin;
GO

IF OBJECT_ID('dbo.DatabaseFileIOStats') IS NULL
CREATE TABLE dbo.DatabaseFileIOStats
(
	PeriodStart datetime not null
,	PeriodEnd datetime not null
,	DatabaseName sysname not null
,	FileName sysname not null
,	Sample_ms bigint not null
,	Reads bigint not null
,	BytesRead bigint not null
,	ReadStall_ms bigint not null
,	AvgReadLatency_s decimal(10,6) null
,	Writes bigint not null
,	BytesWritten bigint not null
,	WriteStall_ms bigint not null
,	AvgWriteLatency_s decimal(10,6) null
,	TotalStall_ms bigint not null
,	AvgOverallLatency_s decimal(10,6) null
);

ALTER TABLE dbo.DatabaseFileIOStats ADD CONSTRAINT PK_DatabaseFileIOStats PRIMARY KEY CLUSTERED (PeriodStart, DatabaseName, FileName);
GO
