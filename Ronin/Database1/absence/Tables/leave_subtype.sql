CREATE TABLE [absence].[leave_subtype] (
    [leave_subtype_id]       INT           IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT           NULL,
    [leave_subtype_value]    NVARCHAR (50) NOT NULL,
    [has_leave_correction]   BIT           DEFAULT ((0)) NOT NULL,
    [create_date]            DATETIME      NULL,
    [modify_date]            DATETIME      NULL,
    [delete_date]            DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([leave_subtype_id] ASC),
    CONSTRAINT [FK_leave_subtype_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

