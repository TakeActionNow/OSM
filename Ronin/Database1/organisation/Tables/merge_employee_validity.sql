CREATE TABLE [organisation].[merge_employee_validity] (
    [merge_employee_validity_id]            INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_merge_employee_id] INT      NOT NULL,
    [merge_employee_start_date]             DATE     NOT NULL,
    [merge_employee_end_date]               DATE     NOT NULL,
    [create_date]                           DATETIME NULL,
    [modify_date]                           DATETIME NULL,
    [delete_date]                           DATETIME NULL,
    PRIMARY KEY CLUSTERED ([merge_employee_validity_id] ASC),
    CONSTRAINT [FK_merge_employee_validity_organizational_unit_merge_employee] FOREIGN KEY ([organizational_unit_merge_employee_id]) REFERENCES [organisation].[organizational_unit_merge_employee] ([organizational_unit_merge_employee_id])
);

