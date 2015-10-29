CREATE TABLE [contact].[child_details] (
    [contact_id]                              INT            NOT NULL,
    [contact_is_fragile]                      BIT            DEFAULT ((0)) NOT NULL,
    [contact_has_regular_vaccination_program] BIT            DEFAULT ((0)) NOT NULL,
    [contact_medical_comment]                 NVARCHAR (MAX) NULL,
    [create_date]                             DATETIME       NULL,
    [modify_date]                             DATETIME       NULL,
    [delete_date]                             DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([contact_id] ASC),
    CONSTRAINT [FK_child_details_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

