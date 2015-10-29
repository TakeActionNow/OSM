CREATE TABLE [medical].[contact_medicine_day_rel] (
    [contact_medicine_day_id] INT IDENTITY (1, 1) NOT NULL,
    [contact_medicine_id]     INT NOT NULL,
    [day_of_week_id]          INT NOT NULL,
    PRIMARY KEY CLUSTERED ([contact_medicine_day_id] ASC),
    CONSTRAINT [FK_contact_medicine_day_rel_contact_medicine] FOREIGN KEY ([contact_medicine_id]) REFERENCES [medical].[contact_medicine] ([contact_medicine_id]),
    CONSTRAINT [FK_contact_medicine_day_rel_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id])
);

