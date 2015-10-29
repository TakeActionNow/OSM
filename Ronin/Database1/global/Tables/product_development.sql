CREATE TABLE [global].[product_development] (
    [product_development_id]    INT           IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]    INT           NULL,
    [product_development_value] NVARCHAR (50) NOT NULL,
    [create_date]               DATETIME      NULL,
    [modify_date]               DATETIME      NULL,
    [delete_date]               DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([product_development_id] ASC),
    CONSTRAINT [FK_product_development_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

