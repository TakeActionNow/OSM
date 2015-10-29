CREATE TABLE [service].[permission] (
    [permission_id]    INT            IDENTITY (1, 1) NOT NULL,
    [permission_value] NVARCHAR (MAX) NULL,
    [create_date]      DATETIME       NULL,
    [modify_date]      DATETIME       NULL,
    [delete_date]      DATETIME       NULL,
    CONSTRAINT [PK_permission] PRIMARY KEY CLUSTERED ([permission_id] ASC) WITH (FILLFACTOR = 90)
);

