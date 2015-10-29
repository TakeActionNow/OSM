CREATE TABLE [global].[zipcode] (
    [zipcode_id]    INT           IDENTITY (1, 1) NOT NULL,
    [country_id]    INT           NULL,
    [city_id]       INT           NULL,
    [zipcode_value] NVARCHAR (20) NOT NULL,
    [verified_date] DATETIME      NULL,
    [create_date]   DATETIME      NULL,
    [modify_date]   DATETIME      NULL,
    [delete_date]   DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([zipcode_id] ASC),
    CONSTRAINT [FK_zipcode_city] FOREIGN KEY ([city_id]) REFERENCES [global].[city] ([city_id]),
    CONSTRAINT [FK_zipcode_country] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id])
);

