CREATE TABLE [planning].[hour_code] (
    [hour_code_id]                       INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]             INT            NOT NULL,
    [hour_code_type_id]                  INT            NULL,
    [hour_code_category_id]              INT            NULL,
    [hour_code_description]              NVARCHAR (MAX) NULL,
    [hour_code_percentage]               INT            NULL,
    [hour_code_has_BK_ratio]             BIT            DEFAULT ((0)) NOT NULL,
    [hour_code_has_vacation_buildup]     BIT            DEFAULT ((0)) NOT NULL,
    [hour_code_has_SV_Days]              BIT            DEFAULT ((0)) NOT NULL,
    [hour_code_has_recalculation]        BIT            DEFAULT ((0)) NOT NULL,
    [hour_code_has_hour_difference]      BIT            DEFAULT ((0)) NOT NULL,
    [hour_code_has_contract_calculation] BIT            DEFAULT ((0)) NOT NULL,
    [create_date]                        DATETIME       NULL,
    [modify_date]                        DATETIME       NULL,
    [delete_date]                        DATETIME       NULL,
    CONSTRAINT [PK_hour_code] PRIMARY KEY CLUSTERED ([hour_code_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_hour_code_hour_code] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_hour_code_hour_code_category] FOREIGN KEY ([hour_code_category_id]) REFERENCES [global].[hour_code_category] ([hour_code_category_id]),
    CONSTRAINT [FK_hour_code_hour_code_type] FOREIGN KEY ([hour_code_type_id]) REFERENCES [global].[hour_code_type] ([hour_code_type_id])
);

