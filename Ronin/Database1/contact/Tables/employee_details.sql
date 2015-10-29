CREATE TABLE [contact].[employee_details] (
    [contact_id]                               INT      NOT NULL,
    [identification_type_id]                   INT      NULL,
    [employee_details_has_jus]                 BIT      DEFAULT ((0)) NOT NULL,
    [employee_has_notice_of_good_conduct]      BIT      NULL,
    [employee_notice_of_good_conduct_end_date] DATE     NULL,
    [create_date]                              DATETIME NULL,
    [modify_date]                              DATETIME NULL,
    [delete_date]                              DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_id] ASC),
    CONSTRAINT [FK_employee_details_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_employee_details_identification_type] FOREIGN KEY ([identification_type_id]) REFERENCES [global].[identification_type] ([identification_type_id])
);

