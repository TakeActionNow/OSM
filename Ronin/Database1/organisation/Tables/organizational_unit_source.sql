CREATE TABLE [organisation].[organizational_unit_source] (
    [organizational_unit_source_id] INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]        INT            NOT NULL,
    [source_id]                     INT            NOT NULL,
    [source_base_url]               NVARCHAR (MAX) NOT NULL,
    [source_client_identifier]      NVARCHAR (100) NULL,
    [source_client_secret]          NVARCHAR (100) NULL,
    [create_date]                   DATETIME       NULL,
    [modify_date]                   DATETIME       NULL,
    [delete_date]                   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_source_id] ASC),
    CONSTRAINT [FK_organizational_unit_source_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_source_source] FOREIGN KEY ([source_id]) REFERENCES [global].[source] ([source_id])
);

