CREATE TABLE [service].[service_role_rel] (
    [service_role_id] INT IDENTITY (1, 1) NOT NULL,
    [service_id]      INT NOT NULL,
    [role_id]         INT NOT NULL,
    CONSTRAINT [PK_service_role_rel] PRIMARY KEY CLUSTERED ([service_role_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_service_role_rel_role] FOREIGN KEY ([role_id]) REFERENCES [contact].[role] ([role_id]),
    CONSTRAINT [FK_service_role_rel_service] FOREIGN KEY ([service_id]) REFERENCES [service].[service] ([service_id])
);

