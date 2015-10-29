CREATE TABLE [contact].[role_type] (
    [role_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [role_type_value] NVARCHAR (MAX) NULL,
    [verified_date]   DATETIME       NULL,
    [create_date]     DATETIME       NULL,
    [modify_date]     DATETIME       NULL,
    [delete_date]     DATETIME       NULL,
    CONSTRAINT [PK_role_type] PRIMARY KEY CLUSTERED ([role_type_id] ASC) WITH (FILLFACTOR = 90)
);

