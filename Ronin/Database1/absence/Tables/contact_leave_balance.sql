CREATE TABLE [absence].[contact_leave_balance] (
    [contact_leave_balance_id]    INT             IDENTITY (1, 1) NOT NULL,
    [contact_id]                  INT             NOT NULL,
    [leave_type_id]               INT             NULL,
    [leave_subtype_id]            INT             NULL,
    [contact_leave_balance_date]  DATE            NOT NULL,
    [contact_leave_balance_hours] DECIMAL (18, 2) NOT NULL,
    [create_date]                 DATETIME        NULL,
    [modify_date]                 DATETIME        NULL,
    [delete_date]                 DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([contact_leave_balance_id] ASC),
    CONSTRAINT [FK_contact_leave_balance_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_leave_balance_leave_subtype] FOREIGN KEY ([leave_subtype_id]) REFERENCES [absence].[leave_subtype] ([leave_subtype_id]),
    CONSTRAINT [FK_contact_leave_balance_leave_type] FOREIGN KEY ([leave_type_id]) REFERENCES [absence].[leave_type] ([leave_type_id])
);

