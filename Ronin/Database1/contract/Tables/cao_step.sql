CREATE TABLE [contract].[cao_step] (
    [cao_step_id]            INT            IDENTITY (1, 1) NOT NULL,
    [cao_scale_id]           INT            NOT NULL,
    [organizational_unit_id] INT            NULL,
    [cao_step_name]          NVARCHAR (MAX) NOT NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    CONSTRAINT [PK_cao_step] PRIMARY KEY CLUSTERED ([cao_step_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_cao_step_cao_scale] FOREIGN KEY ([cao_scale_id]) REFERENCES [contract].[cao_scale] ([cao_scale_id]),
    CONSTRAINT [FK_cao_step_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

