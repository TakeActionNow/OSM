CREATE TABLE [occupancygrid].[schedule_validity] (
    [schedule_base_validity_id]   INT      IDENTITY (1, 1) NOT NULL,
    [schedule_base_id]            INT      NOT NULL,
    [schedule_validity_startdate] DATETIME NOT NULL,
    [schedule_validity_enddate]   DATETIME NOT NULL,
    [create_date]                 DATETIME NULL,
    [modify_date]                 DATETIME NULL,
    [delete_date]                 DATETIME NULL,
    CONSTRAINT [PK_schedule_base_validity] PRIMARY KEY CLUSTERED ([schedule_base_validity_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_schedule_validity_schedule_base] FOREIGN KEY ([schedule_base_id]) REFERENCES [occupancygrid].[schedule_base] ([schedule_base_id])
);

