CREATE TABLE [invoice].[invoice_status] (
    [invoice_status_id]    INT            IDENTITY (1, 1) NOT NULL,
    [invoice_status_value] NVARCHAR (100) NOT NULL,
    [create_date]          DATETIME       NULL,
    [modify_date]          DATETIME       NULL,
    [delete_date]          DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([invoice_status_id] ASC)
);

