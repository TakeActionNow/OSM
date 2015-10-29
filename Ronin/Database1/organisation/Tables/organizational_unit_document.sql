CREATE TABLE [organisation].[organizational_unit_document] (
    [organizational_unit_document_id] INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]          INT            NOT NULL,
    [document_id]                     INT            NOT NULL,
    [document_category_id]            INT            NULL,
    [document_title]                  NVARCHAR (100) NULL,
    [create_date]                     DATETIME       NULL,
    [modify_date]                     DATETIME       NULL,
    [delete_date]                     DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_document_id] ASC),
    CONSTRAINT [FK_organizational_unit_document_document] FOREIGN KEY ([document_id]) REFERENCES [media].[document] ([document_id]),
    CONSTRAINT [FK_organizational_unit_document_document_category_id] FOREIGN KEY ([document_category_id]) REFERENCES [media].[document_category] ([document_category_id]),
    CONSTRAINT [FK_organizational_unit_document_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

