CREATE TABLE [medical].[allergy] (
    [allergy_id]    INT            IDENTITY (1, 1) NOT NULL,
    [allergy_value] NVARCHAR (MAX) NOT NULL,
    [create_date]   DATETIME       NULL,
    [modify_date]   DATETIME       NULL,
    [delete_date]   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([allergy_id] ASC)
);

