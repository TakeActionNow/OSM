CREATE TABLE [product].[product_registration_term] (
    [product_registration_term_id]    INT           IDENTITY (1, 1) NOT NULL,
    [product_registration_term_value] NVARCHAR (50) NOT NULL,
    [create_date]                     DATETIME      NULL,
    [modify_date]                     DATETIME      NULL,
    [delete_date]                     DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([product_registration_term_id] ASC)
);

