CREATE TABLE [global].[nationality] (
    [nationality_id]    INT            IDENTITY (1, 1) NOT NULL,
    [country_id]        INT            NULL,
    [nationality_value] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([nationality_id] ASC),
    CONSTRAINT [FK_nationality_country] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id])
);

