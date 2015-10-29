CREATE TABLE [contact].[password] (
    [password_id]    INT            IDENTITY (1, 1) NOT NULL,
    [password_value] NVARCHAR (MAX) NULL,
    [encryption_key] NVARCHAR (MAX) NULL,
    [is_temporary]   BIT            NULL,
    [create_date]    DATETIME       NULL,
    [modify_date]    DATETIME       NULL,
    [delete_date]    DATETIME       NULL,
    CONSTRAINT [PK_password] PRIMARY KEY CLUSTERED ([password_id] ASC) WITH (FILLFACTOR = 90)
);

