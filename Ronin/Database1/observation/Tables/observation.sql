CREATE TABLE [observation].[observation] (
    [observation_id]       INT            IDENTITY (1, 1) NOT NULL,
    [observationlist_id]   INT            NULL,
    [observation_name]     NVARCHAR (MAX) NULL,
    [observation_sequence] INT            NOT NULL,
    [create_date]          DATETIME       NULL,
    [modify_date]          DATETIME       NULL,
    [delete_date]          DATETIME       NULL,
    CONSTRAINT [PK_observation] PRIMARY KEY CLUSTERED ([observation_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_observation_observationlist] FOREIGN KEY ([observationlist_id]) REFERENCES [observation].[observationlist] ([observationlist_id])
);

