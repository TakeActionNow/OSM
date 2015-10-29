CREATE TABLE [service].[service] (
    [service_id]   INT            IDENTITY (1, 1) NOT NULL,
    [service_name] NVARCHAR (MAX) NULL,
    [create_date]  DATETIME       NULL,
    [modify_date]  DATETIME       NULL,
    [delete_date]  DATETIME       NULL,
    CONSTRAINT [PK_service] PRIMARY KEY CLUSTERED ([service_id] ASC) WITH (FILLFACTOR = 90)
);

