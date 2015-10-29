CREATE TABLE [contact].[contact_emailaddress_rel] (
    [contact_emailaddress_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_id]              INT NOT NULL,
    [emailaddress_id]         INT NOT NULL,
    CONSTRAINT [PK_contact_emailaddress_rel] PRIMARY KEY CLUSTERED ([contact_emailaddress_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_emailaddress_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_emailaddress_rel_emailaddress] FOREIGN KEY ([emailaddress_id]) REFERENCES [contact].[emailaddress] ([emailaddress_id])
);

