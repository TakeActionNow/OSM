CREATE TABLE [contact].[background] (
    [background_id]    INT           IDENTITY (1, 1) NOT NULL,
    [background_value] NVARCHAR (50) NOT NULL,
    [create_date]      DATETIME      NULL,
    [modify_date]      DATETIME      NULL,
    [delete_date]      DATETIME      NULL,
    CONSTRAINT [PK_background] PRIMARY KEY CLUSTERED ([background_id] ASC) WITH (FILLFACTOR = 90)
);

