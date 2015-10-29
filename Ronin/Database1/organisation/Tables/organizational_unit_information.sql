CREATE TABLE [organisation].[organizational_unit_information] (
    [organizational_unit_id]         INT            NOT NULL,
    [information_minimum_age]        INT            NULL,
    [information_minimum_age_months] INT            NULL,
    [information_maximum_age]        INT            NULL,
    [information_maximum_age_months] INT            NULL,
    [information_capacity]           INT            NULL,
    [information_has_KL_ratio]       BIT            DEFAULT ((0)) NOT NULL,
    [information_LRK_number]         NVARCHAR (255) NULL,
    [information_coc_number]         INT            NULL,
    [information_division_code]      NVARCHAR (50)  NULL,
    [create_date]                    DATETIME       NULL,
    [modify_date]                    DATETIME       NULL,
    [delete_date]                    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_id] ASC),
    CONSTRAINT [FK_organizational_unit_information_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

