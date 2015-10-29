CREATE TABLE [product].[product_transport] (
    [product_transport_id]       INT             IDENTITY (1, 1) NOT NULL,
    [product_id]                 INT             NOT NULL,
    [transport_type_id]          INT             NULL,
    [product_transport_location] NVARCHAR (50)   NULL,
    [transport_cost_per_hour]    DECIMAL (10, 2) NULL,
    [transport_traveltime]       INT             NULL,
    [transportation_cost]        DECIMAL (10, 2) NULL,
    [create_date]                DATETIME        NULL,
    [modify_date]                DATETIME        NULL,
    [delete_date]                DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([product_transport_id] ASC),
    CONSTRAINT [FK_product_transport_product] FOREIGN KEY ([product_id]) REFERENCES [product].[product] ([product_id]),
    CONSTRAINT [FK_product_transport_transport_type] FOREIGN KEY ([transport_type_id]) REFERENCES [global].[transport_type] ([transport_type_id])
);

