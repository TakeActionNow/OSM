CREATE TABLE [global].[municipality] (
    [municipality_id]    INT            IDENTITY (1, 1) NOT NULL,
    [municipality_value] NVARCHAR (100) NOT NULL,
    [municipality_code]  NVARCHAR (30)  NULL,
    [country_id]         INT            NULL,
    [verified_date]      DATETIME       NULL,
    [create_date]        DATETIME       NULL,
    [modify_date]        DATETIME       NULL,
    [delete_date]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([municipality_id] ASC),
    CONSTRAINT [FK_municipality_country] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id])
);

