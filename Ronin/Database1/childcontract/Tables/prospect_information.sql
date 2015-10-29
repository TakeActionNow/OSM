CREATE TABLE [childcontract].[prospect_information] (
    [prospect_information_id]    INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]     INT            NULL,
    [prospect_information_value] NVARCHAR (100) NOT NULL,
    [create_date]                DATETIME       NULL,
    [modify_date]                DATETIME       NULL,
    [delete_date]                DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([prospect_information_id] ASC),
    CONSTRAINT [FK_prospect_information_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

