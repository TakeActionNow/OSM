﻿CREATE TABLE [product].[product] (
    [product_id]                                INT             IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]                    INT             NOT NULL,
    [product_registration_term_id]              INT             NULL,
    [activity_type_id]                          INT             NULL,
    [product_type_id]                           INT             NOT NULL,
    [product_definition_type_id]                INT             NOT NULL,
    [product_frequency_type_id]                 INT             NULL,
    [product_interval_type_id]                  INT             NULL,
    [product_development_id]                    INT             NULL,
    [tax_percentage_id]                         INT             NULL,
    [product_business_rule_calculation_type_id] INT             NULL,
    [product_title]                             NVARCHAR (MAX)  NOT NULL,
    [product_description]                       TEXT            NULL,
    [product_minimum_occupation]                INT             NULL,
    [product_maximum_occupation]                INT             NULL,
    [product_is_law_day_care]                   BIT             NULL,
    [product_minimum_age]                       INT             NOT NULL,
    [product_minimum_age_month]                 INT             NULL,
    [product_maximum_age]                       INT             NOT NULL,
    [product_maximum_age_month]                 INT             NULL,
    [product_minimum_hours]                     INT             NULL,
    [product_registration_period_amount]        INT             NULL,
    [product_contract_price]                    DECIMAL (10, 2) NULL,
    [product_non_contract_price]                DECIMAL (10, 2) NULL,
    [product_ledger_number]                     NVARCHAR (100)  NULL,
    [product_separate_price]                    DECIMAL (10, 2) NULL,
    [product_combined_day_care_price]           DECIMAL (10, 2) NULL,
    [product_title_is_fixed]                    BIT             NOT NULL,
    [product_description_is_fixed]              BIT             NOT NULL,
    [product_age_restriction_is_fixed]          BIT             NOT NULL,
    [product_registration_term_is_fixed]        BIT             NOT NULL,
    [product_minimum_hours_is_fixed]            BIT             NOT NULL,
    [product_contract_price_is_fixed]           BIT             NOT NULL,
    [product_non_contract_price_is_fixed]       BIT             NOT NULL,
    [product_minimum_occupation_is_fixed]       BIT             NOT NULL,
    [product_maximum_occupation_is_fixed]       BIT             NOT NULL,
    [product_combined_day_care_price_is_fixed]  BIT             NOT NULL,
    [product_separate_price_is_fixed]           BIT             NOT NULL,
    [product_has_quantity_discount]             BIT             NOT NULL,
    [product_quantity_discount_is_fixed]        BIT             NOT NULL,
    [product_tax_percentage_is_fixed]           BIT             NOT NULL,
    [create_date]                               DATETIME        NULL,
    [modify_date]                               DATETIME        NULL,
    [delete_date]                               DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC),
    CONSTRAINT [FK_product_activity_type] FOREIGN KEY ([activity_type_id]) REFERENCES [global].[activity_type] ([activity_type_id]),
    CONSTRAINT [FK_product_organizational_unit] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_product_product_business_rule_calculation_type] FOREIGN KEY ([product_business_rule_calculation_type_id]) REFERENCES [product].[product_business_rule_calculation_type] ([product_business_rule_calculation_type_id]),
    CONSTRAINT [FK_product_product_definition_type] FOREIGN KEY ([product_definition_type_id]) REFERENCES [product].[product_definition_type] ([product_definition_type_id]),
    CONSTRAINT [FK_product_product_development] FOREIGN KEY ([product_development_id]) REFERENCES [global].[product_development] ([product_development_id]),
    CONSTRAINT [FK_product_product_frequency_type] FOREIGN KEY ([product_frequency_type_id]) REFERENCES [product].[product_frequency_type] ([product_frequency_type_id]),
    CONSTRAINT [FK_product_product_interval_type] FOREIGN KEY ([product_interval_type_id]) REFERENCES [product].[product_interval_type] ([product_interval_type_id]),
    CONSTRAINT [FK_product_product_registration_term] FOREIGN KEY ([product_registration_term_id]) REFERENCES [product].[product_registration_term] ([product_registration_term_id]),
    CONSTRAINT [FK_product_product_type] FOREIGN KEY ([product_type_id]) REFERENCES [product].[product_type] ([product_type_id]),
    CONSTRAINT [FK_product_tax_percentage] FOREIGN KEY ([tax_percentage_id]) REFERENCES [global].[tax_percentage] ([tax_percentage_id])
);

