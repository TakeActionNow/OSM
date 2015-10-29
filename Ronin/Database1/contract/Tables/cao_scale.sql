CREATE TABLE [contract].[cao_scale] (
    [cao_scale_id]              INT            IDENTITY (1, 1) NOT NULL,
    [cao_id]                    INT            NOT NULL,
    [organizational_unit_id]    INT            NULL,
    [cao_scale_name]            NVARCHAR (MAX) NOT NULL,
    [cao_scale_valid_startdate] DATETIME       NULL,
    [cao_scale_valid_enddate]   DATETIME       NULL,
    [create_date]               DATETIME       NULL,
    [modify_date]               DATETIME       NULL,
    [delete_date]               DATETIME       NULL,
    CONSTRAINT [PK_cao_scale] PRIMARY KEY CLUSTERED ([cao_scale_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_cao_scale_cao] FOREIGN KEY ([cao_id]) REFERENCES [contract].[cao] ([cao_id]),
    CONSTRAINT [FK_cao_scale_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

