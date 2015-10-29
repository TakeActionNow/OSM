CREATE TABLE [global].[hour_code_type] (
    [hour_code_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [hour_code_type_value] NVARCHAR (MAX) NULL,
    [create_date]          DATETIME       NULL,
    [modify_date]          DATETIME       NULL,
    [delete_date]          DATETIME       NULL,
    CONSTRAINT [PK_hour_code_type] PRIMARY KEY CLUSTERED ([hour_code_type_id] ASC) WITH (FILLFACTOR = 90)
);

