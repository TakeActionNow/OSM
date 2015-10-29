CREATE TABLE [service].[functionality_unit] (
    [functionality_unit_id]          INT            IDENTITY (1, 1) NOT NULL,
    [functionality_unit_type_id]     INT            NOT NULL,
    [service_id]                     INT            NOT NULL,
    [functionality_unit_name]        NVARCHAR (100) NOT NULL,
    [functionality_unit_description] NVARCHAR (MAX) NULL,
    [create_date]                    DATETIME       NULL,
    [modify_date]                    DATETIME       NULL,
    [delete_date]                    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([functionality_unit_id] ASC),
    CONSTRAINT [FK_functionality_unit_functionality_unit_type] FOREIGN KEY ([functionality_unit_type_id]) REFERENCES [service].[functionality_unit_type] ([functionality_unit_type_id]),
    CONSTRAINT [FK_functionality_unit_service] FOREIGN KEY ([service_id]) REFERENCES [service].[service] ([service_id])
);

