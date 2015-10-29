CREATE TABLE [childcontract].[child_contract_document_rel] (
    [child_contract_document_id] INT            IDENTITY (1, 1) NOT NULL,
    [child_contract_id]          INT            NOT NULL,
    [document_id]                INT            NOT NULL,
    [document_category_id]       INT            NOT NULL,
    [document_title]             NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([child_contract_document_id] ASC),
    CONSTRAINT [FK_child_contract_document_rel_child_contract] FOREIGN KEY ([child_contract_id]) REFERENCES [childcontract].[child_contract] ([child_contract_id]),
    CONSTRAINT [FK_child_contract_document_rel_document] FOREIGN KEY ([document_id]) REFERENCES [media].[document] ([document_id]),
    CONSTRAINT [FK_child_contract_document_rel_document_category] FOREIGN KEY ([document_category_id]) REFERENCES [media].[document_category] ([document_category_id])
);

