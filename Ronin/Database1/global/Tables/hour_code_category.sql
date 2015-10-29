CREATE TABLE [global].[hour_code_category] (
    [hour_code_category_id]    INT            IDENTITY (1, 1) NOT NULL,
    [hour_code_category_value] NVARCHAR (MAX) NOT NULL,
    [create_date]              DATETIME       NULL,
    [modify_date]              DATETIME       NULL,
    [delete_date]              DATETIME       NULL,
    CONSTRAINT [PK_hour_code_category] PRIMARY KEY CLUSTERED ([hour_code_category_id] ASC) WITH (FILLFACTOR = 90)
);

