CREATE TABLE [contract].[cao_leave_type_rel] (
    [cao_leave_type_id]          INT      IDENTITY (1, 1) NOT NULL,
    [cao_id]                     INT      NOT NULL,
    [leave_type_id]              INT      NOT NULL,
    [cao_leave_type_year]        DATE     NULL,
    [cao_leave_type_hours_saldo] INT      NULL,
    [create_date]                DATETIME NULL,
    [delete_date]                DATETIME NULL,
    CONSTRAINT [PK_cao_leave_type_rel] PRIMARY KEY CLUSTERED ([cao_leave_type_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_cao_leave_type_rel_cao] FOREIGN KEY ([cao_id]) REFERENCES [contract].[cao] ([cao_id]),
    CONSTRAINT [FK_cao_leave_type_rel_leave_type] FOREIGN KEY ([leave_type_id]) REFERENCES [absence].[leave_type] ([leave_type_id])
);

