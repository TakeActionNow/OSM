CREATE TABLE [occupancygrid].[schedule_organizational_unit_rel] (
    [schedule_organizational_unit_id] INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]          INT      NOT NULL,
    [schedule_base_id]                INT      NOT NULL,
    [create_date]                     DATETIME NULL,
    [delete_date]                     DATETIME NULL,
    CONSTRAINT [PK_schedule_organizational_unit_rel] PRIMARY KEY CLUSTERED ([schedule_organizational_unit_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_schedule_organizational_unit_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_schedule_organizational_unit_rel_schedule_base] FOREIGN KEY ([schedule_base_id]) REFERENCES [occupancygrid].[schedule_base] ([schedule_base_id])
);

