CREATE TABLE [organisation].[cost_center] (
    [cost_center_id]          INT            IDENTITY (1, 1) NOT NULL,
    [cost_center_code]        NVARCHAR (MAX) NOT NULL,
    [cost_center_description] NVARCHAR (MAX) NULL,
    [create_date]             DATETIME       NULL,
    [delete_date]             DATETIME       NULL,
    CONSTRAINT [PK_cost_center] PRIMARY KEY CLUSTERED ([cost_center_id] ASC) WITH (FILLFACTOR = 90)
);

