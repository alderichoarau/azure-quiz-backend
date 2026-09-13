INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('8010cd82-b6c1-45b6-afdd-c52dfdb1995c', '00000000-0000-0000-0000-000000000002', 'module-06-complementary-topics-practice', 'Module 6 (Practice Scenarios) - Complementary Topics',
        NULL, 12);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('69ed979f-2789-4c60-8f2d-42373f3e68da', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Your team currently authors deployments using raw ARM JSON templates but finds the syntax verbose and hard to maintain. You rewrite the same deployment as a `.bicep` file and run `az deployment group create` pointing at that file, without first running any separate build step. What happens during this deployment?',
        'Bicep is a DSL that is compiled to ARM JSON either explicitly via `az bicep build` or automatically when you run `az deployment group create` against a `.bicep` file. Option A is wrong because Azure Resource Manager only understands ARM JSON, not Bicep syntax directly. Option C is wrong because automatic compilation during deployment is a core supported feature. Option D is wrong because Bicep has no relationship to Terraform''s HCL language.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('86ed8126-bd35-45ff-9737-0512df7500f9', '69ed979f-2789-4c60-8f2d-42373f3e68da', 'Bicep is deployed directly without conversion, because Azure Resource Manager natively parses `.bicep` syntax', FALSE, 1),
    ('3593fb01-da53-4408-9e9c-f2074ee09f80', '69ed979f-2789-4c60-8f2d-42373f3e68da', 'The Bicep file is automatically transpiled (compiled) into an ARM JSON template at deployment time', TRUE, 2),
    ('fcc52261-8bcf-49fb-8dcc-4b78d6fd8b56', '69ed979f-2789-4c60-8f2d-42373f3e68da', 'Bicep files are converted to Terraform HCL before being sent to Azure Resource Manager', FALSE, 3),
    ('d694eed8-b608-48d4-9d31-68c4e9448dc1', '69ed979f-2789-4c60-8f2d-42373f3e68da', 'You must manually run `az bicep build` before every deployment; automatic compilation is not supported by the CLI', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('62ea7a32-7747-483c-8233-c739aefc2fb3', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A Bicep template defines a virtual network resource named `vnet` and a subnet resource whose `properties.addressPrefix` block references `vnet.properties.addressSpace` via the symbolic name `vnet`. No `dependsOn` property is declared anywhere in the template. Will Azure Resource Manager deploy the subnet only after the virtual network is created?',
        'Bicep detects the symbolic reference and generates the equivalent `dependsOn` behind the scenes at compile time. Option B is incorrect because explicit `dependsOn` is only required when there is no direct symbolic reference between resources. Option C is incorrect because Bicep does not use alphabetical ordering to determine deployment sequence. Option D is incorrect because implicit dependency detection works for any symbolic reference, not just references within `module` blocks.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ad11848c-455b-4562-be60-04494067348f', '62ea7a32-7747-483c-8233-c739aefc2fb3', 'No, `dependsOn` must always be explicitly declared for every resource relationship; Bicep never infers dependencies', FALSE, 1),
    ('9d5d1b5e-053d-4c45-a1bf-cad3d788d833', '62ea7a32-7747-483c-8233-c739aefc2fb3', 'Yes, because referencing the virtual network resource''s symbolic name within the subnet resource automatically creates an implicit dependency', TRUE, 2),
    ('6c3f0e2c-1938-44be-8744-5fb63b20a517', '62ea7a32-7747-483c-8233-c739aefc2fb3', 'No, implicit dependencies are only created when both resources are declared inside the same `module` block', FALSE, 3),
    ('0c13d28a-8ef4-4112-8f7c-990f67c60418', '62ea7a32-7747-483c-8233-c739aefc2fb3', 'Yes, but only because Bicep deploys resources strictly in alphabetical order by resource type', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7f29cb86-abfc-4d60-965b-42f88d787e36', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A resource group contains several resources that were created manually by different application teams and are not represented in your Bicep template. You need to deploy an updated version of your template to add new resources and update existing managed ones, but you must not delete or otherwise affect the manually created resources that are outside the template''s scope. Which deployment mode should you use?',
        'this is exactly the safe behavior needed here. Option A (Complete mode) is incorrect and dangerous in this scenario because it deletes any resource in the resource group not defined in the template, which would remove the manually created resources. Option B is incorrect because "Validate mode" does not deploy resources and is not itself a deployment mode with add/modify behavior. Option C ("Full mode") is not a real Azure deployment mode.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('23349a4f-6c98-42bf-9ee9-016567b9013d', '7f29cb86-abfc-4d60-965b-42f88d787e36', 'Incremental mode (the default), which adds and modifies the resources defined in the template while leaving other unmanaged existing resources in the resource group untouched', TRUE, 1),
    ('5c276119-debd-4942-953a-f8e53b078e15', '7f29cb86-abfc-4d60-965b-42f88d787e36', 'Full mode, which merges resources into the resource group without any validation step', FALSE, 2),
    ('6d781145-07fa-4d55-ba5c-4de83759fbc0', '7f29cb86-abfc-4d60-965b-42f88d787e36', 'Validate mode, which only checks template syntax without deploying anything', FALSE, 3),
    ('79b7fd2e-f6ab-4307-8375-18aa128bbd75', '7f29cb86-abfc-4d60-965b-42f88d787e36', 'Complete mode, which ensures the resource group matches the template exactly', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('323d94fd-9f21-45e1-b18e-76f9093cc964', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Before rolling out a modified Bicep template to a production resource group, you want to see exactly which resources will be created, updated, or deleted as a result of the deployment, without actually applying any changes. Which command should you run?',
        'previews the changes (creates, modifies, deletes) that a deployment would make without actually applying them. Option A, `az deployment group validate`, only checks that the template is syntactically and semantically valid it does not show a diff of resource changes. Option B is not a real Azure CLI command. Option D, `az group export`, exports the current state of a resource group as a template; it does not preview a future deployment''s impact.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('84f685db-fe61-4b4a-a61f-da25627cdd1f', '323d94fd-9f21-45e1-b18e-76f9093cc964', '`az deployment group validate`', FALSE, 1),
    ('6213e06a-b009-4d47-95ab-7ebb0f5564ed', '323d94fd-9f21-45e1-b18e-76f9093cc964', '`az deployment group what-if`', TRUE, 2),
    ('64edd640-9382-4a5e-915a-433cc4a299fc', '323d94fd-9f21-45e1-b18e-76f9093cc964', '`az bicep build --preview`', FALSE, 3),
    ('5dbcf7ff-2e13-4e37-9f01-a359af3e8989', '323d94fd-9f21-45e1-b18e-76f9093cc964', '`az group export`', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5d06bca0-371f-46cc-9ade-37cccaa6ab24', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Your organization maintains separate Bicep files for a standard storage account configuration, a standard virtual network configuration, and a standard VM configuration. You want a main Bicep template to reuse these files as composable, reusable building blocks rather than duplicating their resource definitions inline. Which Bicep keyword should you use to reference these files from the main template?',
        '. The `module` keyword is used in Bicep to reference and compose other Bicep files as reusable building blocks within a main template. Option A, `param`, declares input parameters, not reusable resource files. Option B, `output`, returns values from a deployment, not resource definitions. Option D, `resource`, declares a single Azure resource inline rather than referencing an external reusable file.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3fa01363-941a-49fc-959d-16e458de962e', '5d06bca0-371f-46cc-9ade-37cccaa6ab24', '`output`', FALSE, 1),
    ('a245ca5f-3ac0-4116-b9b5-399d6586679c', '5d06bca0-371f-46cc-9ade-37cccaa6ab24', '`module`', TRUE, 2),
    ('a91de20b-7094-49e3-b970-c2f1a12eeca8', '5d06bca0-371f-46cc-9ade-37cccaa6ab24', '`resource`', FALSE, 3),
    ('c70d3d4b-aa0b-439e-a726-8e4f7ed4cd7b', '5d06bca0-371f-46cc-9ade-37cccaa6ab24', '`param`', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6dbd9146-c0dd-49ed-a2cd-6604be80185b', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Your organization has a large existing library of ARM JSON templates and wants to migrate them to Bicep syntax to take advantage of its simpler, more readable authoring experience, while preserving the exact same resource definitions. Which command accomplishes this conversion?',
        'converts existing ARM JSON templates into equivalent Bicep syntax, which is the standard migration path described. Option A, `az bicep build`, does the opposite it compiles Bicep into ARM JSON. Option C is not a valid Azure CLI command or flag. Option D, `az group export --bicep`, is not a valid syntax; `az group export` produces ARM JSON, not Bicep, and does not support a `--bicep` conversion flag.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('69fc4d24-0cf3-4dfc-84d2-0a3fe6731391', '6dbd9146-c0dd-49ed-a2cd-6604be80185b', '`az deployment group create --convert`', FALSE, 1),
    ('87c0e127-6b52-4aaf-aada-6025281ad570', '6dbd9146-c0dd-49ed-a2cd-6604be80185b', '`az bicep build`', FALSE, 2),
    ('21593822-f363-4b4e-b0bb-1d087a36a2b4', '6dbd9146-c0dd-49ed-a2cd-6604be80185b', '`az group export --bicep`', FALSE, 3),
    ('1e92e100-02f6-4803-b495-9bff9d916ce4', '6dbd9146-c0dd-49ed-a2cd-6604be80185b', '`az bicep decompile`', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7be4fc08-efa2-44a0-afe0-950a08be5716', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Your company deployed a Virtual WAN using the Basic SKU to connect several branch offices to Azure over Site-to-Site VPN. The company now wants to allow remote employees to connect individually using Point-to-Site VPN through the same Virtual WAN. What must you do?',
        'Point-to-Site VPN, ExpressRoute, VNet-to-VNet transit, and hub-to-hub connectivity are all Standard SKU features. Option A is factually incorrect about Basic SKU capabilities. Option C is an unnecessary and unsupported workaround; you cannot mix SKU capabilities this way. Option D is irrelevant, as Global Reach does not enable Point-to-Site VPN.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('60b8b7d3-51c0-44df-80e3-0efaa7339363', '7be4fc08-efa2-44a0-afe0-950a08be5716', 'Enable ExpressRoute Global Reach on the existing Basic SKU virtual WAN to unlock Point-to-Site VPN', FALSE, 1),
    ('f5a2f0a7-698f-44e7-8dea-ab4ab19c8273', '7be4fc08-efa2-44a0-afe0-950a08be5716', 'No change is needed; Point-to-Site VPN connectivity is included in the Basic SKU', FALSE, 2),
    ('41a9c59c-5dc0-472c-8275-fba0443a3366', '7be4fc08-efa2-44a0-afe0-950a08be5716', 'Upgrade the virtual WAN to the Standard SKU, since the Basic SKU supports only Site-to-Site VPN connectivity', TRUE, 3),
    ('8d110fb1-9c44-4d4e-81d9-15017c69cb29', '7be4fc08-efa2-44a0-afe0-950a08be5716', 'Deploy a second, separate Basic SKU virtual WAN dedicated exclusively to Point-to-Site VPN connections', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('af44cccc-e7c8-43d8-a01b-4af989ad42de', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'The security team wants a single, centrally managed firewall that inspects and secures both branch-to-branch traffic and branch-to-VNet traffic passing through your Virtual WAN hub, with policy management consolidated in one place. What should you configure?',
        '. Configuring a Secured Virtual Hub by deploying Azure Firewall directly into the virtual hub and managing it centrally through Azure Firewall Manager is the purpose-built solution for centralized, unified security across both branch and VNet traffic in a Virtual WAN. Option A defeats the purpose of centralization and adds significant operational overhead. Option B (DDoS Protection) addresses a different threat category, not general traffic filtering. Option D (NSGs on the hub subnet) is not a supported or recommended way to secure a virtual hub''s transit traffic.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a3c5fcee-5d99-44e1-83e7-a88a06a5528f', 'af44cccc-e7c8-43d8-a01b-4af989ad42de', 'Apply network security groups (NSGs) directly to the virtual hub''s default subnet', FALSE, 1),
    ('e7d29a24-f15c-46f4-acf0-5b133ffc1d15', 'af44cccc-e7c8-43d8-a01b-4af989ad42de', 'Configure a Secured Virtual Hub by deploying Azure Firewall directly into the virtual hub and managing it centrally through Azure Firewall Manager', TRUE, 2),
    ('3d4ec7b8-5963-49b7-a527-2516031d9e5d', 'af44cccc-e7c8-43d8-a01b-4af989ad42de', 'Deploy Azure Firewall independently in each spoke virtual network and configure user-defined routes (UDRs) to redirect traffic through each instance', FALSE, 3),
    ('3c885473-0120-4158-a108-b3a0cb8ed9d9', 'af44cccc-e7c8-43d8-a01b-4af989ad42de', 'Enable Azure DDoS Protection Standard on the virtual hub''s public IP addresses', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e4fb4b02-cec7-4ee6-bbc6-c09fe8e24edb', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Your Virtual WAN uses the Standard SKU and currently connects 10 virtual networks and 5 branch office VPN sites to a single virtual hub. You need every connected VNet and site to be able to reach every other connected VNet and site without manually configuring peerings or route tables between each pair. What must you configure to achieve this?',
        'the Standard SKU virtual WAN automatically provides any-to-any transitive connectivity between all connected sites and VNets, which is one of its key differentiators over manually built topologies. Option B describes the manual effort Virtual WAN is designed to eliminate. Option C and D describe unnecessary manual networking configurations that Virtual WAN Standard SKU handles automatically.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('abcf553e-7dbd-4dfe-80fb-2ee1febd4986', 'e4fb4b02-cec7-4ee6-bbc6-c09fe8e24edb', 'Nothing additional — the Standard SKU virtual WAN automatically provides any-to-any transitive connectivity between all connected sites and VNets', TRUE, 1),
    ('c62e882d-e7dc-4473-bd1e-211fbd5f8782', 'e4fb4b02-cec7-4ee6-bbc6-c09fe8e24edb', 'Each VNet and each branch site must be individually peered with every other VNet and site', FALSE, 2),
    ('7f5a04dd-5bee-40e2-804b-908dab3bf183', 'e4fb4b02-cec7-4ee6-bbc6-c09fe8e24edb', 'Transitive connectivity requires deploying an Azure Route Server instance inside every spoke virtual network', FALSE, 3),
    ('859005b7-0c8a-4f8d-bad2-e3bbf9b7ce98', 'e4fb4b02-cec7-4ee6-bbc6-c09fe8e24edb', 'Transitive routing must be enabled by manually establishing custom BGP peering sessions between every pair of connections', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9b626b07-984c-417c-8417-66a2533c329a', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'During a design review, a colleague asks you to describe what a Virtual Hub is within an Azure Virtual WAN deployment. Which statement is accurate?',
        '. A Virtual Hub is a Microsoft-managed hub that can contain a router along with VPN and/or ExpressRoute gateways, and optionally an Azure Firewall (making it a Secured Virtual Hub). Option A is incorrect because the hub is Microsoft-managed, not customer-managed. Option B is incorrect because virtual hubs support both VPN and ExpressRoute gateways. Option D incorrectly describes the hub as having no networking function, when routing and gateway hosting are its core purposes.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('aca7b441-e037-44a4-a662-6e69fbc93230', '9b626b07-984c-417c-8417-66a2533c329a', 'It is a customer-managed virtual network that you must configure yourself with your own routing tables and network virtual appliances', FALSE, 1),
    ('c2c90ef2-8b9f-47fd-b6f4-6079b5d08f23', '9b626b07-984c-417c-8417-66a2533c329a', 'It is a logical container used only for cost allocation and billing purposes, with no networking function of its own', FALSE, 2),
    ('08b20cae-1f83-49e0-b981-d88dd7d61683', '9b626b07-984c-417c-8417-66a2533c329a', 'It is a Microsoft-managed resource that supports only ExpressRoute gateways and never VPN gateways', FALSE, 3),
    ('8144bc8c-7caa-4306-bf61-700366095c56', '9b626b07-984c-417c-8417-66a2533c329a', 'It is a Microsoft-managed hub that can contain a router along with VPN and/or ExpressRoute gateways, and optionally an Azure Firewall', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8d0624ab-e5ef-471e-b8ee-8cef316418a7', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A network architect is comparing two options for connecting 50 branch offices spread across multiple Azure regions: manually building and maintaining a traditional hub-and-spoke topology with individually managed peerings, route tables, and gateways, versus adopting Azure Virtual WAN. What is the primary networking advantage of Virtual WAN in this scenario?',
        'Virtual WAN reduces manual peering configuration. Option B is false, as Virtual WAN spans multiple regions by design. Option D is false, since gateways (VPN/ExpressRoute) are still required to connect branch sites.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('67909eae-2f77-40b0-ab66-04bfd1ee2641', '8d0624ab-e5ef-471e-b8ee-8cef316418a7', 'Virtual WAN requires more manual peering configuration than a traditional hub-and-spoke network, but offers better throughput', FALSE, 1),
    ('7d09cf8e-5f88-4270-9159-c42597ff6d9d', '8d0624ab-e5ef-471e-b8ee-8cef316418a7', 'Virtual WAN is limited to a single Azure region, unlike a traditional hub-and-spoke topology', FALSE, 2),
    ('80ccb0cc-1fe9-4586-a32d-d585f2aedae2', '8d0624ab-e5ef-471e-b8ee-8cef316418a7', 'Virtual WAN unifies networking, security, and routing functionality into a single Microsoft-managed operational interface, significantly reducing the operational overhead of manually building and maintaining a large-scale hub-and-spoke topology', TRUE, 3),
    ('391a6681-f4ed-4df4-83f8-fad090dd831e', '8d0624ab-e5ef-471e-b8ee-8cef316418a7', 'Virtual WAN eliminates the need for any gateway resources when connecting branch offices', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('af2293b0-55a3-4d83-8c71-a4912d482557', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Your company currently uses a Basic SKU Virtual WAN and now needs to add VNet-to-VNet transit connectivity between spoke virtual networks, as well as hub-to-hub connectivity between virtual hubs deployed in different regions. What must you do?',
        '. Both VNet-to-VNet transit and hub-to-hub connectivity require the Standard SKU virtual WAN; these are not available on the Basic SKU, which supports only Site-to-Site VPN connectivity. Options A and C incorrectly claim these features are available on Basic SKU. Option B incorrectly ties hub-to-hub availability to ExpressRoute rather than to the SKU tier itself.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('21442bbb-6d67-4707-b067-0ac9d8f1d5ad', 'af2293b0-55a3-4d83-8c71-a4912d482557', 'Hub-to-hub connectivity is available on the Basic SKU only when ExpressRoute is used as the connectivity method', FALSE, 1),
    ('4f428ed5-82a4-4050-9895-62ef2a1ae0fb', 'af2293b0-55a3-4d83-8c71-a4912d482557', 'Upgrade the virtual WAN to the Standard SKU, since both VNet-to-VNet transit and hub-to-hub connectivity require the Standard SKU', TRUE, 2),
    ('ef2581a4-2a0c-4e15-b1ae-09dc411da6d2', 'af2293b0-55a3-4d83-8c71-a4912d482557', 'Both features are already available on the Basic SKU without any changes', FALSE, 3),
    ('f1cf98f6-a6fd-4fc4-a194-d1e28abd01ac', 'af2293b0-55a3-4d83-8c71-a4912d482557', 'Nothing; the Basic SKU already supports VNet-to-VNet transit but not hub-to-hub connectivity', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c55f178a-bbd3-481e-bdaf-fce295ca16fd', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'You need to publish an internal web server behind Azure Firewall so that internet users connecting to the firewall''s public IP address on port 443 are transparently redirected to the server''s private IP address, with the traffic also being filtered. Which Azure Firewall rule collection type should you configure?',
        '. NAT rules (DNAT) translate and filter inbound traffic from the internet to an internal IP address and port, which is exactly what''s needed to publish an internal web server through the firewall''s public IP. Option A (Application rules) governs outbound HTTP/S traffic filtered by FQDN, not inbound publishing. Option B (Network rules) filters based on IP/port/protocol but does not perform the destination NAT translation needed here. Option C (Threat Intelligence rules) is used for alerting/blocking based on known malicious sources, not for publishing services.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('48ff50b7-d4d6-451a-8849-858be46b140c', 'c55f178a-bbd3-481e-bdaf-fce295ca16fd', 'NAT rules (DNAT), which translate and filter inbound traffic from the internet to an internal IP address and port', TRUE, 1),
    ('174a9aca-6569-403b-be41-27306131ecb2', 'c55f178a-bbd3-481e-bdaf-fce295ca16fd', 'Network rules', FALSE, 2),
    ('d6dbd838-dc68-42cf-9447-44082beed3af', 'c55f178a-bbd3-481e-bdaf-fce295ca16fd', 'Threat Intelligence rules', FALSE, 3),
    ('bef224fc-2bb0-48c6-819c-95193681085d', 'c55f178a-bbd3-481e-bdaf-fce295ca16fd', 'Application rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('84e671e9-d5ef-4922-91f5-048d5fbd7321', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A central security team wants to define a baseline set of firewall rules that must apply to every regional deployment, while allowing each regional team to add their own additional rules for their specific firewall instances — without regional teams being able to override or remove the central baseline rules. Which Azure Firewall capability supports this requirement?',
        '. Creating a hierarchical firewall policy structure, with a parent policy assigned centrally and child policies inherited and extended by each regional team, is exactly how Azure Firewall Policy supports delegated rule management while preserving centralized baseline control. Option A results in disconnected, inconsistent policies with no shared baseline. Option C is incorrect because NSGs do not provide the hierarchical policy inheritance Firewall Policy offers. Option D fails to meet the requirement, since RBAC alone does not allow regional teams to extend rules without potentially conflicting with or overriding the central baseline.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1dd75dd0-0187-408e-8fa3-f442c5abcbe5', '84e671e9-d5ef-4922-91f5-048d5fbd7321', 'Create a hierarchical firewall policy structure, with a parent policy assigned centrally and child policies inherited and extended by each regional team', TRUE, 1),
    ('833a11d8-928b-4b01-af1c-62e7c28e49f2', '84e671e9-d5ef-4922-91f5-048d5fbd7321', 'Assign the same single firewall policy directly to every firewall instance and rely solely on RBAC to delegate control', FALSE, 2),
    ('fe547b4b-caee-4f76-b8a7-ebf1fbea8f24', '84e671e9-d5ef-4922-91f5-048d5fbd7321', 'Deploy completely separate, independent firewall policies per region with no relationship between them', FALSE, 3),
    ('d26d4858-7f04-4d1c-91c3-597c8d4520a1', '84e671e9-d5ef-4922-91f5-048d5fbd7321', 'Use network security groups instead of Firewall Policy to delegate rule management to regional teams', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7ec2b454-4af3-48c1-9eef-ee39d3db1502', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'You need to allow outbound HTTPS traffic from internal servers only to a specific set of approved external domain names, and you want to use a built-in, pre-defined tag to easily permit traffic required for Windows Update without listing every individual FQDN. Which Azure Firewall rule type should you configure?',
        '. Application rules filter outbound HTTP/S traffic by FQDN and support built-in FQDN tags such as WindowsUpdate, which is precisely the described requirement. Option A (Network rules) only filters by IP and port, not FQDN, so it cannot use FQDN tags. Option C (NAT rules) applies to inbound DNAT scenarios, not outbound FQDN filtering. Option D (Threat Intelligence rules) filters based on known malicious indicators, not approved outbound domains.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5fafd1c7-9588-4957-873f-ac2692341204', '7ec2b454-4af3-48c1-9eef-ee39d3db1502', 'Network rules, which filter traffic based only on destination IP address and port', FALSE, 1),
    ('077b4da4-f3e9-4cf9-ac46-a86973e2b60f', '7ec2b454-4af3-48c1-9eef-ee39d3db1502', 'NAT rules, which translate outbound FQDN requests to internal addresses', FALSE, 2),
    ('5cb07fde-7a56-4e58-86dd-20e56486ed1f', '7ec2b454-4af3-48c1-9eef-ee39d3db1502', 'Application rules, which filter outbound HTTP/S traffic by FQDN and support built-in FQDN tags such as WindowsUpdate', TRUE, 3),
    ('cbec1d5a-5bc7-4b6f-81cd-8fa79675b456', '7ec2b454-4af3-48c1-9eef-ee39d3db1502', 'Threat Intelligence rules, which allow traffic based on Microsoft''s threat intelligence feed', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('428ba37b-76cf-4422-99d6-abb6de9090c9', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Your security team wants Azure Firewall to automatically flag any traffic to or from IP addresses and domains known to be associated with malicious activity, using Microsoft''s threat intelligence feed, but they do not yet want any of this traffic to be blocked — only logged and alerted on. What should you configure?',
        '. Enabling Threat Intelligence-based filtering in Alert-only mode uses the Microsoft Threat Intelligence feed to flag traffic to/from known malicious IPs and domains without blocking it, matching the "alert but don''t block yet" requirement. Option B would block all outbound traffic indiscriminately, which is far broader than intended. Option C addresses volumetric/protocol attacks, not malicious IP/domain reputation. Option D is a manual, non-automated process that doesn''t leverage the built-in threat feed.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6a5d5096-9174-4075-8193-f882eddc2cc4', '428ba37b-76cf-4422-99d6-abb6de9090c9', 'Enable Threat Intelligence-based filtering in Alert-only mode, which uses the Microsoft Threat Intelligence feed to flag traffic to/from known malicious IPs and domains', TRUE, 1),
    ('bfa74adc-505f-46fb-b2e8-53564886a3f6', '428ba37b-76cf-4422-99d6-abb6de9090c9', 'Configure Azure DDoS Protection Standard in monitoring-only mode', FALSE, 2),
    ('f2f765a3-9250-4267-bd39-be3a1b4ad042', '428ba37b-76cf-4422-99d6-abb6de9090c9', 'Create a Network rule collection with a Deny action applied to all outbound traffic', FALSE, 3),
    ('41fa9c4d-fad5-4f58-bf48-c351275f8f30', '428ba37b-76cf-4422-99d6-abb6de9090c9', 'Enable diagnostic logging on the firewall and have an analyst manually review logs for malicious IP addresses each day', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('af808fbe-646f-4152-82c3-cd09862bdb83', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Your security team requires Azure Firewall to perform TLS/SSL inspection of outbound traffic, provide intrusion detection and prevention (IDPS), and enforce URL filtering with web category-based rules. Which Azure Firewall SKU tier meets these requirements?',
        'all of the capabilities required in this scenario. Option B is incorrect because the Standard tier does not include IDPS or TLS inspection. Option C is incorrect because the Basic tier is aimed at smaller/branch workloads and lacks these advanced Layer 7 inspection features. Option D refers to a tier name that does not exist for Azure Firewall.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b1eb660d-8d69-4479-aa00-76ae2c0d1e14', 'af808fbe-646f-4152-82c3-cd09862bdb83', 'Basic, designed for small and branch office workloads and which includes full Layer 7 inspection capabilities', FALSE, 1),
    ('d9c11207-40fe-4241-a418-7fafd507662e', 'af808fbe-646f-4152-82c3-cd09862bdb83', 'Standard_v2, a tier that provides only web categorization without other advanced features', FALSE, 2),
    ('734d68a7-7353-46b2-ac35-84cf15ceef21', 'af808fbe-646f-4152-82c3-cd09862bdb83', 'Premium, which adds TLS inspection, IDPS, URL filtering, and web categorization', TRUE, 3),
    ('1ce63b05-3b86-4823-bc49-bb7e4054eac5', 'af808fbe-646f-4152-82c3-cd09862bdb83', 'Standard, which includes TLS inspection but does not support IDPS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c7d58b75-48ce-4b26-82d3-8f821a51ad7d', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'You are designing an Azure Firewall deployment that must both translate and filter address information for inbound and outbound connections, and must also remain available even if an entire Azure availability zone experiences an outage. Which set of statements accurately describes how to meet these requirements?',
        'no separate NAT service is required. Option A is factually wrong, since Azure Firewall does support SNAT. Option B is factually wrong for the same reason; SNAT does not require a separate NAT Gateway. Option D is incorrect because Azure Firewall does support deployment across Availability Zones for higher resiliency.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b61fa55f-1ee3-45ec-9a01-075a3cbd05b9', 'c7d58b75-48ce-4b26-82d3-8f821a51ad7d', 'Deploy Azure Firewall across Availability Zones to achieve a higher SLA; the firewall natively provides both SNAT for outbound traffic and DNAT for inbound traffic', TRUE, 1),
    ('31f8dbcd-d214-422a-80fd-c9d2db4dfcdd', 'c7d58b75-48ce-4b26-82d3-8f821a51ad7d', 'Deploy the firewall in a single zone and rely on Azure Backup for failover, since Azure Firewall does not support SNAT', FALSE, 2),
    ('77e34a23-4c38-4d4d-bed0-54cdee11ea83', 'c7d58b75-48ce-4b26-82d3-8f821a51ad7d', 'Azure Firewall only supports DNAT for inbound connections; SNAT for outbound connections must be handled by a separate NAT Gateway resource', FALSE, 3),
    ('24c9d02e-4d21-437d-af9b-ae4e6869f796', 'c7d58b75-48ce-4b26-82d3-8f821a51ad7d', 'Availability Zone deployment is not supported for Azure Firewall; use Azure Load Balancer instead to achieve zone redundancy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2e752e1d-be3c-4c28-a03b-68b87cdf07a8', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'You are deploying a background processing application to Azure Container Apps. The application should scale down to zero running instances when there is no work to process, and should scale out automatically based on the number of messages currently sitting in an Azure Storage queue. Which underlying mechanism enables this behavior?',
        '. KEDA (Kubernetes Event-Driven Autoscaling) scale rules underpin Azure Container Apps'' autoscaling, supporting both scale-to-zero when idle and scaling out based on event sources such as the length of an Azure Storage queue. Option A describes a disconnected automation approach not native to Container Apps scaling. Option B (VM Scale Sets) is unrelated to the serverless container scaling model of Container Apps. Option C (Application Gateway autoscaling) governs the gateway itself, not the container app''s instance count.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('06d5042f-16e3-4d5c-8334-7ad80de10e94', '2e752e1d-be3c-4c28-a03b-68b87cdf07a8', 'KEDA (Kubernetes Event-Driven Autoscaling) scale rules, which support scale-to-zero and scaling based on event sources such as queue length', TRUE, 1),
    ('d206c3b3-5933-4cce-89f7-ea483e913aef', '2e752e1d-be3c-4c28-a03b-68b87cdf07a8', 'Virtual Machine Scale Sets attached to the Container Apps Environment', FALSE, 2),
    ('f67eb367-d14b-4b9c-9055-f59fd1a0a771', '2e752e1d-be3c-4c28-a03b-68b87cdf07a8', 'Azure Automation runbooks triggered by an Azure Monitor alert rule', FALSE, 3),
    ('1dcd3c09-f37c-42df-b401-f9a63192915a', '2e752e1d-be3c-4c28-a03b-68b87cdf07a8', 'Azure Application Gateway autoscaling rules configured on the ingress controller', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fffaa49b-fdc9-4fa3-ad6e-9a8dd8d00c43', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'You are preparing to release a new version of a container app and want to gradually shift a small percentage of live production traffic to the new version for canary testing, while the majority of traffic continues to go to the current stable version, before eventually cutting over completely. How should you configure this in Azure Container Apps?',
        '. Enabling multiple revision mode on the Container App and configuring traffic-splitting percentages between the existing and new revisions is exactly how canary/blue-green style rollouts are achieved in Azure Container Apps. Option B introduces unnecessary complexity and infrastructure not needed for this native capability. Option C is incorrect because single revision mode only ever routes traffic to the single latest active revision, with no splitting. Option D is incorrect, since Container Apps revisions natively support traffic splitting, unlike a comparison to App Service deployment slots.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('58aab9e1-f73d-4032-90cb-c7e8a140ca74', 'fffaa49b-fdc9-4fa3-ad6e-9a8dd8d00c43', 'Revisions cannot be used to split traffic in Container Apps; you must instead configure deployment slots as you would in Azure App Service', FALSE, 1),
    ('a5081394-5c08-4814-8ac7-492ae0d06efe', 'fffaa49b-fdc9-4fa3-ad6e-9a8dd8d00c43', 'Deploy a second, entirely separate Container Apps Environment and use Azure Front Door to split traffic between the two environments', FALSE, 2),
    ('3055ce56-a87d-4f2e-8806-706a4e0fee12', 'fffaa49b-fdc9-4fa3-ad6e-9a8dd8d00c43', 'Use single revision mode, which automatically manages canary rollout percentages for you', FALSE, 3),
    ('53d2342a-25f5-4267-81a9-1d63c83f52ca', 'fffaa49b-fdc9-4fa3-ad6e-9a8dd8d00c43', 'Enable multiple revision mode on the Container App and configure traffic-splitting percentages between the existing and new revisions', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7a100c1f-208d-4fda-b3f9-ec480cd7f857', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'You are deploying a backend microservice in Azure Container Apps that must only be reachable by other container apps within the same virtual network. It must never be directly accessible from the public internet. How should you configure the app''s ingress?',
        '. Configuring the Container App''s ingress as internal restricts access to within the Container Apps Environment''s virtual network, exactly meeting the requirement to keep the service unreachable from the public internet. Option A still exposes a public endpoint, which the requirement explicitly forbids. Option B is incorrect because ingress can be disabled or scoped, and default behavior does not force a public endpoint that can''t be restricted. Option C still uses external ingress, which remains internet-facing regardless of DNS configuration.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bdf41e35-475e-43dc-8878-3c1bf61780c8', '7a100c1f-208d-4fda-b3f9-ec480cd7f857', 'Configure external ingress and restrict public access using a network security group applied to the Container Apps Environment''s subnet', FALSE, 1),
    ('a71dc5fb-a2e6-447c-bdd6-45948a70469b', '7a100c1f-208d-4fda-b3f9-ec480cd7f857', 'Configure the Container App''s ingress as internal, which restricts access to within the Container Apps Environment''s virtual network', TRUE, 2),
    ('0ed21662-649d-4e52-bf84-bcfbbdb5ae51', '7a100c1f-208d-4fda-b3f9-ec480cd7f857', 'Configure external ingress with a custom domain, and rely on internal DNS resolution to prevent public access', FALSE, 3),
    ('9a4b1e60-a590-4e99-82d9-55b6b16d6d1f', '7a100c1f-208d-4fda-b3f9-ec480cd7f857', 'Disable ingress entirely, since Container Apps always exposes a public endpoint by default and cannot be restricted', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9de2cf5c-2a59-488c-ba2b-e3a383171b37', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'Several microservices deployed as Container Apps need to perform service-to-service invocation, publish/subscribe messaging, and shared state management, but the development team wants to avoid embedding this cross-cutting logic directly into each application''s codebase. What Azure Container Apps feature should they enable?',
        '. Enabling the Dapr sidecar on the Container Apps provides standardized building blocks for service-to-service invocation, publish/subscribe messaging, and state management, without requiring this logic to be embedded in each application''s code. Option A requires embedding logic directly into each app''s codebase, which is what the team wants to avoid. Option C addresses only messaging, not state management or service invocation, and still requires manual SDK integration into each app. Option D misapplies Envoy, which handles proxying/traffic management, not application-level building blocks like state and pub/sub.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('415cfea1-2950-4bdd-b0dc-891e1de5e7ca', '9de2cf5c-2a59-488c-ba2b-e3a383171b37', 'Enable the Dapr sidecar on the Container Apps, which provides building blocks for service-to-service invocation, publish/subscribe messaging, and state management', TRUE, 1),
    ('d1dbaf45-fadb-48c6-b211-b3f94f966a94', '9de2cf5c-2a59-488c-ba2b-e3a383171b37', 'Deploy Azure Service Bus Premium and manually integrate its SDK into every microservice''s codebase', FALSE, 2),
    ('85818c9f-11ff-4b72-8f99-0aebdb3b96c0', '9de2cf5c-2a59-488c-ba2b-e3a383171b37', 'Implement a shared internal library that every microservice imports to handle these concerns in-process', FALSE, 3),
    ('e82fb268-53e3-479b-aa97-484a1448074c', '9de2cf5c-2a59-488c-ba2b-e3a383171b37', 'Configure custom Envoy proxy configuration files to define bespoke messaging and state logic', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('542f6d41-c87f-44e1-9314-36e9ecf2bbb6', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'You are deploying multiple related Container Apps that must share the same virtual network and the same Log Analytics workspace for centralized logging, and that need to be able to communicate directly with one another. How should you deploy these apps?',
        '. Deploying all the Container Apps into the same Container Apps Environment is required, since the environment forms a secure boundary that shares the same virtual network and Log Analytics workspace, and apps within it can communicate directly. Option A unnecessarily complicates the architecture with environment peering, which isn''t how Container Apps environments interconnect. Option B does not achieve the shared VNet/workspace and direct communication requirement. Option C is factually incorrect, since a Container Apps Environment is explicitly designed to share one Log Analytics workspace across its apps.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0e58ffcf-64f7-46ac-acde-c45d63f82808', '542f6d41-c87f-44e1-9314-36e9ecf2bbb6', 'Deploy each app into a separate Container Apps Environment and configure peering between the environments', FALSE, 1),
    ('fe829c64-ac25-4e50-9cf5-e31285f5a3f1', '542f6d41-c87f-44e1-9314-36e9ecf2bbb6', 'Deploy all of the Container Apps into the same Container Apps Environment, which forms a secure boundary sharing the same virtual network and Log Analytics workspace', TRUE, 2),
    ('ce547825-6e85-4538-ae23-2872bb3a8b4e', '542f6d41-c87f-44e1-9314-36e9ecf2bbb6', 'Deploy each app into a separate resource group and connect them using Azure Private Link', FALSE, 3),
    ('5ce98576-78b8-45e2-a3fd-5a413a92974f', '542f6d41-c87f-44e1-9314-36e9ecf2bbb6', 'This is not possible; each Container App requires its own dedicated Log Analytics workspace', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6264e801-7284-4627-a761-b9bcda44e5ba', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A development team wants to run containerized microservices on a fully managed, serverless platform that abstracts away the underlying Kubernetes orchestration entirely — they do not want to interact with the Kubernetes API at all — while still getting built-in HTTP-based autoscaling, revision management, and ingress traffic splitting that a simpler single-container hosting option does not provide. Which service should they choose?',
        'capabilities that Azure Container Instances (ACI) does not offer. Option B is incorrect because AKS is not the only service offering traffic splitting, and it does expose the Kubernetes API, which the team wants to avoid. Option C is factually wrong, since ACI does not provide revisions or Dapr integration. Option D is incorrect because standard Azure App Service for containers does not natively provide Dapr sidecars or KEDA-based event scale rules in the way Container Apps does.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7225adab-39e9-40be-bcbf-056d41c3d40e', '6264e801-7284-4627-a761-b9bcda44e5ba', 'Azure Kubernetes Service (AKS), which is the only Azure service that offers ingress traffic splitting', FALSE, 1),
    ('9b8d56f0-b26a-4622-b28e-f1b4eab2352c', '6264e801-7284-4627-a761-b9bcda44e5ba', 'Azure Container Apps, which abstracts away the underlying Kubernetes API while still providing autoscaling, revisions, and ingress traffic splitting not available in Azure Container Instances', TRUE, 2),
    ('a53d0b6b-ce90-4243-81b3-f575029d511b', '6264e801-7284-4627-a761-b9bcda44e5ba', 'Azure App Service with a custom container, since it natively supports Dapr sidecars and KEDA-based scale rules', FALSE, 3),
    ('711f9e03-e8d0-4463-8349-cbb8bff35c0e', '6264e801-7284-4627-a761-b9bcda44e5ba', 'Azure Container Instances (ACI), which includes built-in revision management and Dapr integration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f4e03147-ec61-4cf5-b348-00fd1cc3973c', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'An administrator wants to guarantee that a critical production storage account can never be accidentally deleted by anyone, including members of the operations team who hold the Owner role on the subscription, while still allowing that team to freely update the account''s configuration and regenerate its access keys as needed. Which control should the administrator apply?',
        'even to users assigned the Owner role — which satisfies both requirements in the scenario. Option A (ReadOnly) is too restrictive, as it would also block the modify operations the operations team needs to perform. Option B and D rely on RBAC permission changes, but resource locks are the mechanism specifically designed to override even Owner-level delete permissions, and modifying RBAC would not be as reliable or centrally enforced.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f33a0f9f-e529-4516-a46e-5b2330d737a7', 'f4e03147-ec61-4cf5-b348-00fd1cc3973c', 'Assign a custom RBAC role to the operations team that excludes the `Microsoft.Storage/storageAccounts/delete` permission', FALSE, 1),
    ('a9960b28-baec-4fae-b9f0-88c41ae2c81c', 'f4e03147-ec61-4cf5-b348-00fd1cc3973c', 'Remove the Delete permission from the built-in Owner role assignment scoped to that specific storage account', FALSE, 2),
    ('23e35901-43fe-4388-bc94-485676ca5981', 'f4e03147-ec61-4cf5-b348-00fd1cc3973c', 'Apply a ReadOnly lock, which blocks both delete and modify operations on the resource', FALSE, 3),
    ('8327ca1c-566b-49b3-b5bf-cba9bae8e797', 'f4e03147-ec61-4cf5-b348-00fd1cc3973c', 'Apply a CanNotDelete lock, which allows read and modify operations but blocks deletion — and this restriction applies regardless of RBAC permissions, even for users with the Owner role', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b0778cae-94d9-414b-a0f2-59f83e7d3a99', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'The finance team wants to commit to a 3-year usage term for a set of production virtual machines in order to reduce compute costs by up to roughly 72% compared to pay-as-you-go pricing. They also want this discount to automatically apply across several subscriptions that belong to the same billing account, rather than being locked to a single subscription. What should they do?',
        '. Purchasing a 3-year Reserved Instance and setting its reservation scope to shared across the subscriptions within the billing context directly satisfies both the term commitment and the cross-subscription discount sharing requirement. Option A is incorrect because Azure Hybrid Benefit addresses licensing reuse, not capacity commitment discounts, and does not work this way. Option C (Spot VMs) is unsuitable for guaranteed production capacity and is unrelated to reservations. Option D (Blueprints) is a governance packaging tool, not a cost/pricing mechanism.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0f15081b-51d9-417d-9f95-6564b90b3e39', 'b0778cae-94d9-414b-a0f2-59f83e7d3a99', 'Enable Azure Spot Virtual Machines for the production workloads to obtain the required discount', FALSE, 1),
    ('37e457a8-0ad3-4baa-b58f-c7b5060d9c95', 'b0778cae-94d9-414b-a0f2-59f83e7d3a99', 'Apply Azure Hybrid Benefit to the VMs, which automatically reduces compute cost across all subscriptions in a billing account', FALSE, 2),
    ('41c8bc3c-d095-4c96-8923-7cb8d1f250ac', 'b0778cae-94d9-414b-a0f2-59f83e7d3a99', 'Purchase a 3-year Reserved Instance for the VM family and region, and set the reservation''s scope to shared across the subscriptions within the billing context', TRUE, 3),
    ('82d28a93-3f4b-46e3-a979-e262c504d45e', 'b0778cae-94d9-414b-a0f2-59f83e7d3a99', 'Create an Azure Blueprint that enforces the use of a discounted VM SKU across all subscriptions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7ba02488-ec8f-4d44-8a90-77f973ea1df6', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A company already owns Windows Server and SQL Server licenses covered by active Software Assurance and wants to reduce the licensing and compute cost of running those same workloads on Azure virtual machines. This benefit should be independent of any capacity or term commitment. Which Azure cost optimization feature should they use?',
        '. Azure Hybrid Benefit lets the company reuse its existing Windows Server and SQL Server licenses covered by Software Assurance to reduce the cost of running those workloads in Azure, independent of any capacity reservation. Option A is incorrect because Reserved Instances address capacity/pricing commitments, not license reuse, and the two are separate mechanisms (though they can be combined). Option B (Blueprints) is a governance and deployment packaging tool with no relation to licensing cost reduction. Option C (Resource Locks) is unrelated to cost or licensing entirely.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0c66f710-6c39-4776-b4c3-402bc61c7fb6', '7ba02488-ec8f-4d44-8a90-77f973ea1df6', 'Reserved Instances, which automatically include rights to reuse on-premises licenses at no additional configuration', FALSE, 1),
    ('7d069971-c032-4916-9e49-9ffe07670552', '7ba02488-ec8f-4d44-8a90-77f973ea1df6', 'Resource Locks, which prevent unexpected licensing overage charges from being incurred', FALSE, 2),
    ('0e2813e2-0ab3-4cfa-8e5d-41acb44c7a7e', '7ba02488-ec8f-4d44-8a90-77f973ea1df6', 'Azure Hybrid Benefit, which lets the company reuse its existing Windows Server and SQL Server licenses covered by Software Assurance to reduce the cost of running those workloads in Azure', TRUE, 3),
    ('09550e9e-a95d-481c-8d9c-8e7a2009712b', '7ba02488-ec8f-4d44-8a90-77f973ea1df6', 'Azure Blueprints, which can package existing license entitlements into a deployable, versioned artifact', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('84eaec05-b6fc-4d6c-8c62-6ed3df37b50b', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A governance team needs a way to bootstrap new subscriptions consistently by packaging a standard set of resource groups, ARM templates, Azure Policy/initiative assignments, and RBAC role assignments into a single, versioned, trackable artifact that can be repeatedly assigned to subscriptions to enforce a compliant, standardized starting environment. Which Azure service is designed for this purpose?',
        'exactly matching the requirement. Option A is incorrect because Azure Policy alone does not package ARM templates or RBAC assignments. Option C is incorrect because deployment stacks do not provide the policy and RBAC packaging that Blueprints offers. Option D (Cost Management budgets) has no relation to environment bootstrapping or compliance packaging.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ce9caf90-9cf6-494d-bc40-6e252d7d89de', '84eaec05-b6fc-4d6c-8c62-6ed3df37b50b', 'Azure Policy alone, since it can already package templates and role assignments without any additional service', FALSE, 1),
    ('2f0c92f4-1ed5-4597-b95a-bc5e05c1bec3', '84eaec05-b6fc-4d6c-8c62-6ed3df37b50b', 'Azure Cost Management budgets, which can be configured to enforce environment compliance requirements', FALSE, 2),
    ('9f64f496-7aad-42a7-ae21-7f2f69b0eee2', '84eaec05-b6fc-4d6c-8c62-6ed3df37b50b', 'Azure Resource Manager deployment stacks, which do not support packaging policy or RBAC assignments', FALSE, 3),
    ('ad89b557-696a-4f97-b76a-e7e0fb8d2a6a', '84eaec05-b6fc-4d6c-8c62-6ed3df37b50b', 'Azure Blueprints, which packages resource groups, ARM templates, policy/initiative assignments, and RBAC role assignments into a single versioned, trackable artifact', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0ee00088-1e59-4162-ae98-219aefef6a4b', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A company runs production workloads on Windows Server virtual machines. It already owns eligible on-premises Windows Server licenses covered by Software Assurance, and it is also willing to commit to running these VMs continuously for three years. The company wants to minimize its Azure costs as much as possible. What should it do?',
        'one addresses licensing cost, the other addresses compute capacity pricing. Option B is factually incorrect, as the two benefits are explicitly designed to be combinable. Option C is factually incorrect for the same reason, and unnecessarily forfeits the licensing savings the company is entitled to. Option D is incorrect because resource locks are a governance control with no relationship to cost discounts.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3045e20a-e0d7-4890-a5d6-ade107074095', '0ee00088-1e59-4162-ae98-219aefef6a4b', 'Choose only a Reserved Instance, since Azure Hybrid Benefit does not apply to any VM covered by a reservation', FALSE, 1),
    ('36bc60b0-c214-4e6b-be87-4eba4c345d58', '0ee00088-1e59-4162-ae98-219aefef6a4b', 'Apply a CanNotDelete resource lock to the VMs, which provides an additional discount for long-term commitments', FALSE, 2),
    ('25070c2b-82ed-4f45-ac57-e31126785860', '0ee00088-1e59-4162-ae98-219aefef6a4b', 'Combine Azure Hybrid Benefit (to reuse the existing Windows Server licenses) with a 3-year Reserved Instance (for the compute capacity commitment), since the two savings mechanisms can be applied together', TRUE, 3),
    ('65cafe35-e6f2-4051-b6f8-fa5cb795aed5', '0ee00088-1e59-4162-ae98-219aefef6a4b', 'Choose only Azure Hybrid Benefit, since it cannot be combined with a Reserved Instance under any circumstances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7a39512a-ed88-43e6-880c-750217179ad8', '8010cd82-b6c1-45b6-afdd-c52dfdb1995c', 'SINGLE_CHOICE', 'A FinOps team wants to be notified proactively whenever monthly Azure spending approaches a defined threshold, and they also want automated, ongoing recommendations that help identify underutilized virtual machines that could be resized or shut down to save money. What should they configure?',
        'directly satisfying both stated requirements. Option B (ReadOnly locks) would block legitimate operations and does not provide alerting or utilization recommendations. Option C (blanket Reserved Instances) ignores utilization data entirely and could waste money on underused resources. Option D (Blueprints) is a governance packaging tool, not a cost monitoring or optimization mechanism, and automatically deleting VMs is not a supported or safe practice.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4bfb6dc1-2a65-4ac7-8f4d-dcc54a640b5e', '7a39512a-ed88-43e6-880c-750217179ad8', 'Purchase Reserved Instances for all virtual machines regardless of their utilization, to guarantee the lowest possible cost', FALSE, 1),
    ('0e355c7a-7b19-4924-bf36-cca8f8b8ddf4', '7a39512a-ed88-43e6-880c-750217179ad8', 'Create an Azure Blueprint that automatically deletes any virtual machine identified as underutilized', FALSE, 2),
    ('0dd0dd3f-8435-494b-b1ce-6bf93d7c4ca3', '7a39512a-ed88-43e6-880c-750217179ad8', 'Configure a budget with cost alerts in Azure Cost Management, and regularly review Azure Advisor''s cost recommendations to identify underutilized resources', TRUE, 3),
    ('3688b20c-2087-4a73-91db-a2011e9b8adf', '7a39512a-ed88-43e6-880c-750217179ad8', 'Apply a ReadOnly resource lock to all virtual machines to prevent any further spending from occurring', FALSE, 4);
