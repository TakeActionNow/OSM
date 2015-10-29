CREATE TABLE [contact].[contact_communication] (
    [contact_communication_id]   INT            IDENTITY (1, 1) NOT NULL,
    [contact_id]                 INT            NOT NULL,
    [communication_type_id]      INT            NULL,
    [communication_value]        NVARCHAR (MAX) NOT NULL,
    [communication_contact_name] NVARCHAR (100) NULL,
    [communication_comment]      NVARCHAR (MAX) NULL,
    [create_date]                DATETIME       NULL,
    [modify_date]                DATETIME       NULL,
    [delete_date]                DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([contact_communication_id] ASC),
    CONSTRAINT [FK_contact_communication_communication_type] FOREIGN KEY ([communication_type_id]) REFERENCES [global].[communication_type] ([communication_type_id]),
    CONSTRAINT [FK_contact_communication_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id])
);

