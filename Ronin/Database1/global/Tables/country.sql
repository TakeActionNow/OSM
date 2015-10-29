CREATE TABLE [global].[country] (
    [country_id]   INT            IDENTITY (1, 1) NOT NULL,
    [country_name] NVARCHAR (MAX) NULL,
    [digit2]       NVARCHAR (50)  NULL,
    [digit3]       NVARCHAR (50)  NULL,
    [ISO_3166_2]   NVARCHAR (50)  NULL,
    [continent_id] INT            NULL,
    [create_date]  DATETIME       NULL,
    [modify_date]  DATETIME       NULL,
    [delete_date]  DATETIME       NULL,
    CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED ([country_id] ASC),
    CONSTRAINT [FK_country_continent] FOREIGN KEY ([continent_id]) REFERENCES [global].[continent] ([continent_id])
);

