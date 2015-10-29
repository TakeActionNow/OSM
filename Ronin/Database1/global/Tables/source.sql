CREATE TABLE [global].[source] (
    [source_id]          INT            IDENTITY (1, 1) NOT NULL,
    [source_type_id]     INT            NOT NULL,
    [source_name]        NVARCHAR (100) NOT NULL,
    [source_base_url]    NVARCHAR (100) NULL,
    [source_is_outgoing] BIT            NULL,
    [source_is_incoming] BIT            NULL,
    [create_date]        DATETIME       NULL,
    [modify_date]        DATETIME       NULL,
    [delete_date]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([source_id] ASC),
    CONSTRAINT [FK_source_source_type] FOREIGN KEY ([source_type_id]) REFERENCES [global].[source_type] ([source_type_id])
);

