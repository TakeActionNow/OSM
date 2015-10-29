CREATE TABLE [contact].[qualification] (
    [qualification_id]          INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]    INT            NULL,
    [qualification_value]       NVARCHAR (MAX) NULL,
    [qualification_description] NVARCHAR (MAX) NULL,
    [create_date]               DATETIME       NULL,
    [modify_date]               DATETIME       NULL,
    [delete_date]               DATETIME       NULL,
    CONSTRAINT [PK_qualification] PRIMARY KEY CLUSTERED ([qualification_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_qualification_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

