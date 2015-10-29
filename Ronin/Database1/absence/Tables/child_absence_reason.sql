CREATE TABLE [absence].[child_absence_reason] (
    [child_absence_reason_id]    INT            IDENTITY (1, 1) NOT NULL,
    [child_absence_reason_value] NVARCHAR (100) NOT NULL,
    [create_date]                DATETIME       NULL,
    [modify_date]                DATETIME       NULL,
    [delete_date]                DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([child_absence_reason_id] ASC)
);

