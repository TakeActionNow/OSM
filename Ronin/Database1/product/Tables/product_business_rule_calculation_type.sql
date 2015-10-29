CREATE TABLE [product].[product_business_rule_calculation_type] (
    [product_business_rule_calculation_type_id]    INT            IDENTITY (1, 1) NOT NULL,
    [product_business_rule_calculation_type_value] NVARCHAR (100) NOT NULL,
    [create_date]                                  DATETIME       NULL,
    [modify_date]                                  DATETIME       NULL,
    [delete_date]                                  DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([product_business_rule_calculation_type_id] ASC)
);

