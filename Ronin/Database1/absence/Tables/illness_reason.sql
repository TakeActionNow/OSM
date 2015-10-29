CREATE TABLE [absence].[illness_reason] (
    [illness_reason_id]      INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT            NULL,
    [illness_reason_value]   NVARCHAR (MAX) NOT NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    CONSTRAINT [PK_illness_reason] PRIMARY KEY CLUSTERED ([illness_reason_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_illness_reason_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

