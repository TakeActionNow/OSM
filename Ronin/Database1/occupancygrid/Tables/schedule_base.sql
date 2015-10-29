CREATE TABLE [occupancygrid].[schedule_base] (
    [schedule_base_id]              INT            IDENTITY (1, 1) NOT NULL,
    [schedule_base_name]            NVARCHAR (MAX) NOT NULL,
    [schedule_base_valid_startdate] DATETIME       NULL,
    [schedule_base_valid_enddate]   DATETIME       NULL,
    [previous_schedule_base_id]     INT            NULL,
    [create_date]                   DATETIME       NULL,
    [modify_date]                   DATETIME       NULL,
    [delete_date]                   DATETIME       NULL,
    CONSTRAINT [PK_schedule] PRIMARY KEY CLUSTERED ([schedule_base_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_schedule_base_schedule_base] FOREIGN KEY ([previous_schedule_base_id]) REFERENCES [occupancygrid].[schedule_base] ([schedule_base_id])
);

