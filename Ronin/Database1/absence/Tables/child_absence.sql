CREATE TABLE [absence].[child_absence] (
    [child_absence_id]                    INT            IDENTITY (1, 1) NOT NULL,
    [contact_id]                          INT            NOT NULL,
    [child_hour_status_id]                INT            NOT NULL,
    [child_absence_reason_id]             INT            NULL,
    [child_absence_start_datetime]        DATETIME       NOT NULL,
    [child_absence_end_datetime]          DATETIME       NULL,
    [child_absence_expected_end_datetime] DATETIME       NULL,
    [child_absence_comment]               NVARCHAR (100) NULL,
    [create_date]                         DATETIME       NULL,
    [modify_date]                         DATETIME       NULL,
    [delete_date]                         DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([child_absence_id] ASC),
    CONSTRAINT [FK_child_absence_child_absence_reason] FOREIGN KEY ([child_absence_reason_id]) REFERENCES [absence].[child_absence_reason] ([child_absence_reason_id]),
    CONSTRAINT [FK_child_absence_child_hour_status] FOREIGN KEY ([child_hour_status_id]) REFERENCES [global].[child_hour_status] ([child_hour_status_id]),
    CONSTRAINT [FK_child_absence_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

