CREATE TABLE [global].[city] (
    [city_id]         INT            IDENTITY (1, 1) NOT NULL,
    [country_id]      INT            NOT NULL,
    [province_id]     INT            NULL,
    [municipality_id] INT            NULL,
    [city_name]       NVARCHAR (100) NOT NULL,
    [verified_date]   DATETIME       NULL,
    [create_date]     DATETIME       NULL,
    [modify_date]     DATETIME       NULL,
    [delete_date]     DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([city_id] ASC),
    CONSTRAINT [FK_city_country] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id]),
    CONSTRAINT [FK_city_municipality] FOREIGN KEY ([municipality_id]) REFERENCES [global].[municipality] ([municipality_id]),
    CONSTRAINT [FK_city_province] FOREIGN KEY ([province_id]) REFERENCES [global].[province] ([province_id])
);

