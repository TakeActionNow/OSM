CREATE TABLE [absence].[contact_recovery] (
    [contact_recovery_id]              INT            IDENTITY (1, 1) NOT NULL,
    [contact_illness_id]               INT            NOT NULL,
    [contact_recovery_start_datetime]  DATETIME       NOT NULL,
    [contact_recovery_end_datetime]    DATETIME       NULL,
    [contact_recovery_percentage]      DECIMAL (7, 4) NULL,
    [recovery_is_keeping_replacements] BIT            DEFAULT ((1)) NOT NULL,
    [recovery_is_keeping_callpool]     BIT            DEFAULT ((1)) NOT NULL,
    [create_date]                      DATETIME       NULL,
    [modify_date]                      DATETIME       NULL,
    [delete_date]                      DATETIME       NULL,
    CONSTRAINT [PK_contact_recovery] PRIMARY KEY CLUSTERED ([contact_recovery_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_recovery_contact_illness] FOREIGN KEY ([contact_illness_id]) REFERENCES [absence].[contact_illness] ([contact_illness_id])
);

