CREATE TABLE [medical].[contact_medicine_moment] (
    [contact_medicine_moment_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact_medicine_id]        INT      NOT NULL,
    [contact_medicine_time]      TIME (0) NULL,
    [create_date]                DATETIME NULL,
    [modify_date]                DATETIME NULL,
    [delete_date]                DATETIME NULL,
    PRIMARY KEY CLUSTERED ([contact_medicine_moment_id] ASC),
    CONSTRAINT [FK_contact_medicine_moment_contact_medicine] FOREIGN KEY ([contact_medicine_id]) REFERENCES [medical].[contact_medicine] ([contact_medicine_id])
);

