CREATE TABLE [absence].[contact_recovery_planning_hours] (
    [planning_hours_contact_recovery_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact_recovery_id]                INT      NOT NULL,
    [planning_hours_id]                  INT      NOT NULL,
    [create_date]                        DATETIME NULL,
    [modify_date]                        DATETIME NULL,
    [delete_date]                        DATETIME NULL,
    PRIMARY KEY CLUSTERED ([planning_hours_contact_recovery_id] ASC),
    CONSTRAINT [FK_contact_recovery_planning_hours_contact_recovery] FOREIGN KEY ([contact_recovery_id]) REFERENCES [absence].[contact_recovery] ([contact_recovery_id]),
    CONSTRAINT [FK_contact_recovery_planning_hours_planning_hours] FOREIGN KEY ([planning_hours_id]) REFERENCES [planning].[planning_hours] ([planning_hours_id])
);

