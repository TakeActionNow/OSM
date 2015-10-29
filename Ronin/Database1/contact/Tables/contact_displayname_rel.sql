CREATE TABLE [contact].[contact_displayname_rel] (
    [contact_displayname_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]             INT      NOT NULL,
    [displayname_id]         INT      NOT NULL,
    [create_date]            DATETIME NULL,
    [modify_date]            DATETIME NULL,
    [delete_date]            DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_displayname_id] ASC),
    CONSTRAINT [FK_contact_displayname_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_displayname_rel_displayname] FOREIGN KEY ([displayname_id]) REFERENCES [global].[displayname] ([displayname_id])
);

