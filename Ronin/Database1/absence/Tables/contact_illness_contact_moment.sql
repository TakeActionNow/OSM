CREATE TABLE [absence].[contact_illness_contact_moment] (
    [contact_illness_contact_moment_id] INT            IDENTITY (1, 1) NOT NULL,
    [contact_illness_id]                INT            NOT NULL,
    [registration_contact_id]           INT            NULL,
    [contact_moment_date]               DATE           NOT NULL,
    [contact_moment_next_date]          DATE           NULL,
    [contact_moment_description]        NVARCHAR (MAX) NULL,
    [create_date]                       DATETIME       NULL,
    [modify_date]                       DATETIME       NULL,
    [delete_date]                       DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([contact_illness_contact_moment_id] ASC),
    CONSTRAINT [FK_contact_illness_contact_moment_contact] FOREIGN KEY ([registration_contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_illness_contact_moment_contact_illness] FOREIGN KEY ([contact_illness_id]) REFERENCES [absence].[contact_illness] ([contact_illness_id])
);

