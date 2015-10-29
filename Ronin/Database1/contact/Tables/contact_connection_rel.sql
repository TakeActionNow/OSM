CREATE TABLE [contact].[contact_connection_rel] (
    [contact_connection_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact1_id]           INT      NOT NULL,
    [contact2_id]           INT      NOT NULL,
    [role1_id]              INT      NOT NULL,
    [role2_id]              INT      NOT NULL,
    [create_date]           DATETIME NULL,
    [requester_contact_id]  INT      NULL,
    [verified_date]         DATETIME NULL,
    [delete_date]           DATETIME NULL,
    CONSTRAINT [PK_contact_connection_rel] PRIMARY KEY CLUSTERED ([contact_connection_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_connection_rel_contact] FOREIGN KEY ([contact1_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_connection_rel_contact1] FOREIGN KEY ([contact2_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_connection_rel_contact2] FOREIGN KEY ([requester_contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_connection_rel_role] FOREIGN KEY ([role1_id]) REFERENCES [contact].[role] ([role_id]),
    CONSTRAINT [FK_contact_connection_rel_role1] FOREIGN KEY ([role2_id]) REFERENCES [contact].[role] ([role_id])
);

