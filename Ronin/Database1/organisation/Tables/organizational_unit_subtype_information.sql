CREATE TABLE [organisation].[organizational_unit_subtype_information] (
    [organizational_unit_subtype_information_id] INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]                     INT            NULL,
    [organizational_unit_subtype_id]             INT            NOT NULL,
    [subtype_information_description]            NVARCHAR (100) NOT NULL,
    [create_date]                                DATETIME       NULL,
    [modify_date]                                DATETIME       NULL,
    [delete_date]                                DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_subtype_information_id] ASC),
    CONSTRAINT [FK_organizational_unit_subtype_information_] FOREIGN KEY ([organizational_unit_subtype_id]) REFERENCES [organisation].[organizational_unit_subtype] ([organizational_unit_subtype_id]),
    CONSTRAINT [FK_organizational_unit_subtype_information_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

