CREATE TABLE [childcontract].[prospect_demand] (
    [prospect_demand_id]    INT            IDENTITY (1, 1) NOT NULL,
    [prospect_demand_value] NVARCHAR (100) NOT NULL,
    [create_date]           DATETIME       NULL,
    [modify_date]           DATETIME       NULL,
    [delete_date]           DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([prospect_demand_id] ASC)
);

