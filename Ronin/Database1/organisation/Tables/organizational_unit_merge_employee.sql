CREATE TABLE [organisation].[organizational_unit_merge_employee] (
    [organizational_unit_merge_employee_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                            INT      NOT NULL,
    [new_organizational_unit_id]            INT      NOT NULL,
    [old_organizational_unit_id]            INT      NOT NULL,
    [create_date]                           DATETIME NULL,
    [modify_date]                           DATETIME NULL,
    [delete_date]                           DATETIME NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_merge_employee_id] ASC),
    CONSTRAINT [FK_organizational_unit_merge_employee_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_organizational_unit_merge_employee_organizational_unit] FOREIGN KEY ([new_organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_merge_employee_organizational_unit1] FOREIGN KEY ([old_organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

