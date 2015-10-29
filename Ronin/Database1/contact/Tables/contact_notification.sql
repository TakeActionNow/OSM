CREATE TABLE [contact].[contact_notification] (
    [contact_notification_id]        INT            IDENTITY (1, 1) NOT NULL,
    [contact_id]                     INT            NOT NULL,
    [operating_system_id]            INT            NULL,
    [device_identifier]              NVARCHAR (255) NULL,
    [notification_subscription_date] DATETIME       NULL,
    [create_date]                    DATETIME       NULL,
    [modify_date]                    DATETIME       NULL,
    [delete_date]                    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([contact_notification_id] ASC),
    CONSTRAINT [FK_contact_notification_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_contact_notification_operating_system] FOREIGN KEY ([operating_system_id]) REFERENCES [global].[operating_system] ([operating_system_id])
);

