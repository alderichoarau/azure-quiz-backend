INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('683f0426-a2a4-46fc-aca0-30042d9aa599', '00000000-0000-0000-0000-000000000002', 'module-06-complementary-topics', 'Module 6 - Complementary Topics',
        NULL, 6);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0e81f1b8-5247-4022-9f4a-144e3430a97c', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What does a Bicep file get transpiled (compiled) into at deployment time?',
        'Bicep is a domain-specific language (DSL) that transpiles to ARM JSON at deployment time, either via `az bicep build` or automatically when using `az deployment group create`. It is not YAML, HCL (that is Terraform''s language), or a PowerShell script.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b9383aac-9f2c-418d-ba49-43ff0d99a663', '0e81f1b8-5247-4022-9f4a-144e3430a97c', 'ARM JSON template', TRUE, 1),
    ('c131caec-256e-493a-b4b2-da02ddacb160', '0e81f1b8-5247-4022-9f4a-144e3430a97c', 'YAML manifest', FALSE, 2),
    ('80aa2b9a-6b6a-4eb1-85e4-fc299e3c7ac2', '0e81f1b8-5247-4022-9f4a-144e3430a97c', 'PowerShell DSC script', FALSE, 3),
    ('131f1252-8666-4e13-a752-302847911683', '0e81f1b8-5247-4022-9f4a-144e3430a97c', 'Terraform HCL', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c1c038a2-8618-4165-9808-4704bd71b4d7', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure CLI command compiles a Bicep file into an ARM JSON template without deploying it?',
        'This command compiles a `.bicep` file into its equivalent ARM JSON template without deploying it. `az deployment group create` both compiles and deploys, `az bicep decompile` converts JSON to Bicep (the reverse), and there is no "az group deployment validate" command with that exact syntax.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1f1a16a5-42e6-407d-9bf2-582a26266441', 'c1c038a2-8618-4165-9808-4704bd71b4d7', 'az group deployment validate', FALSE, 1),
    ('f96e2ca9-8b65-489f-9ad7-0032fd5ade04', 'c1c038a2-8618-4165-9808-4704bd71b4d7', 'az bicep build', TRUE, 2),
    ('ab8344ce-ca97-458c-b7c0-69b1761bd6fc', 'c1c038a2-8618-4165-9808-4704bd71b4d7', 'az deployment group create', FALSE, 3),
    ('08b51452-dcc5-420e-a5cc-5c9d4ed13fbb', 'c1c038a2-8618-4165-9808-4704bd71b4d7', 'az bicep decompile', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3ae52eb5-51a6-49a8-960c-9cea682514c4', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'In Bicep, how is a dependency between two resources typically created automatically?',
        'Bicep creates an implicit dependency (a `dependsOn`) automatically when one resource references another resource''s symbolic name. Explicit `dependsOn` is only needed when there is no direct reference. Resource group membership and naming order do not create dependencies.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5dcd759f-c85b-4c6e-9699-a05a2180bb14', '3ae52eb5-51a6-49a8-960c-9cea682514c4', 'By placing the resources in the same resource group', FALSE, 1),
    ('5c53b42e-f785-46c6-8255-73a4fd584594', '3ae52eb5-51a6-49a8-960c-9cea682514c4', 'By adding an explicit dependsOn property listing the resource type', FALSE, 2),
    ('62cfc41a-2b3b-4255-9b35-494213d00a5c', '3ae52eb5-51a6-49a8-960c-9cea682514c4', 'By referencing one resource''s symbolic name within another resource''s definition', TRUE, 3),
    ('f8bfc387-7e21-4051-a394-f7c19ec03744', '3ae52eb5-51a6-49a8-960c-9cea682514c4', 'By naming resources alphabetically in deployment order', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('13435ae8-b909-4eb7-b194-112e4582848b', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Bicep/ARM deployment mode deletes resources in the resource group that are not defined in the template?',
        'In Complete mode, ARM/Bicep deletes any resources in the target resource group that are not defined in the template, so it must be used carefully. Incremental mode (the default) only adds/modifies resources and leaves unmanaged existing resources untouched.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('407d364a-3f79-4b83-b9e4-a65ee8fea2ce', '13435ae8-b909-4eb7-b194-112e4582848b', 'Complete mode', TRUE, 1),
    ('dcff9e7a-0662-4680-af18-998e477b760c', '13435ae8-b909-4eb7-b194-112e4582848b', 'Incremental mode', FALSE, 2),
    ('7561f446-d214-4c94-bd6b-804998124d2a', '13435ae8-b909-4eb7-b194-112e4582848b', 'Validate mode', FALSE, 3),
    ('e24bf5cb-3c2b-4f25-8285-f8f5237839db', '13435ae8-b909-4eb7-b194-112e4582848b', 'What-if mode', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8d162265-e0ef-48d1-ac98-8df0e6db97da', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is the purpose of the "what-if" operation in a Bicep deployment?',
        'The `what-if` operation (`az deployment group what-if`) shows what would change (create, modify, delete) before the deployment actually runs, without applying any changes. It does not perform rollbacks, convert templates, or check policy compliance.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('45a8bd80-d0e5-42ff-90f7-ed56af491f99', '8d162265-e0ef-48d1-ac98-8df0e6db97da', 'To automatically roll back a failed deployment', FALSE, 1),
    ('576efd0c-7ae7-4344-b211-e0b8a9ac20ad', '8d162265-e0ef-48d1-ac98-8df0e6db97da', 'To validate Azure Policy compliance before deployment', FALSE, 2),
    ('9e606ef1-483c-419a-9a6c-90d43a3c0a12', '8d162265-e0ef-48d1-ac98-8df0e6db97da', 'To convert ARM JSON into Bicep syntax', FALSE, 3),
    ('e5341353-2a0b-4d4e-a947-87323cc1ad61', '8d162265-e0ef-48d1-ac98-8df0e6db97da', 'To preview the changes a deployment would make without applying them', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c43e792e-e28c-4e26-a624-09b5e1cdad59', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which command converts an existing ARM JSON template into Bicep syntax?',
        'This command converts an existing ARM JSON template into Bicep syntax, the reverse operation of `az bicep build`. There is no "az bicep publish" command for this purpose, and `what-if` only previews deployment changes.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('10903c6c-81cd-4aac-9565-a26fa45488c8', 'c43e792e-e28c-4e26-a624-09b5e1cdad59', 'az bicep build', FALSE, 1),
    ('808d443d-ed43-4749-a209-501174471ae2', 'c43e792e-e28c-4e26-a624-09b5e1cdad59', 'az bicep decompile', TRUE, 2),
    ('f5719af6-c0bf-40ea-a4d1-6ca1445e01e5', 'c43e792e-e28c-4e26-a624-09b5e1cdad59', 'az bicep publish', FALSE, 3),
    ('119c68c2-16dc-4152-a4fa-ae7492608983', 'c43e792e-e28c-4e26-a624-09b5e1cdad59', 'az deployment group what-if', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('498aa0ee-3073-42d3-be31-b5b634e684b2', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Bicep keyword is used to reference and compose another Bicep file as a reusable component within a deployment?',
        'The `module` keyword lets you reference another Bicep file to compose reusable, modular deployments. `resource` declares a single resource, `param` declares an input parameter, and `output` returns a value from the deployment.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cd4dadb7-1ea0-430f-b00d-046b7030816e', '498aa0ee-3073-42d3-be31-b5b634e684b2', 'param', FALSE, 1),
    ('22a4614c-9a38-4b67-83db-a487b0fef080', '498aa0ee-3073-42d3-be31-b5b634e684b2', 'output', FALSE, 2),
    ('c2d1e2ea-c05e-4585-a442-b4ee6b581f9f', '498aa0ee-3073-42d3-be31-b5b634e684b2', 'module', TRUE, 3),
    ('558c00f5-99ba-45f7-b8f0-43dd3af4f5f6', '498aa0ee-3073-42d3-be31-b5b634e684b2', 'resource', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0ee1b680-921c-464c-8cfb-ead2cfc02beb', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is the default deployment mode when deploying a Bicep template with `az deployment group create` if no mode is specified?',
        'Incremental is the default deployment mode; it adds or modifies resources defined in the template while leaving existing, unmanaged resources in the resource group untouched. Complete mode must be explicitly specified and is more destructive.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b5a2ca67-94b2-48ba-a3dc-31a6ab6b2b57', '0ee1b680-921c-464c-8cfb-ead2cfc02beb', 'Preview', FALSE, 1),
    ('fc87e144-5f6b-4d91-8848-71dbc5f5b04e', '0ee1b680-921c-464c-8cfb-ead2cfc02beb', 'Validate', FALSE, 2),
    ('bf834b03-5ab7-47d0-90e5-a89a9ebc5297', '0ee1b680-921c-464c-8cfb-ead2cfc02beb', 'Complete', FALSE, 3),
    ('bf357166-d181-4469-937e-9400b223ef16', '0ee1b680-921c-464c-8cfb-ead2cfc02beb', 'Incremental', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2f099a93-549e-4571-a962-70654d01aefe', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Unlike Terraform, Bicep does not maintain a local or remote state file. How does Bicep determine what changes to apply during deployment?',
        'Unlike Terraform, Bicep has no state file; Azure Resource Manager compares the template directly to the live state of resources in Azure each time a deployment runs.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('33c306b4-9f40-4dfe-b713-977876ad6429', '2f099a93-549e-4571-a962-70654d01aefe', 'It relies on a state file stored in Azure Storage', FALSE, 1),
    ('81201082-b04b-4290-b905-5a652b3d9c91', '2f099a93-549e-4571-a962-70654d01aefe', 'It uses a hash stored in Azure Resource Manager metadata only', FALSE, 2),
    ('46364537-3288-46fa-9756-3df6ae20e1ee', '2f099a93-549e-4571-a962-70654d01aefe', 'It requires manual specification of the previous deployment ID', FALSE, 3),
    ('5ce93c05-4b97-4b01-9a7d-a92d3694ade7', '2f099a93-549e-4571-a962-70654d01aefe', 'It evaluates the template against the current state of Azure resources at deployment time', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1c6f71fc-56bb-444d-a756-7b2641fc3c99', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What does the Bicep extension for Visual Studio Code primarily provide to developers authoring Bicep files?',
        'The VS Code Bicep extension provides authoring assistance including IntelliSense, schema/type validation, and auto-complete. It does not perform cost estimation, offer a drag-and-drop designer, or run CI/CD pipelines.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6764fce0-1e6d-4d25-9933-298c4aa75d80', '1c6f71fc-56bb-444d-a756-7b2641fc3c99', 'Automatic cost estimation for deployed resources', FALSE, 1),
    ('594a6f36-0c52-4649-934b-28c2642516a1', '1c6f71fc-56bb-444d-a756-7b2641fc3c99', 'A graphical drag-and-drop resource designer', FALSE, 2),
    ('cec3305a-0d22-4422-95b6-acbc08ebf7e4', '1c6f71fc-56bb-444d-a756-7b2641fc3c99', 'IntelliSense, type validation, and auto-completion', TRUE, 3),
    ('ec659700-ab81-4eaa-a930-1c1078036831', '1c6f71fc-56bb-444d-a756-7b2641fc3c99', 'Built-in CI/CD pipeline execution', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f54dd979-7fc7-4548-b3a7-a3c7ba69e9e1', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Virtual WAN SKU supports only Site-to-Site VPN connectivity, without ExpressRoute or Point-to-Site VPN?',
        'The Basic SKU of Azure Virtual WAN supports only Site-to-Site VPN connectivity. The Standard SKU adds Point-to-Site VPN, ExpressRoute, VNet-to-VNet transit, and hub-to-hub connectivity. "Premium" and "Enterprise" are not valid Virtual WAN SKU names.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('10b73d74-07b7-4a53-95dd-e6d153ff5586', 'f54dd979-7fc7-4548-b3a7-a3c7ba69e9e1', 'Premium', FALSE, 1),
    ('73b097c6-6a22-4bb6-a268-a4c9b17b93cb', 'f54dd979-7fc7-4548-b3a7-a3c7ba69e9e1', 'Basic', TRUE, 2),
    ('1c74144d-b7c6-4b74-a055-8884d41c3687', 'f54dd979-7fc7-4548-b3a7-a3c7ba69e9e1', 'Standard', FALSE, 3),
    ('7e41c234-1d49-40ba-b9cb-2f26ae5db04b', 'f54dd979-7fc7-4548-b3a7-a3c7ba69e9e1', 'Enterprise', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9740098b-be64-48f3-821b-5b5fe8936e6b', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is a "Secured Virtual Hub" in Azure Virtual WAN?',
        'A Secured Virtual Hub combines a vWAN hub with Azure Firewall (or a network virtual appliance) to provide centralized security for both branch and VNet traffic, managed through Firewall Manager. It is not limited to ExpressRoute, NSGs alone, or peering encryption.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('99727d5a-8344-42dd-b2da-d6cad6132d56', '9740098b-be64-48f3-821b-5b5fe8936e6b', 'A virtual hub with an integrated Azure Firewall (or NVA) centrally managed via Firewall Manager', TRUE, 1),
    ('ebb0e0c9-526a-4d1a-93f1-5517cc9ef92e', '9740098b-be64-48f3-821b-5b5fe8936e6b', 'A virtual hub protected exclusively by Network Security Groups', FALSE, 2),
    ('66483c87-28d2-455a-b11f-4838858a55e9', '9740098b-be64-48f3-821b-5b5fe8936e6b', 'A virtual hub that encrypts all VNet peering traffic by default', FALSE, 3),
    ('824aefdf-7769-492f-9a1e-43e41783db50', '9740098b-be64-48f3-821b-5b5fe8936e6b', 'A virtual hub that only allows ExpressRoute connections', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('998679e1-4452-4b46-8ceb-20488fa39a75', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'In a Standard SKU Azure Virtual WAN, how is any-to-any transitive connectivity between connected sites and VNets achieved?',
        'Standard SKU Azure Virtual WAN provides any-to-any transitive connectivity between all connected sites and VNets automatically, without requiring manual VNet peering or route table configuration, which is a key advantage over traditional hub-and-spoke designs.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8c8c6323-ccb1-418f-912d-8f5321ecf06f', '998679e1-4452-4b46-8ceb-20488fa39a75', 'It is provided automatically without manual peering or route configuration', TRUE, 1),
    ('228ffb72-4bfb-4eb9-ac57-cd88b7ddde3b', '998679e1-4452-4b46-8ceb-20488fa39a75', 'It requires manual route table configuration in each connected VNet', FALSE, 2),
    ('2059558e-5175-4cc6-ac00-36fc3ec7bfef', '998679e1-4452-4b46-8ceb-20488fa39a75', 'It requires deploying a third-party NVA in each hub', FALSE, 3),
    ('a08df3b1-e169-47e0-8eaf-413759cae506', '998679e1-4452-4b46-8ceb-20488fa39a75', 'It requires manually configuring VNet peering between every pair of spokes', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bd9ee134-f357-49d9-8580-a77f6faffceb', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which of the following can a Microsoft-managed Virtual Hub in Azure Virtual WAN contain?',
        'A Microsoft-managed Virtual Hub can contain a router, VPN and/or ExpressRoute gateways, and optionally an Azure Firewall (making it a Secured Virtual Hub). It is not restricted to only one gateway type, and customers do not manage physical routing appliances inside it.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e4d44f9b-dd7e-4666-9379-cc1f12e6c644', 'bd9ee134-f357-49d9-8580-a77f6faffceb', 'Customer-managed physical routing appliances', FALSE, 1),
    ('b7dd4fac-8113-43b0-9020-a45af30cd8ca', 'bd9ee134-f357-49d9-8580-a77f6faffceb', 'Only Azure Firewall, with no routing capability', FALSE, 2),
    ('dc3f3689-04af-419d-a521-b448140a98e6', 'bd9ee134-f357-49d9-8580-a77f6faffceb', 'Only VPN gateways, never ExpressRoute gateways', FALSE, 3),
    ('c79648b3-1d5e-4e17-b6a3-fdbd922ad4e9', 'bd9ee134-f357-49d9-8580-a77f6faffceb', 'A router, VPN/ExpressRoute gateways, and optionally Azure Firewall', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('38d95388-1995-4884-8d6f-ad8d6b446ced', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which of the following capabilities is available in the Standard SKU of Azure Virtual WAN but NOT in the Basic SKU?',
        'These capabilities, along with VNet-to-VNet transit and hub-to-hub connectivity, are exclusive to the Standard SKU. Site-to-Site VPN is available in both Basic and Standard; the other options are unrelated to Virtual WAN SKU differentiation.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('343d831d-7318-4b2d-827d-a5e0443f8341', '38d95388-1995-4884-8d6f-ad8d6b446ced', 'Site-to-Site VPN connectivity', FALSE, 1),
    ('dc1a413b-e8e9-4246-8353-179b4b944b26', '38d95388-1995-4884-8d6f-ad8d6b446ced', 'Resource locks on the hub', FALSE, 2),
    ('8b0ac109-530f-41b1-99db-56ca8dd1c2bb', '38d95388-1995-4884-8d6f-ad8d6b446ced', 'ExpressRoute and Point-to-Site VPN connectivity', TRUE, 3),
    ('668e3972-e45b-4a44-bcc2-72e6db88c08c', '38d95388-1995-4884-8d6f-ad8d6b446ced', 'Availability Zones for storage accounts', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('354c2037-2301-4c70-b5fe-e09d2047ffdc', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What network architecture does Azure Virtual WAN follow?',
        'Azure Virtual WAN is built around a hub-and-spoke model, using Microsoft-managed virtual hubs as the central connectivity point for spokes (VNets and branch sites). It is not a full mesh, flat network, or ring topology by design.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('29797974-5083-40de-b1a8-900ead8c9fff', '354c2037-2301-4c70-b5fe-e09d2047ffdc', 'Full mesh with manual peering between every VNet', FALSE, 1),
    ('17d8cceb-6d02-4f56-a779-cb8bc1535639', '354c2037-2301-4c70-b5fe-e09d2047ffdc', 'Flat, single-tier network with no hub', FALSE, 2),
    ('764759e9-0e4b-4601-846c-71367de70898', '354c2037-2301-4c70-b5fe-e09d2047ffdc', 'Ring topology connecting regional gateways', FALSE, 3),
    ('e322a52f-c538-4b24-95b4-214341646c01', '354c2037-2301-4c70-b5fe-e09d2047ffdc', 'Hub-and-spoke architecture', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2399e884-2cf3-400c-952d-486ea1069a4c', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is a primary benefit of Azure Virtual WAN compared to manually building and managing a traditional hub-and-spoke topology?',
        'Virtual WAN brings networking, security, and routing together into one operational interface, reducing the complexity of manually building and maintaining a traditional hub-and-spoke topology. It does not eliminate the need for security controls, remove the need for Log Analytics, or restrict deployments to a single region.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a21f8e60-03f4-427f-bf98-a25e95f7b0c8', '2399e884-2cf3-400c-952d-486ea1069a4c', 'It only supports a single region, simplifying management', FALSE, 1),
    ('a9415504-aa5c-4cdf-b1dd-4474446f8773', '2399e884-2cf3-400c-952d-486ea1069a4c', 'It eliminates the need for any firewall or security controls', FALSE, 2),
    ('05b45247-ae3c-4c81-a8a8-85fca989c753', '2399e884-2cf3-400c-952d-486ea1069a4c', 'It removes the need for a Log Analytics workspace', FALSE, 3),
    ('7ae87f7c-2813-4b67-a437-5f98f1f4fa36', '2399e884-2cf3-400c-952d-486ea1069a4c', 'It simplifies large-scale branch and VNet connectivity through a unified, Microsoft-managed interface', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7a5355f8-f571-46cc-bce4-ed6014996e58', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'How is Azure Virtual WAN''s routing, security, and networking functionality primarily managed?',
        'This is a defining characteristic of Azure Virtual WAN: it consolidates networking, security, and routing management into one interface rather than requiring separate portals or exclusively command-line management.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('931c6024-4517-4662-ba24-b5e698ceb30c', '7a5355f8-f571-46cc-bce4-ed6014996e58', 'Through a single, unified, Microsoft-managed operational interface', TRUE, 1),
    ('22ba62fb-debd-423b-93c2-c636f93fc355', '7a5355f8-f571-46cc-bce4-ed6014996e58', 'Exclusively via PowerShell scripts with no portal support', FALSE, 2),
    ('df12930e-26d4-44f6-bb75-b036f183eeb2', '7a5355f8-f571-46cc-bce4-ed6014996e58', 'Through separate portals for each connected branch office', FALSE, 3),
    ('83dd0f30-43df-4383-af25-3108d3ff725e', '7a5355f8-f571-46cc-bce4-ed6014996e58', 'Through on-premises routing appliances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('212b0551-512e-4473-b8f2-dd185a7672f6', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Virtual WAN SKU is required to enable hub-to-hub connectivity between multiple virtual hubs?',
        'Hub-to-hub connectivity is a Standard SKU feature, along with ExpressRoute, Point-to-Site VPN, and VNet-to-VNet transit. The Basic SKU only supports Site-to-Site VPN and does not include hub-to-hub connectivity, with or without an add-on.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7bc6a07f-575b-4240-b2f7-c1eb1f44c6e3', '212b0551-512e-4473-b8f2-dd185a7672f6', 'Standard', TRUE, 1),
    ('2ae1d740-3a00-4d8f-8619-a05ab7190589', '212b0551-512e-4473-b8f2-dd185a7672f6', 'Basic with an add-on license', FALSE, 2),
    ('74b4a03a-c80e-43e4-8a8a-addef4d8437b', '212b0551-512e-4473-b8f2-dd185a7672f6', 'Basic', FALSE, 3),
    ('7f15cf86-dadc-4f20-9d34-fe4953a51ae5', '212b0551-512e-4473-b8f2-dd185a7672f6', 'Free', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('72ce1c4d-fe2a-455f-a004-2c19746a951a', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which feature allows two spoke VNets connected to different points in an Azure Virtual WAN to communicate with each other without direct VNet peering?',
        'This Standard SKU feature allows spoke VNets connected through Virtual WAN to communicate transitively via the hub, without requiring direct VNet peering between them. The other options are unrelated networking or monitoring features.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8310ea7a-18c2-498c-876c-985a58442f4d', '72ce1c4d-fe2a-455f-a004-2c19746a951a', 'Azure Bastion host routing', FALSE, 1),
    ('31b9f964-7fef-4850-bf5a-5017507184f1', '72ce1c4d-fe2a-455f-a004-2c19746a951a', 'Basic SKU site-to-site VPN', FALSE, 2),
    ('b44a5baa-576b-4867-b9fa-fa596a11ae3d', '72ce1c4d-fe2a-455f-a004-2c19746a951a', 'VNet-to-VNet transit provided by the Standard SKU virtual hub', TRUE, 3),
    ('4800dbb0-8579-4bdc-85d5-57095bc79f3c', '72ce1c4d-fe2a-455f-a004-2c19746a951a', 'Network Security Group flow logs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8c0ec6d7-c3e4-437e-8b44-79c80b8f8aaa', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What best describes Azure Firewall?',
        'Azure Firewall is a managed PaaS offering with built-in HA and unrestricted cloud scalability. It is not a host-based agent, a third-party NVA requiring manual clustering, or simply an NSG rule set.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b23f79d0-3515-4798-9489-636e3320ab69', '8c0ec6d7-c3e4-437e-8b44-79c80b8f8aaa', 'A third-party NVA that must be manually clustered for high availability', FALSE, 1),
    ('5d14ebf9-fd42-4b4a-91a7-6556effdb184', '8c0ec6d7-c3e4-437e-8b44-79c80b8f8aaa', 'A host-based antivirus agent installed on individual VMs', FALSE, 2),
    ('860fc04b-1b4e-4bbb-af86-7f680b491c79', '8c0ec6d7-c3e4-437e-8b44-79c80b8f8aaa', 'A fully managed, cloud-native, stateful Firewall-as-a-Service with built-in high availability', TRUE, 3),
    ('369d67c7-e54d-4778-b4e1-7289379eeab7', '8c0ec6d7-c3e4-437e-8b44-79c80b8f8aaa', 'A network security group rule set applied at the subnet level', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9c853118-55d7-419d-a7b4-e851b1cd052d', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Firewall rule collection type is used to translate and filter inbound traffic from the internet to internal resources?',
        'NAT rule collections handle Destination Network Address Translation, translating and filtering inbound traffic from the internet to internal resources. Network rules handle general L3/L4 traffic, Application rules handle outbound L7 traffic, and Threat Intelligence rules are a separate filtering mechanism.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a8629b72-aada-446a-9cb1-0809902b26dd', '9c853118-55d7-419d-a7b4-e851b1cd052d', 'Network rules', FALSE, 1),
    ('fea4435c-2ed0-41f2-8fef-ef7ec2f96d72', '9c853118-55d7-419d-a7b4-e851b1cd052d', 'NAT rules (DNAT)', TRUE, 2),
    ('ab326a36-729c-423d-bd6a-9fbeccc4ea96', '9c853118-55d7-419d-a7b4-e851b1cd052d', 'Application rules', FALSE, 3),
    ('ffee5671-d01b-404c-bbad-1dd456c56fbd', '9c853118-55d7-419d-a7b4-e851b1cd052d', 'Threat Intelligence rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('93b17409-7399-48ef-86b2-4bf188a35880', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Firewall rule collection type filters traffic based on source/destination IP address, port, and protocol at Layer 3/4?',
        'Network rules filter traffic at Layer 3/4 based on source/destination IP address, port, and protocol. Application rules operate at Layer 7 for outbound HTTP/S by FQDN, NAT rules handle inbound DNAT, and IDPS is a Premium SKU feature, not a rule collection type.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7d39d964-ee3e-4469-a39d-e669281c3cb5', '93b17409-7399-48ef-86b2-4bf188a35880', 'Network rules', TRUE, 1),
    ('c1f18d0b-e470-476d-aa4c-55c14b56970d', '93b17409-7399-48ef-86b2-4bf188a35880', 'Application rules', FALSE, 2),
    ('771c1c93-6d3a-492e-8ed1-6046b902b92d', '93b17409-7399-48ef-86b2-4bf188a35880', 'NAT rules', FALSE, 3),
    ('bc7d7e2b-d9ca-458a-b85b-04af4a37458d', '93b17409-7399-48ef-86b2-4bf188a35880', 'IDPS rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d30573bf-37d2-4bac-bc39-32b8398bd9d1', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Firewall feature filters outbound HTTP/S traffic by fully qualified domain name (FQDN) and supports built-in FQDN tags such as WindowsUpdate?',
        'Application rules filter outbound HTTP/S traffic at Layer 7 by FQDN and support built-in FQDN tags such as WindowsUpdate and AzureBackup. NAT and Network rules operate differently, and Threat Intelligence filtering is a separate, signature-based feature.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ef283d44-63c6-412a-a4fd-8e3c62e38ec9', 'd30573bf-37d2-4bac-bc39-32b8398bd9d1', 'Threat Intelligence filtering', FALSE, 1),
    ('f14ffa54-1832-45ec-a2f9-2b866f627af2', 'd30573bf-37d2-4bac-bc39-32b8398bd9d1', 'Application rules', TRUE, 2),
    ('889a048b-95a9-42d5-ab5d-32ad276dd87f', 'd30573bf-37d2-4bac-bc39-32b8398bd9d1', 'NAT rules', FALSE, 3),
    ('3172e224-dab8-4005-9a27-2ee5a8b4293d', 'd30573bf-37d2-4bac-bc39-32b8398bd9d1', 'Network rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('39dd1fe3-60f6-44d5-aab2-64e68b47eb0b', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'In Azure Firewall''s Threat Intelligence-based filtering, which two modes can be configured for handling traffic matched against known malicious IPs/domains?',
        'Azure Firewall''s Threat Intelligence-based filtering, powered by the Microsoft Threat Intelligence feed, can be configured to either alert only or alert and deny traffic to/from known malicious IPs and domains. The other pairs of modes listed are not the actual configuration options.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4211c093-3a8b-4f8d-a710-3fb62b0d37c1', '39dd1fe3-60f6-44d5-aab2-64e68b47eb0b', 'Log-only or Block-only', FALSE, 1),
    ('edca43f0-0a49-4895-94c1-e12842ae2ef8', '39dd1fe3-60f6-44d5-aab2-64e68b47eb0b', 'Passive or Active-Block', FALSE, 2),
    ('43014d85-f7e9-48f4-98ab-680f37ce4b9d', '39dd1fe3-60f6-44d5-aab2-64e68b47eb0b', 'Alert-only or Alert-and-Deny', TRUE, 3),
    ('d5a14e53-b3b3-4c6a-9463-de468a7fa966', '39dd1fe3-60f6-44d5-aab2-64e68b47eb0b', 'Monitor or Quarantine', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('733e2b3c-b7e7-4d92-8371-261912e4ac88', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Firewall SKU tier adds TLS inspection, IDPS (intrusion detection and prevention), and URL filtering/web categorization?',
        'The Premium SKU adds advanced capabilities such as TLS inspection, IDPS, and URL filtering/web categorization on top of the Standard tier''s features. Basic is aimed at SMB/branch scenarios and lacks these advanced features; "Enterprise" is not a valid Azure Firewall SKU.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('db08ac34-0e28-4148-bb1a-c3a370b491f5', '733e2b3c-b7e7-4d92-8371-261912e4ac88', 'Basic', FALSE, 1),
    ('d6097a16-8771-4076-a2e4-6d561c266c25', '733e2b3c-b7e7-4d92-8371-261912e4ac88', 'Enterprise', FALSE, 2),
    ('845a1849-fa29-49b0-992f-67fc59a9fbbd', '733e2b3c-b7e7-4d92-8371-261912e4ac88', 'Premium', TRUE, 3),
    ('fbab74c6-1aa4-46ea-9094-86f11102c879', '733e2b3c-b7e7-4d92-8371-261912e4ac88', 'Standard', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('75689916-7745-4600-b9dd-fa6fa410e3ef', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is the recommended way to centrally manage and hierarchically structure firewall rules across multiple Azure Firewall instances?',
        'Firewall Policy is the recommended centralized management mechanism for firewall rules across multiple Azure Firewall instances, and it supports hierarchical parent/child policies for delegated rule management. NSGs, per-firewall local rules, and Azure Policy definitions are not the correct mechanism for this purpose.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6da4abe2-458e-42b3-8f8d-c1a7c333ab92', '75689916-7745-4600-b9dd-fa6fa410e3ef', 'Local rule sets configured per firewall with no central management', FALSE, 1),
    ('6459e570-5e2a-4342-a3ca-1bd7629190e2', '75689916-7745-4600-b9dd-fa6fa410e3ef', 'Firewall Policy, supporting parent/child hierarchical policies', TRUE, 2),
    ('0c9d8db9-2efb-422e-ba97-763e0571cab8', '75689916-7745-4600-b9dd-fa6fa410e3ef', 'Individual NSGs attached to each subnet', FALSE, 3),
    ('3a12ed51-453e-40a9-923f-d437bf6b467c', '75689916-7745-4600-b9dd-fa6fa410e3ef', 'Azure Policy definitions assigned at the management group level', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('acd3a99f-9fae-4ba2-9f35-1ed9c33ad294', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which statement correctly describes Azure Firewall''s traffic translation capabilities?',
        'Azure Firewall supports both Source NAT for outbound connections and Destination NAT for inbound connections, making the other answer choices, which describe only one direction or neither, incorrect.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('13a322c5-e74e-4056-bb0c-3f5f1c0925ad', 'acd3a99f-9fae-4ba2-9f35-1ed9c33ad294', 'It provides neither SNAT nor DNAT; these must be handled by a separate NVA', FALSE, 1),
    ('d3c3691c-f3c8-480a-9498-008a13c49136', 'acd3a99f-9fae-4ba2-9f35-1ed9c33ad294', 'It provides both SNAT for outbound traffic and DNAT for inbound traffic', TRUE, 2),
    ('a63567d4-df37-431a-b952-b5cef2dc995f', 'acd3a99f-9fae-4ba2-9f35-1ed9c33ad294', 'It provides only SNAT for inbound traffic', FALSE, 3),
    ('7f5d570b-cb4c-4881-9bc3-7b42ec084348', 'acd3a99f-9fae-4ba2-9f35-1ed9c33ad294', 'It provides only DNAT for outbound traffic', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fd61957b-d998-49aa-b4cb-e0f1ef52809c', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'How can Azure Firewall achieve a higher SLA and improved resiliency?',
        'Deploying Azure Firewall across multiple Availability Zones increases its resiliency and provides a higher SLA. Disabling threat intelligence, downgrading SKU, or limiting rule types would not improve availability.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('115a51a3-a18e-4206-9ab5-7853443e323d', 'fd61957b-d998-49aa-b4cb-e0f1ef52809c', 'By downgrading to the Basic SKU', FALSE, 1),
    ('e18ffa70-448e-489e-8da2-5662c3f02b31', 'fd61957b-d998-49aa-b4cb-e0f1ef52809c', 'By disabling threat intelligence filtering', FALSE, 2),
    ('3862a40f-786b-4828-96ee-69e1ca21b23c', 'fd61957b-d998-49aa-b4cb-e0f1ef52809c', 'By deploying it across Availability Zones', TRUE, 3),
    ('7a26a5de-e143-400a-9bdd-04430b5a272b', 'fd61957b-d998-49aa-b4cb-e0f1ef52809c', 'By using only Network rules instead of Application rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('89e056c1-2236-41c4-9ddc-170473c31ca7', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Firewall SKU tier is targeted at small and medium business (SMB) or branch office scenarios?',
        'The Basic SKU of Azure Firewall is designed for SMB and branch office scenarios with lower throughput needs. Standard is the general-purpose tier, and Premium adds advanced security features; "zone-redundant" is a deployment configuration, not a SKU tier.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7dd6e32e-fcf1-45d0-90d1-098f96987644', '89e056c1-2236-41c4-9ddc-170473c31ca7', 'Standard', FALSE, 1),
    ('9490ea01-94e5-467f-90c7-6caf753935b1', '89e056c1-2236-41c4-9ddc-170473c31ca7', 'Zone-redundant', FALSE, 2),
    ('5a605fe2-6ae3-4b3c-92eb-f629c37cd0ba', '89e056c1-2236-41c4-9ddc-170473c31ca7', 'Basic', TRUE, 3),
    ('3bce6b90-3a05-4163-906e-eda8015c7cab', '89e056c1-2236-41c4-9ddc-170473c31ca7', 'Premium', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('62ec3aa8-86b7-48cc-bc8e-96d4d0fd3031', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Azure Container Apps is built on top of which set of open-source technologies?',
        'Azure Container Apps is built on top of these open-source technologies, using Kubernetes for orchestration, KEDA for event-driven autoscaling, Dapr for microservices building blocks, and Envoy as the proxy. Docker Swarm, Istio, OpenShift, Helm, Mesos, and Consul are not the underlying technologies for this service.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9de27510-bcce-4a0e-a5e7-ae728ffa68fe', '62ec3aa8-86b7-48cc-bc8e-96d4d0fd3031', 'Kubernetes, KEDA, Dapr, and Envoy', TRUE, 1),
    ('e0fab917-0a9a-4930-9462-598ffaffde71', '62ec3aa8-86b7-48cc-bc8e-96d4d0fd3031', 'Mesos, Consul, and Traefik', FALSE, 2),
    ('253fab09-c0aa-4c5e-88a9-d5db3e6f46bd', '62ec3aa8-86b7-48cc-bc8e-96d4d0fd3031', 'OpenShift, Helm, and Fluentd', FALSE, 3),
    ('fd55e006-56a9-4a0a-a4fa-eb168bdefc40', '62ec3aa8-86b7-48cc-bc8e-96d4d0fd3031', 'Docker Swarm, Istio, and NGINX', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0c879030-c44a-456a-83c6-1d7eb36b8eb6', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which of the following can trigger autoscaling of an Azure Container App via KEDA scale rules?',
        'KEDA scale rules in Azure Container Apps support scaling based on HTTP traffic, custom event triggers (e.g., queue length), and standard resource metrics like CPU/memory, not just one of these in isolation.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d5f3b4fd-b2c4-430d-af87-e67381987d32', '0c879030-c44a-456a-83c6-1d7eb36b8eb6', 'Only scheduled scaling based on time of day', FALSE, 1),
    ('24762668-4d72-455f-8423-b4cd6cb22cb2', '0c879030-c44a-456a-83c6-1d7eb36b8eb6', 'Only HTTP traffic; other triggers are not supported', FALSE, 2),
    ('80f3608f-61c3-4671-bf0c-f9713efea054', '0c879030-c44a-456a-83c6-1d7eb36b8eb6', 'HTTP traffic, event triggers such as queue length, or CPU/memory usage', TRUE, 3),
    ('8c81152f-3638-4b76-bb6e-ea295fcb339a', '0c879030-c44a-456a-83c6-1d7eb36b8eb6', 'Only manual scaling set by an administrator', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0231efb3-7a0e-45fe-a557-94233aeda2b0', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is a "revision" in Azure Container Apps?',
        'A revision represents an immutable snapshot capturing a version of a Container App''s configuration and image. It is not mutable, is not a backup service, and is not itself a scaling policy.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('61eb581e-eb61-4fd9-8a6b-0c6e564d5cee', '0231efb3-7a0e-45fe-a557-94233aeda2b0', 'An immutable snapshot of a Container App version', TRUE, 1),
    ('e7e63e45-cd2b-496d-a5b5-8bcc9acbd48e', '0231efb3-7a0e-45fe-a557-94233aeda2b0', 'A backup of the container image stored in Azure Backup', FALSE, 2),
    ('7fbbff5b-2e11-4396-b8f9-f03b3f81241d', '0231efb3-7a0e-45fe-a557-94233aeda2b0', 'A mutable, live-editable copy of the running container', FALSE, 3),
    ('c19b3b4c-f99e-48cf-aac8-2d0ec8a83c98', '0231efb3-7a0e-45fe-a557-94233aeda2b0', 'A scaling policy applied to a Container Apps Environment', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('28b84573-0fb9-4c49-8fa4-1b4ba1d16336', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Container Apps revision mode allows traffic splitting between revisions, useful for blue/green or canary deployments?',
        'Multiple revision mode allows traffic to be split across multiple active revisions simultaneously, enabling blue/green or canary deployment strategies. Single revision mode only keeps the latest active revision running.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b7254825-46e0-4d3f-93f7-10d4c9d88256', '28b84573-0fb9-4c49-8fa4-1b4ba1d16336', 'Static revision mode', FALSE, 1),
    ('17b4aae0-6191-420e-8147-b03417ce3307', '28b84573-0fb9-4c49-8fa4-1b4ba1d16336', 'Single revision mode', FALSE, 2),
    ('af630a23-5d0c-4b18-9f29-f7d7d1fa0376', '28b84573-0fb9-4c49-8fa4-1b4ba1d16336', 'Multiple revision mode', TRUE, 3),
    ('0d585e35-bbd1-44e5-ba59-a3617b90a4c3', '28b84573-0fb9-4c49-8fa4-1b4ba1d16336', 'Immutable revision mode', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('92e41cff-2139-4383-82f3-4b27f8b64c74', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Azure Container Apps ingress can be configured in which two modes?',
        'Azure Container Apps ingress supports external ingress, which is internet-facing, and internal ingress, which is restricted to the virtual network. The other pairings do not reflect actual ingress mode options.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5699abb5-0ac3-428d-b0a1-f03bc8ed323c', '92e41cff-2139-4383-82f3-4b27f8b64c74', 'Load-balanced and round-robin only', FALSE, 1),
    ('579c111a-27e4-4e54-b836-fd55a4b1da9e', '92e41cff-2139-4383-82f3-4b27f8b64c74', 'Public and Private, both requiring a public IP', FALSE, 2),
    ('51b72ddf-375a-4995-8088-05a9a49c9ed2', '92e41cff-2139-4383-82f3-4b27f8b64c74', 'External (internet-facing) and internal (VNet-only)', TRUE, 3),
    ('0f835eef-e0f4-418e-afa5-4b5bdc2fb88f', '92e41cff-2139-4383-82f3-4b27f8b64c74', 'Synchronous and asynchronous only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0e269c15-40cd-414a-a0ab-d30a61677caa', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What does the Dapr sidecar integration in Azure Container Apps provide?',
        'The Dapr sidecar provides these distributed application capabilities without requiring the logic to be embedded directly in application code. It does not provide a database engine, convert containers to Functions, or expose the Kubernetes API.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6d35492d-3821-4a2a-8a4d-f32e19676bbf', '0e269c15-40cd-414a-a0ab-d30a61677caa', 'Building blocks for microservices such as service-to-service invocation, state management, and pub/sub messaging', TRUE, 1),
    ('5eaad4dc-1e83-4274-95cd-84716cbf87bf', '0e269c15-40cd-414a-a0ab-d30a61677caa', 'Automatic conversion of containers into Azure Functions', FALSE, 2),
    ('01488cdb-3516-44c3-a04e-dc82931fb012', '0e269c15-40cd-414a-a0ab-d30a61677caa', 'Direct access to the underlying Kubernetes API server', FALSE, 3),
    ('cb9696ff-b8bb-438e-8171-dc4adfba0114', '0e269c15-40cd-414a-a0ab-d30a61677caa', 'A built-in relational database engine for each container app', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2731af3b-0789-4288-96fd-bd91a022d58f', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is a Container Apps Environment in Azure Container Apps?',
        'A Container Apps Environment defines this shared boundary, and apps within the same environment can communicate directly. It is not a subscription, a pure billing construct, or a pre-provisioned AKS cluster.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f31d88a0-a428-4705-b335-0e485b271a46', '2731af3b-0789-4288-96fd-bd91a022d58f', 'A secure boundary around a group of container apps that share the same virtual network and Log Analytics workspace', TRUE, 1),
    ('c8e2bf30-2e01-445f-b5e5-43008d64b507', '2731af3b-0789-4288-96fd-bd91a022d58f', 'A separate Azure subscription dedicated to container workloads', FALSE, 2),
    ('d83beee8-127b-46f1-a10b-a1e4a5b8827c', '2731af3b-0789-4288-96fd-bd91a022d58f', 'A billing construct used only for cost allocation', FALSE, 3),
    ('74bc5797-9df5-4ddc-b6ed-ae26d975c5bd', '2731af3b-0789-4288-96fd-bd91a022d58f', 'A required Azure Kubernetes Service cluster that must be pre-provisioned', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dc0f5293-4c08-4376-a08c-2d0defd0dcfa', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is a key distinction between Azure Container Apps and Azure Kubernetes Service (AKS)?',
        'This is the key architectural distinction between the two services; AKS exposes the Kubernetes API and gives administrators cluster-level control, while Container Apps hides that complexity entirely.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('70b6ed63-fbe7-4ab5-bdbf-744d29d6cae1', 'dc0f5293-4c08-4376-a08c-2d0defd0dcfa', 'Container Apps requires manual node pool management, while AKS does not', FALSE, 1),
    ('6b6f90a4-3d88-4e0e-a8bb-1ed1385047a4', 'dc0f5293-4c08-4376-a08c-2d0defd0dcfa', 'AKS cannot scale to zero, while Container Apps always runs at least one node', FALSE, 2),
    ('f6e69114-04d4-4a2d-b233-118ac394c4a5', 'dc0f5293-4c08-4376-a08c-2d0defd0dcfa', 'Container Apps exposes the full Kubernetes API, while AKS does not', FALSE, 3),
    ('d1f2c52b-dad2-4884-b9a9-0f0326599499', 'dc0f5293-4c08-4376-a08c-2d0defd0dcfa', 'Container Apps abstracts orchestration entirely and does not expose the underlying Kubernetes API, while AKS provides full control over a managed cluster', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9e725e8e-1f4d-4c6f-abea-3c55ff45daa9', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Compared to Azure Container Instances (ACI), what does Azure Container Apps add?',
        'ACI runs single containers or container groups without these platform capabilities, whereas Container Apps builds a complete application platform on top of similar container hosting fundamentals.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8ddc265f-436a-4c23-a8d9-3144dfa998c7', '9e725e8e-1f4d-4c6f-abea-3c55ff45daa9', 'Mandatory use of virtual machine scale sets underneath', FALSE, 1),
    ('042080e0-ed2c-4bdd-992b-5df42eabff1d', '9e725e8e-1f4d-4c6f-abea-3c55ff45daa9', 'A full application platform with autoscaling, revisions, ingress traffic splitting, and Dapr integration', TRUE, 2),
    ('106c6cb1-58dd-4fa6-b22e-85daf1a1cdfb', '9e725e8e-1f4d-4c6f-abea-3c55ff45daa9', 'The ability to run single containers only, unlike ACI which supports groups', FALSE, 3),
    ('d62c363d-dc0d-420d-a737-407b73b9ebf5', '9e725e8e-1f4d-4c6f-abea-3c55ff45daa9', 'Nothing additional; they are functionally identical services', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aff935cd-5bcb-49f1-951f-fd4a6fbf6721', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What does "scale-to-zero" mean in the context of Azure Container Apps?',
        'Scale-to-zero means the app can have no running replicas when idle, reducing cost, and will scale back out when triggered by traffic or events. It has nothing to do with storage deletion, environment deletion, or deployment downtime guarantees.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bb5a6aa0-d4dd-48e3-b128-e145c70b04b9', 'aff935cd-5bcb-49f1-951f-fd4a6fbf6721', 'The Container Apps Environment is deleted automatically after inactivity', FALSE, 1),
    ('df82d8cb-9f35-4e75-b956-6511997d1a0f', 'aff935cd-5bcb-49f1-951f-fd4a6fbf6721', 'A container app can scale down to zero running instances when there is no incoming traffic or events', TRUE, 2),
    ('73c83546-d248-4fad-9e2a-121ccbbff06d', 'aff935cd-5bcb-49f1-951f-fd4a6fbf6721', 'The container app''s storage is permanently deleted after zero requests', FALSE, 3),
    ('8aebeae8-2e06-4ee7-8c3c-95848d70c835', 'aff935cd-5bcb-49f1-951f-fd4a6fbf6721', 'Zero-downtime deployment is guaranteed for every revision update', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d5306a6b-123c-42e9-8f47-238f4de34c40', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure resource lock type allows resources to be read and modified but prevents them from being deleted?',
        'This lock type permits read and modify operations on a resource but blocks delete operations. ReadOnly is more restrictive, blocking both modification and deletion, and the other two options are not valid Azure lock types.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d0bfee8d-f947-4d2e-814b-a16a888bad29', 'd5306a6b-123c-42e9-8f47-238f4de34c40', 'Immutable', FALSE, 1),
    ('02e9ece3-4216-4ad8-a530-5844e97a7783', 'd5306a6b-123c-42e9-8f47-238f4de34c40', 'ReadOnly', FALSE, 2),
    ('94f2b680-5d05-4754-a4ce-bdf2e60e49c3', 'd5306a6b-123c-42e9-8f47-238f4de34c40', 'CanNotDelete', TRUE, 3),
    ('328d2b41-8b7a-462e-a49d-c3a2fcef8c34', 'd5306a6b-123c-42e9-8f47-238f4de34c40', 'DenyWriteDelete', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3bda3259-5252-434c-a1a3-8676496bdbc3', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure resource lock type prevents both modification and deletion of a resource?',
        'A ReadOnly lock prevents both modifying and deleting a resource, effectively making it read-only to all users regardless of their assigned role. CanNotDelete is less restrictive, permitting modifications.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('93bb9d9f-ed22-428a-af2c-6cc4a377e114', '3bda3259-5252-434c-a1a3-8676496bdbc3', 'ReadOnly', TRUE, 1),
    ('2e31b612-5076-431b-8205-9de6f33e7474', '3bda3259-5252-434c-a1a3-8676496bdbc3', 'CanNotDelete', FALSE, 2),
    ('bbcf0f68-321e-4d5a-97f9-65239ca4bc6c', '3bda3259-5252-434c-a1a3-8676496bdbc3', 'Contributor-restricted', FALSE, 3),
    ('b2f805db-7504-461c-bce2-92fe75ee5e62', '3bda3259-5252-434c-a1a3-8676496bdbc3', 'Archive', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2c9c2c3f-32dc-4242-8b20-e75a6594cc8e', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'How do Azure resource locks interact with role-based access control (RBAC) permissions?',
        'Resource locks operate independently of RBAC; even a user with the Owner role cannot delete or modify a locked resource (depending on lock type) until the lock is removed. Locks are not selectively enforced only against certain roles.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cb10afb7-fbca-4c5d-96e4-7b68f5da2736', '2c9c2c3f-32dc-4242-8b20-e75a6594cc8e', 'Locks apply regardless of RBAC permissions, even blocking actions for users with the Owner role', TRUE, 1),
    ('eac3ac56-69e1-4bdd-a9a5-13a29db1bf2b', '2c9c2c3f-32dc-4242-8b20-e75a6594cc8e', 'Locks override RBAC only for Contributor role, not Owner', FALSE, 2),
    ('f84a7344-ca10-4322-893c-9748adc5003f', '2c9c2c3f-32dc-4242-8b20-e75a6594cc8e', 'Locks are enforced solely through RBAC role assignments, not independently', FALSE, 3),
    ('e7c2c889-9900-4a27-8da8-63d2b38b0b41', '2c9c2c3f-32dc-4242-8b20-e75a6594cc8e', 'Locks only apply to users with Reader role; Owners are always exempt', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c59b94dc-3f9e-4741-954c-e9eb83432b87', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What commitment terms are available when purchasing an Azure Reserved Instance (Reservation) for a virtual machine?',
        'Azure Reservations for VMs, SQL Database, Cosmos DB, and other supported services are purchased as either a 1-year or 3-year commitment, offering savings of up to roughly 72% compared to pay-as-you-go pricing. The other term lengths listed are not offered.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6cd9f24f-7211-460f-a20b-2f0a968cfc40', 'c59b94dc-3f9e-4741-954c-e9eb83432b87', '2 years or 5 years only', FALSE, 1),
    ('765d28ee-98bb-4db7-9378-8f4851176d7e', 'c59b94dc-3f9e-4741-954c-e9eb83432b87', '1 year or 3 years', TRUE, 2),
    ('9798c4f8-6175-4036-9c64-8e5a1f1fd7a8', 'c59b94dc-3f9e-4741-954c-e9eb83432b87', '6 months or 18 months only', FALSE, 3),
    ('aef4ab61-82bd-4291-a766-d2be73fe6262', 'c59b94dc-3f9e-4741-954c-e9eb83432b87', 'A rolling monthly commitment with no fixed term', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4fbe732d-d896-41ce-b7cb-1860b3d0f230', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What does Azure Hybrid Benefit allow customers to do?',
        'Azure Hybrid Benefit reduces the licensing/compute cost of running Windows Server or SQL Server workloads in Azure by applying existing on-premises licenses. It is distinct from Reserved Instances and not related to Firewall licensing or bandwidth charges.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('15a31a53-130e-413c-831e-dd19f8b6f280', '4fbe732d-d896-41ce-b7cb-1860b3d0f230', 'Convert Reserved Instance discounts into Azure credits automatically', FALSE, 1),
    ('5d6dfae8-92d9-46d2-b697-14646fcaaa8e', '4fbe732d-d896-41ce-b7cb-1860b3d0f230', 'Reuse existing on-premises Windows Server or SQL Server licenses covered by Software Assurance to reduce Azure compute costs', TRUE, 2),
    ('30de04b6-701a-4dd8-aa93-440ffcd0aafd', '4fbe732d-d896-41ce-b7cb-1860b3d0f230', 'Waive all egress bandwidth charges for hybrid connections', FALSE, 3),
    ('e05ecf55-865a-49b9-850c-a8112cca6ec8', '4fbe732d-d896-41ce-b7cb-1860b3d0f230', 'Receive a discount on Azure Firewall Premium licensing only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d0ace327-0325-4142-aef1-56a672202eff', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What does an Azure Blueprint package together into a single, versioned, trackable artifact?',
        'An Azure Blueprint bundles all of these artifacts together into a single, versioned, trackable package that can be assigned to subscriptions to bootstrap compliant environments, not just one component in isolation.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('466315d9-059d-4e13-a9c6-59dd69bce2f9', 'd0ace327-0325-4142-aef1-56a672202eff', 'ARM templates, Azure Policy/Initiative assignments, RBAC role assignments, and resource groups', TRUE, 1),
    ('43853333-9372-474f-acd5-b587bf3d45fe', 'd0ace327-0325-4142-aef1-56a672202eff', 'Only Azure Policy initiative assignments', FALSE, 2),
    ('592c4520-da75-4537-8bd1-de02b642a57a', 'd0ace327-0325-4142-aef1-56a672202eff', 'Only ARM templates, with no policy or RBAC components', FALSE, 3),
    ('25c74db0-42ef-4e1a-8dc6-18d8dce7318b', 'd0ace327-0325-4142-aef1-56a672202eff', 'Only cost budgets and alert rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aad7ad24-1b81-4604-b558-9c05a836508b', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'When purchasing an Azure Reservation, which of the following can the reservation scope be set to?',
        'Reservation scope can be set to a single subscription or shared across multiple subscriptions within the same billing context, giving flexibility in how the discount is applied, rather than being limited to a resource group, management group, or individual VM.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('487309b9-be42-42df-81aa-19e49cc71ea7', 'aad7ad24-1b81-4604-b558-9c05a836508b', 'Only an individual virtual machine instance', FALSE, 1),
    ('97252ecd-97a0-44cb-ae67-0f42f3894365', 'aad7ad24-1b81-4604-b558-9c05a836508b', 'Only a single resource group, never a subscription', FALSE, 2),
    ('d88ed171-6f41-4ef0-a243-dad471a9e83b', 'aad7ad24-1b81-4604-b558-9c05a836508b', 'Only a management group, never a subscription', FALSE, 3),
    ('84562679-78cd-46d8-8bfc-0ce01104288f', 'aad7ad24-1b81-4604-b558-9c05a836508b', 'A single subscription or shared across subscriptions in a billing context', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('eb055d69-a5f3-4492-a954-9784273ff91e', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Can Azure Hybrid Benefit and Reserved Instances be used together on the same virtual machine?',
        'Azure Hybrid Benefit reduces licensing costs while Reserved Instances provide capacity/pricing commitment discounts; because they address different cost components, they can be combined for maximum savings on eligible workloads.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bc20f61a-af29-44ef-9148-541aeee5d63a', 'eb055d69-a5f3-4492-a954-9784273ff91e', 'No, they are mutually exclusive discount mechanisms', FALSE, 1),
    ('538dbc06-bdd1-4c95-b0aa-c578da7cec99', 'eb055d69-a5f3-4492-a954-9784273ff91e', 'Only if the VM uses a Linux operating system', FALSE, 2),
    ('76852ad6-52e0-4ef0-a53c-597ecd0f6263', 'eb055d69-a5f3-4492-a954-9784273ff91e', 'Only for SQL Database, not for virtual machines', FALSE, 3),
    ('67eb040a-d197-4b07-af87-a5e939419514', 'eb055d69-a5f3-4492-a954-9784273ff91e', 'Yes, they can be combined for maximum savings since they address licensing and capacity commitment separately', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8112c4b0-185d-461c-be11-ed960c299241', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'Which Azure Cost Management + Billing feature proactively identifies underutilized resources and provides recommendations to optimize spend?',
        'Azure Advisor analyzes resource usage and proactively recommends cost optimizations, such as identifying underutilized resources. Resource locks and Blueprints serve governance purposes, and Reserved Instance exchange is a mechanism for modifying existing reservations, not for identifying underutilization.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6422f991-57d6-4ea4-baa8-c4261e7c6b37', '8112c4b0-185d-461c-be11-ed960c299241', 'Azure Blueprints', FALSE, 1),
    ('277dcea6-1412-49c5-86d3-1113b13aca8e', '8112c4b0-185d-461c-be11-ed960c299241', 'Resource locks', FALSE, 2),
    ('25f1c1e2-2783-450d-ba92-eb5b7b36a52d', '8112c4b0-185d-461c-be11-ed960c299241', 'Azure Advisor cost recommendations', TRUE, 3),
    ('2589f62a-5f57-4ffc-ab92-fa9cba9debf0', '8112c4b0-185d-461c-be11-ed960c299241', 'Reserved Instance exchange', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('04c31b56-ef62-4411-8885-352267b80107', '683f0426-a2a4-46fc-aca0-30042d9aa599', 'SINGLE_CHOICE', 'What is the current direction of Microsoft''s guidance regarding Azure Blueprints?',
        'While Blueprints concepts remain relevant and testable, Microsoft has shifted its recommended approach toward using Template Specs together with Azure Policy for environment governance and standardization.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3f80b685-901a-47ca-b0e3-81a854477a48', '04c31b56-ef62-4411-8885-352267b80107', 'Blueprints has been merged into Azure Firewall Manager', FALSE, 1),
    ('f00664c2-4bc5-4eda-8559-6eeff6f39e36', '04c31b56-ef62-4411-8885-352267b80107', 'Blueprints is being expanded as the sole governance tool, replacing Azure Policy entirely', FALSE, 2),
    ('e7770b9f-7705-4c49-ab35-a9fca9d35ad9', '04c31b56-ef62-4411-8885-352267b80107', 'Microsoft has been deprecating/replacing Blueprints in favor of Template Specs combined with Azure Policy', TRUE, 3),
    ('3c2fc8bb-adf6-499a-bda7-016a88514a99', '04c31b56-ef62-4411-8885-352267b80107', 'Blueprints now requires a paid add-on license for all subscriptions', FALSE, 4);
