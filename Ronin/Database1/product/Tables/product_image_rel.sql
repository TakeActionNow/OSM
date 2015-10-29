CREATE TABLE [product].[product_image_rel] (
    [product_image_id]        INT      IDENTITY (1, 1) NOT NULL,
    [product_id]              INT      NOT NULL,
    [image_id]                INT      NOT NULL,
    [product_image_is_avatar] BIT      NULL,
    [create_date]             DATETIME NULL,
    [modify_date]             DATETIME NULL,
    [delete_date]             DATETIME NULL,
    PRIMARY KEY CLUSTERED ([product_image_id] ASC),
    CONSTRAINT [FK_product_image_rel_image] FOREIGN KEY ([image_id]) REFERENCES [media].[image] ([image_id]),
    CONSTRAINT [FK_product_image_rel_product] FOREIGN KEY ([product_id]) REFERENCES [product].[product] ([product_id])
);

