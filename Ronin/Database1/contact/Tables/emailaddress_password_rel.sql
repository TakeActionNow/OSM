CREATE TABLE [contact].[emailaddress_password_rel] (
    [emailaddress_password_id] INT IDENTITY (1, 1) NOT NULL,
    [emailaddress_id]          INT NOT NULL,
    [password_id]              INT NOT NULL,
    CONSTRAINT [PK_emailaddress_password_rel] PRIMARY KEY CLUSTERED ([emailaddress_password_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_emailaddress_password_rel_emailaddress] FOREIGN KEY ([emailaddress_id]) REFERENCES [contact].[emailaddress] ([emailaddress_id]),
    CONSTRAINT [FK_emailaddress_password_rel_password] FOREIGN KEY ([password_id]) REFERENCES [contact].[password] ([password_id])
);

