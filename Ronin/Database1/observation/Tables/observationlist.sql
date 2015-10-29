CREATE TABLE [observation].[observationlist] (
    [observationlist_id]   INT            IDENTITY (1, 1) NOT NULL,
    [method_id]            INT            NULL,
    [observationlist_name] NVARCHAR (MAX) NULL,
    [create_date]          DATETIME       NULL,
    [modify_date]          DATETIME       NULL,
    [delete_date]          DATETIME       NULL,
    CONSTRAINT [PK_observationlist] PRIMARY KEY CLUSTERED ([observationlist_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_observationlist_method] FOREIGN KEY ([method_id]) REFERENCES [observation].[method] ([method_id])
);

