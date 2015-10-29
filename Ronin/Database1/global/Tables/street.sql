CREATE TABLE [global].[street] (
    [street_id]     INT            IDENTITY (1, 1) NOT NULL,
    [city_id]       INT            NOT NULL,
    [street_value]  NVARCHAR (100) NOT NULL,
    [verified_date] DATETIME       NULL,
    [create_date]   DATETIME       NULL,
    [modify_date]   DATETIME       NULL,
    [delete_date]   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([street_id] ASC),
    CONSTRAINT [FK_street_city] FOREIGN KEY ([city_id]) REFERENCES [global].[city] ([city_id])
);

