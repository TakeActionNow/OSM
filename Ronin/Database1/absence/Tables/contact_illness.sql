CREATE TABLE [absence].[contact_illness] (
    [contact_illness_id]             INT            IDENTITY (1, 1) NOT NULL,
    [contact_id]                     INT            NOT NULL,
    [organizational_unit_id]         INT            NULL,
    [illness_reason_id]              INT            NOT NULL,
    [contact_illness_complaint]      NVARCHAR (MAX) NULL,
    [contact_illness_commentary]     NVARCHAR (MAX) NULL,
    [contact_illness_start_datetime] DATETIME       NOT NULL,
    [contact_illness_end_datetime]   DATETIME       NULL,
    [create_date]                    DATETIME       NULL,
    [delete_date]                    DATETIME       NULL,
    CONSTRAINT [PK_contact_illness] PRIMARY KEY CLUSTERED ([contact_illness_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_illness_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_illness_illness_reason] FOREIGN KEY ([illness_reason_id]) REFERENCES [absence].[illness_reason] ([illness_reason_id]),
    CONSTRAINT [FK_contact_illness_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

