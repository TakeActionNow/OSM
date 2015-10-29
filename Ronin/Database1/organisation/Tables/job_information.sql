CREATE TABLE [organisation].[job_information] (
    [job_information_id]     INT            IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id] INT            NOT NULL,
    [job_id]                 INT            NOT NULL,
    [job_description]        NVARCHAR (MAX) NULL,
    [has_KL_ratio]           BIT            CONSTRAINT [DF_job_information_has_KL_ratio] DEFAULT ((0)) NOT NULL,
    [create_date]            DATETIME       NULL,
    [modify_date]            DATETIME       NULL,
    [delete_date]            DATETIME       NULL,
    CONSTRAINT [PK_job_information] PRIMARY KEY CLUSTERED ([job_information_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_job_information_job] FOREIGN KEY ([job_id]) REFERENCES [organisation].[job] ([job_id]),
    CONSTRAINT [FK_job_information_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

