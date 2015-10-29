CREATE TABLE [global].[province] (
    [province_id]           INT            IDENTITY (1, 1) NOT NULL,
    [country_id]            INT            NULL,
    [province_name]         NVARCHAR (100) NOT NULL,
    [province_abbreviation] NVARCHAR (20)  NULL,
    [province_alias]        NVARCHAR (50)  NULL,
    [verified_date]         DATETIME       NULL,
    [create_date]           DATETIME       NULL,
    [modify_date]           DATETIME       NULL,
    [delete_date]           DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([province_id] ASC),
    CONSTRAINT [FK_province_country] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id])
);

