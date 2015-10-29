CREATE TABLE [service].[service_role_type_rel] (
    [service_role_type_id] INT IDENTITY (1, 1) NOT NULL,
    [service_role_id]      INT NOT NULL,
    [role_type_id]         INT NOT NULL,
    CONSTRAINT [PK_service_role_type_rel] PRIMARY KEY CLUSTERED ([service_role_type_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_service_role_type_rel_role_type] FOREIGN KEY ([role_type_id]) REFERENCES [contact].[role_type] ([role_type_id]),
    CONSTRAINT [FK_service_role_type_rel_service_role_rel] FOREIGN KEY ([service_role_id]) REFERENCES [service].[service_role_rel] ([service_role_id])
);

