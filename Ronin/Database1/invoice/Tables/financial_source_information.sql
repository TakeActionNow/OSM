CREATE TABLE [invoice].[financial_source_information] (
    [financial_source_id]         INT            IDENTITY (1, 1) NOT NULL,
    [financial_id]                INT            NOT NULL,
    [source_id]                   INT            NOT NULL,
    [financial_source_identifier] NVARCHAR (MAX) NOT NULL,
    [create_date]                 DATETIME       NULL,
    [modify_date]                 DATETIME       NULL,
    [delete_date]                 DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([financial_source_id] ASC),
    CONSTRAINT [FK_financial_source_rel_financial] FOREIGN KEY ([financial_id]) REFERENCES [invoice].[financial] ([financial_id]),
    CONSTRAINT [FK_financial_source_rel_source] FOREIGN KEY ([source_id]) REFERENCES [global].[source] ([source_id])
);

