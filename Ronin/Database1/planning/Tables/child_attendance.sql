CREATE TABLE [planning].[child_attendance] (
    [child_attendance_id]             INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                      INT      NOT NULL,
    [child_allocation_id]             INT      NULL,
    [organizational_unit_id]          INT      NOT NULL,
    [product_allocation_id]           INT      NULL,
    [child_contract_id]               INT      NULL,
    [child_hour_status_id]            INT      NULL,
    [child_attendance_start_datetime] DATETIME NOT NULL,
    [child_attendance_end_datetime]   DATETIME NULL,
    [create_date]                     DATETIME NULL,
    [modify_date]                     DATETIME NULL,
    [delete_date]                     DATETIME NULL,
    PRIMARY KEY CLUSTERED ([child_attendance_id] ASC),
    CONSTRAINT [FK_child_attendance_child_allocation] FOREIGN KEY ([child_allocation_id]) REFERENCES [planning].[child_allocation] ([child_allocation_id]),
    CONSTRAINT [FK_child_attendance_child_contract] FOREIGN KEY ([child_contract_id]) REFERENCES [childcontract].[child_contract] ([child_contract_id]),
    CONSTRAINT [FK_child_attendance_child_hour_status] FOREIGN KEY ([child_hour_status_id]) REFERENCES [global].[child_hour_status] ([child_hour_status_id]),
    CONSTRAINT [FK_child_attendance_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_child_attendance_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_child_attendance_product_allocation] FOREIGN KEY ([product_allocation_id]) REFERENCES [product].[product_allocation] ([product_allocation_id])
);

