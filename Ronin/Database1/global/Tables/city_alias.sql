CREATE TABLE [global].[city_alias] (
    [city_alias_id]    INT            IDENTITY (1, 1) NOT NULL,
    [city_id]          INT            NOT NULL,
    [city_alias_value] NVARCHAR (100) NOT NULL,
    [create_date]      DATETIME       NULL,
    [modify_date]      DATETIME       NULL,
    [delete_date]      DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([city_alias_id] ASC),
    CONSTRAINT [FK_city_alias_city] FOREIGN KEY ([city_id]) REFERENCES [global].[city] ([city_id])
);

