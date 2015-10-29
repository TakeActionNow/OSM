CREATE TABLE [observation].[category] (
    [category_id]    INT            IDENTITY (1, 1) NOT NULL,
    [category_value] NVARCHAR (MAX) NULL,
    [create_date]    DATETIME       NULL,
    [modify_date]    DATETIME       NULL,
    [delete_date]    DATETIME       NULL,
    CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED ([category_id] ASC) WITH (FILLFACTOR = 90)
);

