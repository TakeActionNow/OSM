CREATE TABLE [occupancygrid].[occupation_job_qualification_rel] (
    [occupation_job_qualification_id]       INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_occupation_job_id] INT      NOT NULL,
    [qualification_id]                      INT      NOT NULL,
    [create_date]                           DATETIME NULL,
    [delete_date]                           DATETIME NULL,
    CONSTRAINT [PK_occupation_job_qualification_rel] PRIMARY KEY CLUSTERED ([occupation_job_qualification_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_occupation_job_qualification_rel_organizational_unit_occupation_job_rel] FOREIGN KEY ([organizational_unit_occupation_job_id]) REFERENCES [occupancygrid].[schedule_occupation_job_rel] ([organizational_unit_occupation_job_id]),
    CONSTRAINT [FK_occupation_job_qualification_rel_qualification] FOREIGN KEY ([qualification_id]) REFERENCES [contact].[qualification] ([qualification_id])
);

