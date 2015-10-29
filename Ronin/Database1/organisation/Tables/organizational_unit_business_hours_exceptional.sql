CREATE TABLE [organisation].[organizational_unit_business_hours_exceptional] (
    [organizational_unit_business_hours_exceptional_id] INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]                            INT            NOT NULL,
    [hour_code_id]                                      INT            NULL,
    [date]                                              DATE           NOT NULL,
    [opening_time]                                      TIME (0)       NULL,
    [closing_time]                                      TIME (0)       NULL,
    [is_closed_entire_day]                              BIT            CONSTRAINT [DF_organizational_unit_business_hours_exceptional_is_closed_entire_day] DEFAULT ((0)) NOT NULL,
    [comment]                                           NVARCHAR (MAX) NULL,
    [create_date]                                       DATETIME       NULL,
    [delete_date]                                       DATETIME       NULL,
    CONSTRAINT [PK_organisation_business_hours_exceptional] PRIMARY KEY CLUSTERED ([organizational_unit_business_hours_exceptional_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_organisation_business_hours_exceptional_organisation] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_organizational_unit_business_hours_exceptional_hour_code] FOREIGN KEY ([hour_code_id]) REFERENCES [planning].[hour_code] ([hour_code_id])
);

