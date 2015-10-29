CREATE TABLE [global].[zipcode_street_rel] (
    [zipcode_street_id]           INT      IDENTITY (1, 1) NOT NULL,
    [zipcode_id]                  INT      NOT NULL,
    [street_id]                   INT      NOT NULL,
    [zipcode_housenumber_type_id] INT      NULL,
    [zipcode_street_number_begin] INT      NULL,
    [zipcode_street_number_end]   INT      NULL,
    [verified_date]               DATETIME NULL,
    [create_date]                 DATETIME NULL,
    [modify_date]                 DATETIME NULL,
    [delete_date]                 DATETIME NULL,
    PRIMARY KEY CLUSTERED ([zipcode_street_id] ASC),
    CONSTRAINT [FK_zipcode_street_rel_street] FOREIGN KEY ([street_id]) REFERENCES [global].[street] ([street_id]),
    CONSTRAINT [FK_zipcode_street_rel_zipcode] FOREIGN KEY ([zipcode_id]) REFERENCES [global].[zipcode] ([zipcode_id]),
    CONSTRAINT [FK_zipcode_street_rel_zipcode_housenumber_type] FOREIGN KEY ([zipcode_housenumber_type_id]) REFERENCES [global].[zipcode_housenumber_type] ([zipcode_housenumber_type_id])
);

