CREATE TABLE [global].[address] (
    [address_id]                    INT           IDENTITY (1, 1) NOT NULL,
    [zipcode_id]                    INT           NULL,
    [street_id]                     INT           NULL,
    [city_id]                       INT           NULL,
    [address_housenumber]           NVARCHAR (50) NULL,
    [address_housenumber_extension] NVARCHAR (50) NULL,
    [create_date]                   DATETIME      NULL,
    [modify_date]                   DATETIME      NULL,
    [delete_date]                   DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([address_id] ASC),
    CONSTRAINT [FK_address_city] FOREIGN KEY ([city_id]) REFERENCES [global].[city] ([city_id]),
    CONSTRAINT [FK_address_street] FOREIGN KEY ([street_id]) REFERENCES [global].[street] ([street_id]),
    CONSTRAINT [FK_address_zipcode] FOREIGN KEY ([zipcode_id]) REFERENCES [global].[zipcode] ([zipcode_id])
);

