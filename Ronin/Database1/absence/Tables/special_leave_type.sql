CREATE TABLE [absence].[special_leave_type] (
    [special_leave_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]   INT            NOT NULL,
    [hour_code_id]             INT            NULL,
    [special_leave_type_value] NVARCHAR (100) NOT NULL,
    [create_date]              DATETIME       NULL,
    [modify_date]              DATETIME       NULL,
    [delete_date]              DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([special_leave_type_id] ASC),
    CONSTRAINT [FK_special_leave_type_hour_code] FOREIGN KEY ([hour_code_id]) REFERENCES [planning].[hour_code] ([hour_code_id]),
    CONSTRAINT [FK_special_leave_type_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

