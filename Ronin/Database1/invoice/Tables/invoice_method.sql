CREATE TABLE [invoice].[invoice_method] (
    [invoice_method_id]    INT           IDENTITY (1, 1) NOT NULL,
    [invoice_method_value] NVARCHAR (50) NOT NULL,
    [create_date]          DATETIME      NULL,
    [modify_date]          DATETIME      NULL,
    [delete_date]          DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([invoice_method_id] ASC)
);

