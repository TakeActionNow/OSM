CREATE TABLE [product].[product_activity_connection] (
    [product_activity_connection_id] INT      IDENTITY (1, 1) NOT NULL,
    [product_allocation_id]          INT      NOT NULL,
    [activity_allocation_id]         INT      NOT NULL,
    [activity_is_mandatory]          BIT      DEFAULT ((0)) NOT NULL,
    [product_is_mandatory]           BIT      DEFAULT ((0)) NOT NULL,
    [mandatory_hours_amount]         INT      NULL,
    [create_date]                    DATETIME NULL,
    [modify_date]                    DATETIME NULL,
    [delete_date]                    DATETIME NULL,
    PRIMARY KEY CLUSTERED ([product_activity_connection_id] ASC),
    CONSTRAINT [FK_product_activity_connection_activity_allocation] FOREIGN KEY ([activity_allocation_id]) REFERENCES [product].[product_allocation] ([product_allocation_id]),
    CONSTRAINT [FK_product_activity_connection_product_allocation] FOREIGN KEY ([product_allocation_id]) REFERENCES [product].[product_allocation] ([product_allocation_id])
);

