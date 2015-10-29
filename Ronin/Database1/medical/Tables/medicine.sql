CREATE TABLE [medical].[medicine] (
    [medicine_id]            INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT            NULL,
    [medicine_name]          NVARCHAR (100) NOT NULL,
    [medicine_leaflet]       TEXT           NULL,
    [verified_date]          DATETIME       NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([medicine_id] ASC),
    CONSTRAINT [FK_medicine_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

