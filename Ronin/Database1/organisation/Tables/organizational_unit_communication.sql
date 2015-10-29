CREATE TABLE [organisation].[organizational_unit_communication] (
    [organizational_unit_communication_id] INT            IDENTITY (1, 1) NOT NULL,
    [communication_value]                  NVARCHAR (100) NOT NULL,
    [communication_comment]                NVARCHAR (MAX) NULL,
    [communication_type_id]                INT            NULL,
    [organizational_unit_id]               INT            NOT NULL,
    [create_date]                          DATETIME       NULL,
    [modify_date]                          DATETIME       NULL,
    [delete_date]                          DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([organizational_unit_communication_id] ASC),
    CONSTRAINT [FK_organizational_unit_communication_communication_type] FOREIGN KEY ([communication_type_id]) REFERENCES [global].[communication_type] ([communication_type_id]),
    CONSTRAINT [FK_organizational_unit_communication_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

