CREATE TABLE [absence].[leave] (
    [leave_id]             INT             IDENTITY (1, 1) NOT NULL,
    [contact_id]           INT             NOT NULL,
    [leave_type_id]        INT             NULL,
    [leave_subtype_id]     INT             NOT NULL,
    [leave_start_datetime] DATETIME        NOT NULL,
    [leave_end_datetime]   DATETIME        NOT NULL,
    [leave_period_id]      INT             NULL,
    [leave_hours]          DECIMAL (10, 2) NULL,
    [leave_is_entire_day]  BIT             NULL,
    [leave_comment]        NVARCHAR (255)  NULL,
    [create_date]          DATETIME        NULL,
    [modify_date]          DATETIME        NULL,
    [delete_date]          DATETIME        NULL,
    CONSTRAINT [PK_leave] PRIMARY KEY CLUSTERED ([leave_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_leave_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_leave_leave_period] FOREIGN KEY ([leave_period_id]) REFERENCES [absence].[leave_period] ([leave_period_id]),
    CONSTRAINT [FK_leave_leave_subtype] FOREIGN KEY ([leave_subtype_id]) REFERENCES [absence].[leave_subtype] ([leave_subtype_id]),
    CONSTRAINT [FK_leave_leave_type] FOREIGN KEY ([leave_type_id]) REFERENCES [absence].[leave_type] ([leave_type_id])
);

