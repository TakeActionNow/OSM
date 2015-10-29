CREATE TABLE [organisation].[job] (
    [job_id]                 INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT            NULL,
    [job_name]               NVARCHAR (MAX) NULL,
    [job_description]        NVARCHAR (MAX) NULL,
    [verified_date]          DATETIME       NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    CONSTRAINT [PK_job] PRIMARY KEY CLUSTERED ([job_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_job_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

