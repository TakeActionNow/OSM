CREATE TABLE [global].[tax_percentage] (
    [tax_percentage_id]      INT            IDENTITY (1, 1) NOT NULL,
    [country_id]             INT            NOT NULL,
    [tax_percentage_value]   DECIMAL (6, 4) NOT NULL,
    [tax_percentage_type_id] INT            NULL,
    [validity_start_date]    DATE           NULL,
    [validity_end_date]      DATE           NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([tax_percentage_id] ASC),
    CONSTRAINT [FK_tax_percentage_country_id] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id]),
    CONSTRAINT [FK_tax_percentage_tax_percentage_type] FOREIGN KEY ([tax_percentage_type_id]) REFERENCES [global].[tax_percentage_type] ([tax_percentage_type_id])
);

