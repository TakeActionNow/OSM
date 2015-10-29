CREATE TABLE [contract].[cao] (
    [cao_id]             INT             IDENTITY (1, 1) NOT NULL,
    [cao_name]           NVARCHAR (MAX)  NOT NULL,
    [cao_fulltime_hours] DECIMAL (18, 2) NOT NULL,
    [cao_start_datetime] DATETIME        NULL,
    [cao_end_datetime]   DATETIME        NULL,
    [create_date]        DATETIME        NULL,
    [modify_date]        DATETIME        NULL,
    [delete_date]        DATETIME        NULL,
    CONSTRAINT [PK_cao] PRIMARY KEY CLUSTERED ([cao_id] ASC) WITH (FILLFACTOR = 90)
);

