CREATE TABLE [contact].[status] (
    [status_id]    INT            IDENTITY (1, 1) NOT NULL,
    [status_value] NVARCHAR (MAX) NOT NULL,
    [create_date]  DATETIME       NULL,
    [modify_date]  DATETIME       NULL,
    [delete_date]  DATETIME       NULL,
    CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED ([status_id] ASC) WITH (FILLFACTOR = 90)
);

