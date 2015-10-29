CREATE TABLE [product].[product_source_information] (
    [product_source_information_id] INT            IDENTITY (1, 1) NOT NULL,
    [product_id]                    INT            NOT NULL,
    [source_id]                     INT            NOT NULL,
    [product_source_identifier]     NVARCHAR (255) NULL,
    [create_date]                   DATETIME       NULL,
    [modify_date]                   DATETIME       NULL,
    [delete_date]                   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([product_source_information_id] ASC),
    CONSTRAINT [FK_product_source_information_product] FOREIGN KEY ([product_id]) REFERENCES [product].[product] ([product_id]),
    CONSTRAINT [FK_product_source_information_source] FOREIGN KEY ([source_id]) REFERENCES [global].[source] ([source_id])
);

