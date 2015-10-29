CREATE TABLE [sync].[web_planrad_queue] (
    [web_planrad_queue_id]   INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT            NOT NULL,
    [web_table]              NVARCHAR (100) NULL,
    [key1]                   INT            NULL,
    [create_date]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([web_planrad_queue_id] ASC),
    CONSTRAINT [FK_web_planrad_queue_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

