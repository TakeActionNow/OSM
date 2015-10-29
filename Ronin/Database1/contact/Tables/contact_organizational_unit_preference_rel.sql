CREATE TABLE [contact].[contact_organizational_unit_preference_rel] (
    [contact_organizational_unit_preference_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                                INT      NOT NULL,
    [organizational_unit_id]                    INT      NOT NULL,
    [has_preference]                            BIT      DEFAULT ((1)) NOT NULL,
    [create_date]                               DATETIME NULL,
    [modify_date]                               DATETIME NULL,
    [delete_date]                               DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_organizational_unit_preference_id] ASC),
    CONSTRAINT [FK_contact_organizational_unit_preference_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_organizational_unit_preference_rel_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

