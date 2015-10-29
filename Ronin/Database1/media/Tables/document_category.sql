CREATE TABLE [media].[document_category] (
    [document_category_id]    INT            IDENTITY (1, 1) NOT NULL,
    [document_category_value] NVARCHAR (100) NOT NULL,
    [create_date]             DATETIME       NULL,
    [modify_date]             DATETIME       NULL,
    [delete_date]             DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([document_category_id] ASC)
);

