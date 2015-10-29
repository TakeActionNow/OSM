CREATE TABLE [invoice].[tax_condition] (
    [tax_condition_id]          INT            IDENTITY (1, 1) NOT NULL,
    [source_id]                 INT            NOT NULL,
    [tax_percentage_id]         INT            NOT NULL,
    [tax_condition_code]        NVARCHAR (50)  NULL,
    [tax_condition_description] NVARCHAR (MAX) NOT NULL,
    [create_date]               DATETIME       NULL,
    [modify_date]               DATETIME       NULL,
    [delete_date]               DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([tax_condition_id] ASC),
    CONSTRAINT [FK_tax_condition_source] FOREIGN KEY ([source_id]) REFERENCES [global].[source] ([source_id]),
    CONSTRAINT [FK_tax_condition_tax_percentage] FOREIGN KEY ([tax_percentage_id]) REFERENCES [global].[tax_percentage] ([tax_percentage_id])
);

