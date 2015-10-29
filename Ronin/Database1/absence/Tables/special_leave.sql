CREATE TABLE [absence].[special_leave] (
    [special_leave_id]                INT             IDENTITY (1, 1) NOT NULL,
    [special_leave_type_id]           INT             NOT NULL,
    [contact_id]                      INT             NOT NULL,
    [special_leave_start_date]        DATE            NOT NULL,
    [special_leave_end_date]          DATE            NULL,
    [special_leave_hours_amount]      DECIMAL (10, 2) NULL,
    [special_leave_has_pension]       BIT             DEFAULT ((0)) NOT NULL,
    [special_leave_has_continued_pay] BIT             DEFAULT ((0)) NOT NULL,
    [create_date]                     DATETIME        NULL,
    [modify_date]                     DATETIME        NULL,
    [delete_date]                     DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([special_leave_id] ASC),
    CONSTRAINT [FK_special_leave_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_special_leave_special_leave_type] FOREIGN KEY ([special_leave_type_id]) REFERENCES [absence].[special_leave_type] ([special_leave_type_id])
);

