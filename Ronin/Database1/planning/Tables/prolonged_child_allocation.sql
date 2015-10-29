CREATE TABLE [planning].[prolonged_child_allocation] (
    [prolonged_child_allocation_id]         INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                            INT      NOT NULL,
    [product_pattern_id]                    INT      NOT NULL,
    [prolonged_child_allocation_start_date] DATE     NOT NULL,
    [prolonged_child_allocation_end_date]   DATE     NOT NULL,
    [create_date]                           DATETIME NULL,
    [modify_date]                           DATETIME NULL,
    [delete_date]                           DATETIME NULL,
    PRIMARY KEY CLUSTERED ([prolonged_child_allocation_id] ASC),
    CONSTRAINT [FK_prolonged_child_allocation_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_prolonged_child_allocation_product_pattern] FOREIGN KEY ([product_pattern_id]) REFERENCES [product].[product_pattern] ([product_pattern_id])
);

