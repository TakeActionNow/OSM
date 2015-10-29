CREATE TABLE [contact].[role] (
    [role_id]     INT            IDENTITY (1, 1) NOT NULL,
    [role_value]  NVARCHAR (MAX) NULL,
    [create_date] DATETIME       NULL,
    [modify_date] DATETIME       NULL,
    [delete_date] DATETIME       NULL,
    CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED ([role_id] ASC) WITH (FILLFACTOR = 90)
);

