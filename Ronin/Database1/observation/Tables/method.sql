CREATE TABLE [observation].[method] (
    [method_id]   INT            IDENTITY (1, 1) NOT NULL,
    [method_name] NVARCHAR (MAX) NULL,
    [create_date] DATETIME       NULL,
    [modify_date] DATETIME       NULL,
    [delete_date] DATETIME       NULL,
    CONSTRAINT [PK_method] PRIMARY KEY CLUSTERED ([method_id] ASC) WITH (FILLFACTOR = 90)
);

