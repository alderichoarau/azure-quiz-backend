-- Module 6 - Governance, Compliance, Resource Management & Monitoring (real AZ-900 content)
-- Standard questions + explanations sourced from AZ900_ANSWER_KEY_Formateur.docx
-- Scenario questions sourced from Module_06_Scenarios_AZ900.docx; that document has no
-- written answer key (trainer corrects live), so their correct answers/explanations were
-- determined from AZ-900 fundamentals rather than copied from an official source - please
-- give them a quick review.

INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('9c80a03f-def5-4578-bb87-1bde3f271c1d', '00000000-0000-0000-0000-000000000001', 'module-06-governance-compliance-monitoring', 'Module 6 - Governance, Compliance, Resource Management & Monitoring',
        'Azure Policy, Blueprints, Resource Locks, Purview, ARM Templates, Azure Arc, Monitor, Advisor.', 6);

-- Standard MCQ / True-False questions
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c9f244b1-e914-491d-8f48-50a2d88ba176', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is Azure Policy?',
        'Azure Policy helps enforce organizational standards by evaluating resources against defined policies and flagging or remediating non-compliant resources.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('818b1be0-884d-460a-a79e-8d3e7944a2c0', 'c9f244b1-e914-491d-8f48-50a2d88ba176', 'A pricing plan for Azure', FALSE, 1),
    ('dc51d1d1-041c-416d-b2c3-bbf04c34cb28', 'c9f244b1-e914-491d-8f48-50a2d88ba176', 'A service to create, assign, and manage rules that enforce compliance standards on Azure resources', TRUE, 2),
    ('c7324a8f-b53c-4f60-b866-e2df917a64a7', 'c9f244b1-e914-491d-8f48-50a2d88ba176', 'A VPN configuration service', FALSE, 3),
    ('a20555c0-5667-41e4-82b7-5012001f5330', 'c9f244b1-e914-491d-8f48-50a2d88ba176', 'A monitoring dashboard', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fb27ab17-f34d-425a-b0c2-a0ef7c3ec4c5', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is a Policy Initiative (also called a Policy Set Definition) in Azure?',
        'An initiative (policy set) groups multiple policy definitions together so that you can track compliance toward a broader goal (e.g., ISO 27001).', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a22bea4e-3314-4426-a3b7-c838a77d79fe', 'fb27ab17-f34d-425a-b0c2-a0ef7c3ec4c5', 'A single Azure Policy rule', FALSE, 1),
    ('4918600b-8ad4-4477-80c4-0a8407e2b23c', 'fb27ab17-f34d-425a-b0c2-a0ef7c3ec4c5', 'A group of Azure Policy definitions bundled together to achieve a larger compliance goal', TRUE, 2),
    ('ace41104-c82b-48b0-9294-1c16302bc4eb', 'fb27ab17-f34d-425a-b0c2-a0ef7c3ec4c5', 'A budget limit policy', FALSE, 3),
    ('6577c8bb-6277-442e-9bae-d4caaae2e300', 'fb27ab17-f34d-425a-b0c2-a0ef7c3ec4c5', 'A network firewall rule set', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2ad169d-2431-486a-b8e4-61005b927132', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is the purpose of Azure Resource Locks?',
        'Resource Locks prevent accidental changes or deletion. CanNotDelete allows modifications but prevents deletion. ReadOnly prevents all modifications and deletions.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b8914d81-c58b-43a7-b9dd-bd4c061c37da', 'b2ad169d-2431-486a-b8e4-61005b927132', 'To encrypt Azure resources', FALSE, 1),
    ('f427ea16-7457-488e-8468-df0b8abfeed4', 'b2ad169d-2431-486a-b8e4-61005b927132', 'To prevent accidental deletion or modification of Azure resources', TRUE, 2),
    ('178ec840-eb00-4205-93ee-db0d3fc93bc3', 'b2ad169d-2431-486a-b8e4-61005b927132', 'To restrict network access to resources', FALSE, 3),
    ('681a9723-e147-4f67-8486-487d1e35d13c', 'b2ad169d-2431-486a-b8e4-61005b927132', 'To enforce tagging policies', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c3c271ab-09c0-4f05-a79b-149b485f004b', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'Which of the following Resource Lock types prevents deletion but allows modifications?',
        'CanNotDelete lock allows authorized users to read and modify a resource, but they cannot delete it.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('41b697f4-2a0d-4fa5-bc8e-2a0b4a7512a0', 'c3c271ab-09c0-4f05-a79b-149b485f004b', 'ReadOnly', FALSE, 1),
    ('27df064d-49b5-4a0c-bd21-efbf11f209ab', 'c3c271ab-09c0-4f05-a79b-149b485f004b', 'CanNotDelete', TRUE, 2),
    ('8c74c7c5-6c03-4b9e-8265-33b6b0c3447f', 'c3c271ab-09c0-4f05-a79b-149b485f004b', 'DeleteOnly', FALSE, 3),
    ('3330651f-9d45-496a-b414-94f1fc541a50', 'c3c271ab-09c0-4f05-a79b-149b485f004b', 'NoModify', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('162963aa-a04c-4e4b-8c2c-7605851b45ee', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'Which Resource Lock type prevents both modification and deletion of a resource?',
        'ReadOnly lock prevents all modifications and deletions, making the resource equivalent to a read-only state for all users.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a312cc08-151c-4023-a2be-2dfe6eeddd29', '162963aa-a04c-4e4b-8c2c-7605851b45ee', 'CanNotDelete', FALSE, 1),
    ('8d880c55-73fa-4ffd-b329-cfaaf15cef9e', '162963aa-a04c-4e4b-8c2c-7605851b45ee', 'ReadOnly', TRUE, 2),
    ('1ca754e5-778e-4ff0-86cb-1fdb45c3be82', '162963aa-a04c-4e4b-8c2c-7605851b45ee', 'NoAccess', FALSE, 3),
    ('584b94c7-9a4a-4837-8343-d6d4830bc990', '162963aa-a04c-4e4b-8c2c-7605851b45ee', 'WriteProtect', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7043278e-5681-4f1a-b731-50a7c9e5d96e', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is Microsoft Purview?',
        'Microsoft Purview is a unified data governance service that helps you manage and govern data across on-premises, multicloud, and SaaS environments.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4237912c-48fe-45c9-bb9e-c6701ade7022', '7043278e-5681-4f1a-b731-50a7c9e5d96e', 'A compute service for running VMs', FALSE, 1),
    ('838e33cc-6f5e-46a7-bbd5-9aa56c417cba', '7043278e-5681-4f1a-b731-50a7c9e5d96e', 'A unified data governance solution to manage and govern on-premises, multi-cloud, and SaaS data', TRUE, 2),
    ('97d08b3e-e16b-46ce-b3f8-6a05efe3b6f1', '7043278e-5681-4f1a-b731-50a7c9e5d96e', 'A network monitoring tool', FALSE, 3),
    ('4ffb6e5c-c174-49dd-b854-405c6cfd8bcb', '7043278e-5681-4f1a-b731-50a7c9e5d96e', 'A cost management dashboard', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9c4e1883-6573-49b1-b999-138ed728c12d', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is the Service Trust Portal?',
        'The Service Trust Portal hosts Microsoft''s security, privacy, and compliance documentation including audit reports, trust documents, and certifications.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d461b8e2-4989-4a43-8f67-e5b63d729594', '9c4e1883-6573-49b1-b999-138ed728c12d', 'An Azure management portal', FALSE, 1),
    ('95fdb8fb-1e2c-435b-9c6b-7ed0af66888e', '9c4e1883-6573-49b1-b999-138ed728c12d', 'A portal providing access to Microsoft''s compliance documentation, audit reports, and trust documents', TRUE, 2),
    ('5751d9c7-3223-4d8e-b9af-4a4db3361fe0', '9c4e1883-6573-49b1-b999-138ed728c12d', 'A billing management site', FALSE, 3),
    ('aacfcf97-217b-47d9-9886-9a858bc2bdfe', '9c4e1883-6573-49b1-b999-138ed728c12d', 'A developer documentation site', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8975cefa-8bfa-4761-917a-55ad6ab05760', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is an Azure ARM Template?',
        'ARM (Azure Resource Manager) templates are JSON files that define what Azure resources to deploy, enabling infrastructure as code (IaC).', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8b86309b-2444-40a3-bfe4-2018007ad216', '8975cefa-8bfa-4761-917a-55ad6ab05760', 'A virtual machine image', FALSE, 1),
    ('fb746783-47f3-4dd4-bc50-c65765420a27', '8975cefa-8bfa-4761-917a-55ad6ab05760', 'A JSON file that defines the infrastructure and configuration for Azure resources as code', TRUE, 2),
    ('abe23f12-5ebd-47f9-8032-824ed74a394e', '8975cefa-8bfa-4761-917a-55ad6ab05760', 'A network topology diagram', FALSE, 3),
    ('1fa2a0f5-564e-4954-bbad-0564680a0261', '8975cefa-8bfa-4761-917a-55ad6ab05760', 'A billing template', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c3e33748-55f9-4c90-a928-6d57bbf673cc', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is the benefit of using Azure ARM Templates for deployment?',
        'ARM templates enable idempotent, automated, and consistent infrastructure deployment — deploying the same template multiple times gives the same result.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('23dfda31-177a-42d5-ab97-ac0467f0bee0', 'c3e33748-55f9-4c90-a928-6d57bbf673cc', 'They eliminate all costs', FALSE, 1),
    ('59a948f7-4add-47c2-a4b5-6372b172598a', 'c3e33748-55f9-4c90-a928-6d57bbf673cc', 'They enable repeatable, consistent, and automated deployment of Azure infrastructure', TRUE, 2),
    ('fb4df363-d82d-4cd2-a1e1-40d5c5c89531', 'c3e33748-55f9-4c90-a928-6d57bbf673cc', 'They require no Azure account', FALSE, 3),
    ('f3e644be-05b9-4300-b2f3-cfcec2139de8', 'c3e33748-55f9-4c90-a928-6d57bbf673cc', 'They work only for VMs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ef9fc5e0-03a0-465c-90b3-2793ea474dcc', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is Azure Arc?',
        'Azure Arc allows you to manage servers, Kubernetes clusters, and data services outside Azure (on-premises or other clouds) using Azure tools and policies.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1ae190bb-034b-4aa0-a795-20819055fc2a', 'ef9fc5e0-03a0-465c-90b3-2793ea474dcc', 'A virtual private network tool', FALSE, 1),
    ('5a2ca5e5-9906-413a-bf0f-ca5e9837f9b0', 'ef9fc5e0-03a0-465c-90b3-2793ea474dcc', 'A service that extends Azure management and governance to non-Azure environments, including on-premises and other clouds', TRUE, 2),
    ('6c5e54d0-9131-49ca-ac7d-5fa7f1407f17', 'ef9fc5e0-03a0-465c-90b3-2793ea474dcc', 'A storage service', FALSE, 3),
    ('4aa2ac78-420c-4117-8aec-9471d5838018', 'ef9fc5e0-03a0-465c-90b3-2793ea474dcc', 'A content delivery service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1af951d8-deac-4ad8-9d78-f5e0f4c1d0f1', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is Azure Monitor?',
        'Azure Monitor collects metrics and logs from Azure resources, allowing you to analyze performance, set alerts, and create dashboards.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f2784b77-1c23-49d5-8d83-28728274fc89', '1af951d8-deac-4ad8-9d78-f5e0f4c1d0f1', 'A billing dashboard', FALSE, 1),
    ('ad8db722-f262-4726-9045-207361f125f9', '1af951d8-deac-4ad8-9d78-f5e0f4c1d0f1', 'A platform for collecting, analyzing, and acting on telemetry from Azure and on-premises environments', TRUE, 2),
    ('197a98fa-6e18-4d65-912e-e6624200ac81', '1af951d8-deac-4ad8-9d78-f5e0f4c1d0f1', 'A network security tool', FALSE, 3),
    ('db5f82fe-31f2-4b69-92d8-bfa0733f96b6', '1af951d8-deac-4ad8-9d78-f5e0f4c1d0f1', 'A virtual machine management tool', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2039181e-3c2e-473c-af3b-ef5788a17764', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is Azure Advisor?',
        'Azure Advisor reviews your Azure configuration and gives actionable recommendations across Cost, Security, Reliability, Operational Excellence, and Performance.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('41662f0f-f327-4c67-916d-0d1d1d828fca', '2039181e-3c2e-473c-af3b-ef5788a17764', 'A chatbot for Azure support', FALSE, 1),
    ('87b325d0-339c-4b3b-b250-67702767d397', '2039181e-3c2e-473c-af3b-ef5788a17764', 'A personalized cloud consultant that analyzes Azure usage and provides recommendations for cost, security, reliability, and performance', TRUE, 2),
    ('a2cf2efc-f521-4696-941e-b6017743fefb', '2039181e-3c2e-473c-af3b-ef5788a17764', 'A code review tool', FALSE, 3),
    ('3c321d7f-8cd9-4de2-b1e5-38b105abad29', '2039181e-3c2e-473c-af3b-ef5788a17764', 'A network routing tool', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e189b779-5c02-4482-a25c-2dcb003df7fc', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is Azure Service Health?',
        'Azure Service Health shows the status of Azure services in your regions, reports incidents, planned maintenance, and allows setting up alerts.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('27b3a6dd-204b-452b-b881-e4380305651d', 'e189b779-5c02-4482-a25c-2dcb003df7fc', 'A VM health check tool', FALSE, 1),
    ('d08d0992-f3b5-450a-898c-550790d75251', 'e189b779-5c02-4482-a25c-2dcb003df7fc', 'A dashboard showing the health of Azure services in your regions, planned maintenance, and personalized alerts', TRUE, 2),
    ('630fa5ab-b526-49cb-89b9-7f74664fe506', 'e189b779-5c02-4482-a25c-2dcb003df7fc', 'A network connectivity tester', FALSE, 3),
    ('b007b655-c715-4bea-8adb-e67a98ca4aee', 'e189b779-5c02-4482-a25c-2dcb003df7fc', 'A cost optimization tool', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aa5b80fd-367b-401b-9362-64f97054267e', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is the Azure Portal?',
        'The Azure Portal is a web-based console at portal.azure.com that provides a graphical interface to manage and monitor Azure resources.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f27851a8-f3a1-4f78-95bf-c7dae964569d', 'aa5b80fd-367b-401b-9362-64f97054267e', 'A command-line tool for managing Azure', FALSE, 1),
    ('dcd7a665-b5e5-41bf-8c5c-e21a74281b6a', 'aa5b80fd-367b-401b-9362-64f97054267e', 'A web-based graphical interface for managing Azure services', TRUE, 2),
    ('2b15b525-b1f7-4971-8606-c5eceb418c9a', 'aa5b80fd-367b-401b-9362-64f97054267e', 'A REST API for Azure', FALSE, 3),
    ('d4851c27-999f-422f-90ac-395054860561', 'aa5b80fd-367b-401b-9362-64f97054267e', 'A mobile app only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a46c2679-6937-4fcc-b648-117b587f499d', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is Azure Cloud Shell?',
        'Azure Cloud Shell is an interactive, authenticated shell accessible from the Azure Portal that supports both Bash (Azure CLI) and PowerShell.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7054111e-536c-4016-8c42-35e9890f4594', 'a46c2679-6937-4fcc-b648-117b587f499d', 'A type of Azure virtual machine', FALSE, 1),
    ('eb0da4d9-36bc-4099-aac3-c6c234895037', 'a46c2679-6937-4fcc-b648-117b587f499d', 'A browser-based command-line tool integrated into the Azure Portal that supports both Bash and PowerShell', TRUE, 2),
    ('6e2b9b65-acf9-4280-85a4-a328fab127a2', 'a46c2679-6937-4fcc-b648-117b587f499d', 'A storage service', FALSE, 3),
    ('b3ec79ba-a7f2-469b-8e06-30a332d24383', 'a46c2679-6937-4fcc-b648-117b587f499d', 'A monitoring service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('31dfc424-defe-49fc-ad2f-1bf3f19bba3e', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is the Azure CLI?',
        'Azure CLI is a set of commands used to create and manage Azure resources via terminal, supporting Windows, Linux, and macOS.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2fc0d9ce-b846-4225-84b3-3a900f770504', '31dfc424-defe-49fc-ad2f-1bf3f19bba3e', 'A graphical Azure management tool', FALSE, 1),
    ('eb32c181-37e9-40fa-8b2d-a0bf730a37f4', '31dfc424-defe-49fc-ad2f-1bf3f19bba3e', 'A cross-platform command-line program to manage Azure resources using commands in Bash/terminal', TRUE, 2),
    ('67742a05-65f4-4a91-98e1-bd7cb9521705', '31dfc424-defe-49fc-ad2f-1bf3f19bba3e', 'A REST API', FALSE, 3),
    ('5af95f2d-bf7f-415f-bb3b-9169a4f499f7', '31dfc424-defe-49fc-ad2f-1bf3f19bba3e', 'A mobile app', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d6592040-7b75-46e1-96d4-55fad6631cf1', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What does tagging Azure resources provide?',
        'Tags are name/value pairs attached to Azure resources that help organize them by environment, department, project, or cost center.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('62644d56-b6fc-43e1-aebc-7ddee8767512', 'd6592040-7b75-46e1-96d4-55fad6631cf1', 'Encryption of resources', FALSE, 1),
    ('ad0e798d-5100-4bcc-a9ea-cc8899834c22', 'd6592040-7b75-46e1-96d4-55fad6631cf1', 'Metadata labels applied to resources for organization, cost tracking, and automation', TRUE, 2),
    ('cd40ef86-594c-462c-ae9d-7bd8f9f7f4fb', 'd6592040-7b75-46e1-96d4-55fad6631cf1', 'Network isolation', FALSE, 3),
    ('85afe2bd-509f-4c1a-ba85-e2ad429ad392', 'd6592040-7b75-46e1-96d4-55fad6631cf1', 'Redundancy configuration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6d660dd3-a925-4e72-bb23-197f26797d27', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'Which Azure governance feature allows you to define repeatable sets of Azure policies, RBAC, and resource templates that can be assigned to new subscriptions?',
        'Azure Blueprints package together policies, RBAC, resource groups, and ARM templates to enforce governance standards on new subscriptions at scale.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e0e85792-a7f3-466a-bb0c-f27fe3916ca6', '6d660dd3-a925-4e72-bb23-197f26797d27', 'Azure Policy', FALSE, 1),
    ('0e9dc69f-6e4a-4579-bc0d-dcefefd40362', '6d660dd3-a925-4e72-bb23-197f26797d27', 'Azure Resource Locks', FALSE, 2),
    ('b614f0a1-cb10-42bd-9fae-6c1ec197077a', '6d660dd3-a925-4e72-bb23-197f26797d27', 'Azure Blueprints', TRUE, 3),
    ('635dcc1f-7148-4b80-aa6d-7ba7ba92d735', '6d660dd3-a925-4e72-bb23-197f26797d27', 'Azure ARM Templates', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f81a872a-074d-4f09-997a-0f8e9fdcc11a', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'What is the purpose of Azure Log Analytics?',
        'Azure Log Analytics is a workspace-based service where you query log data collected by Azure Monitor using Kusto Query Language (KQL).', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('782ea630-906f-4b9b-9a59-44829582f959', 'f81a872a-074d-4f09-997a-0f8e9fdcc11a', 'A billing log tool', FALSE, 1),
    ('ce021bfd-7c9c-4c59-b87a-100521d75ccd', 'f81a872a-074d-4f09-997a-0f8e9fdcc11a', 'A service to collect, store, and query log data from Azure Monitor and other sources using KQL', TRUE, 2),
    ('89884875-58bb-4a0e-af09-f5b312518245', 'f81a872a-074d-4f09-997a-0f8e9fdcc11a', 'A firewall log viewer', FALSE, 3),
    ('eee9bb87-0773-4750-8a33-e8033cae9661', 'f81a872a-074d-4f09-997a-0f8e9fdcc11a', 'A storage audit tool', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fbc0a274-f172-40ac-a867-f6e50b0fab0f', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'Which Azure service provides alerts and recommendations specifically focused on cost optimization for your existing Azure resources?',
        'Azure Advisor analyzes your Azure usage and recommends cost savings such as right-sizing VMs, deleting unused resources, or using reserved instances.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('521ddf12-ff65-4be7-8eeb-765fa7a9c205', 'fbc0a274-f172-40ac-a867-f6e50b0fab0f', 'Azure Monitor', FALSE, 1),
    ('a0a6f080-8d78-453a-b9fa-404dcd80b7dc', 'fbc0a274-f172-40ac-a867-f6e50b0fab0f', 'Azure Service Health', FALSE, 2),
    ('f64b7f7c-64b0-4825-ad3d-d6645de48d67', 'fbc0a274-f172-40ac-a867-f6e50b0fab0f', 'Azure Advisor', TRUE, 3),
    ('2e644e02-986b-49f2-8701-1e4dc39c6b3e', 'fbc0a274-f172-40ac-a867-f6e50b0fab0f', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('59f07c0f-8b0e-4ea7-80bb-c965e6cd2dc2', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'MULTIPLE_CHOICE', 'Which TWO Azure services can be used to deploy Azure resources using infrastructure as code? (Choose 2)',
        'ARM Templates (JSON) and Bicep (a DSL that compiles to ARM JSON) are both infrastructure-as-code tools for deploying Azure resources.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a4bb105f-f803-4f95-a308-227977dafce8', '59f07c0f-8b0e-4ea7-80bb-c965e6cd2dc2', 'Azure ARM Templates', TRUE, 1),
    ('944b5ba8-4cfe-4ac3-8c65-2755be8c1230', '59f07c0f-8b0e-4ea7-80bb-c965e6cd2dc2', 'Azure Portal (GUI only)', FALSE, 2),
    ('3fe78da8-8bc3-43cd-93e8-8281147d7200', '59f07c0f-8b0e-4ea7-80bb-c965e6cd2dc2', 'Azure Bicep', TRUE, 3),
    ('570eab1b-7592-457e-8cdc-eec9619b0230', '59f07c0f-8b0e-4ea7-80bb-c965e6cd2dc2', 'Azure Monitor', FALSE, 4),
    ('f9da0a14-7280-42c6-a281-6ff85df51672', '59f07c0f-8b0e-4ea7-80bb-c965e6cd2dc2', 'Azure Policy', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d60ac7eb-b8b2-4774-8ab2-87a20eb22677', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'MULTIPLE_CHOICE', 'Which TWO capabilities does Azure Policy provide? (Choose 2)',
        'Azure Policy evaluates resources against rules (compliance reporting) and can automatically remediate non-compliant resources using deployIfNotExists effects.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a1b30cdc-409c-4d28-a09e-1cdadbc30af1', 'd60ac7eb-b8b2-4774-8ab2-87a20eb22677', 'Automatically encrypting all Azure resources', FALSE, 1),
    ('74976832-fe23-47ab-818e-b7c9f1fea2e8', 'd60ac7eb-b8b2-4774-8ab2-87a20eb22677', 'Evaluating resources for compliance with defined rules', TRUE, 2),
    ('3b93a93d-2217-4d85-bed6-ff1986a92b70', 'd60ac7eb-b8b2-4774-8ab2-87a20eb22677', 'Remediating non-compliant resources', TRUE, 3),
    ('3993049a-49b6-497c-b37c-64e552a71be0', 'd60ac7eb-b8b2-4774-8ab2-87a20eb22677', 'Managing user passwords', FALSE, 4),
    ('bbd9ef70-56c7-448c-b025-266ca0b7aa90', 'd60ac7eb-b8b2-4774-8ab2-87a20eb22677', 'Providing physical datacenter security', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('50775307-0808-4b5f-9b6e-517603c46187', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'MULTIPLE_CHOICE', 'Which TWO are categories of recommendations provided by Azure Advisor? (Choose 2)',
        'Azure Advisor provides recommendations in five categories: Cost, Security, Reliability, Operational Excellence, and Performance.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6984d36f-765d-4a76-bac3-b5c464c20de1', '50775307-0808-4b5f-9b6e-517603c46187', 'Cost optimization', TRUE, 1),
    ('affccff5-b9cf-4a3f-93a7-cea66f019878', '50775307-0808-4b5f-9b6e-517603c46187', 'Security', TRUE, 2),
    ('d3f46081-c780-47cd-9db9-dbcffe6d1d57', '50775307-0808-4b5f-9b6e-517603c46187', 'Speed of internet connection', FALSE, 3),
    ('6380edf1-291c-4dba-85fa-fa192082406d', '50775307-0808-4b5f-9b6e-517603c46187', 'Social media integration', FALSE, 4),
    ('da4351ad-ca4c-4b63-8a07-7011e0e9eef5', '50775307-0808-4b5f-9b6e-517603c46187', 'Employee training', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2908e0c-0020-4df7-8f90-fcbc9f2465f0', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'MULTIPLE_CHOICE', 'Which TWO statements about Azure Resource Locks are correct? (Choose 2)',
        'Locks apply at resource, resource group, or subscription level and are inherited downward. ReadOnly prevents changes; CanNotDelete prevents deletion only.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e5b069e9-0e70-4d51-b939-8e8d024daf0f', 'b2908e0c-0020-4df7-8f90-fcbc9f2465f0', 'Resource Locks can be applied at resource, resource group, or subscription scope', TRUE, 1),
    ('16b21e9d-9a3e-4882-a455-405b1e206275', 'b2908e0c-0020-4df7-8f90-fcbc9f2465f0', 'ReadOnly lock prevents all modifications and deletions', TRUE, 2),
    ('fccb064a-da4f-4cb1-a855-6e86fd8489de', 'b2908e0c-0020-4df7-8f90-fcbc9f2465f0', 'CanNotDelete lock prevents all reads', FALSE, 3),
    ('5f78d55b-a223-4385-b305-4ff65eb7e1b6', 'b2908e0c-0020-4df7-8f90-fcbc9f2465f0', 'Resource Locks replace RBAC permissions', FALSE, 4),
    ('bba632a3-c24f-4059-b1d6-52b4b6affc0e', 'b2908e0c-0020-4df7-8f90-fcbc9f2465f0', 'Locks are inherited from parent scopes', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('69147324-aa73-49a2-ac5e-23e0490dd558', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'MULTIPLE_CHOICE', 'Which TWO tools allow you to manage Azure resources from the command line? (Choose 2)',
        'Azure CLI (cross-platform, Bash-style) and Azure PowerShell (cmdlet-based) are both command-line tools for managing Azure resources.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3bdd7c23-be7a-474c-a497-050017863adc', '69147324-aa73-49a2-ac5e-23e0490dd558', 'Azure Portal', FALSE, 1),
    ('6137cc44-a9fc-46b8-b31b-3780cc2eb284', '69147324-aa73-49a2-ac5e-23e0490dd558', 'Azure CLI', TRUE, 2),
    ('c34a83af-5683-41ce-b0b5-b56fdf51da9f', '69147324-aa73-49a2-ac5e-23e0490dd558', 'Azure PowerShell', TRUE, 3),
    ('b9684fa1-6e8a-4c59-b0fe-e1e6f9be0035', '69147324-aa73-49a2-ac5e-23e0490dd558', 'Azure Advisor', FALSE, 4),
    ('8ba065e2-cf57-4bc4-a477-5917c7f129c8', '69147324-aa73-49a2-ac5e-23e0490dd558', 'Azure Monitor', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ea5dd796-82cf-4cef-bc26-23f1b0e59af2', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'TRUE_FALSE', 'Azure Policy can automatically remediate non-compliant resources, not just report on them.',
        'Azure Policy can use ''deployIfNotExists'' and ''modify'' effects to automatically bring non-compliant resources into compliance.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f102ae13-cb4b-4577-838a-629691af1f56', 'ea5dd796-82cf-4cef-bc26-23f1b0e59af2', 'True', TRUE, 1),
    ('d0fad13b-00ea-4b95-aacc-a386a337fdb8', 'ea5dd796-82cf-4cef-bc26-23f1b0e59af2', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('65c1721a-ff91-4bf3-85b1-df7965ba52fb', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'TRUE_FALSE', 'Azure ARM Templates are written in YAML format.',
        'ARM Templates are written in JSON (JavaScript Object Notation). Azure Bicep is a newer, more readable DSL that compiles to ARM JSON.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7226e68c-777d-4972-8677-a8d0684e4f1f', '65c1721a-ff91-4bf3-85b1-df7965ba52fb', 'True', FALSE, 1),
    ('26575fb1-ea68-40d3-acb1-02ebec2de852', '65c1721a-ff91-4bf3-85b1-df7965ba52fb', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1b8080a4-53bd-47c9-a0d8-2bd16762dc6e', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'TRUE_FALSE', 'Azure Arc allows you to apply Azure governance and policies to servers running outside of Azure.',
        'Azure Arc extends Azure management (RBAC, Policy, tags, monitoring) to non-Azure servers, Kubernetes clusters, and data services.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a4b5123f-79ee-42c3-9272-b18f9aa8745b', '1b8080a4-53bd-47c9-a0d8-2bd16762dc6e', 'True', TRUE, 1),
    ('c886d1b0-b655-431b-b48c-f176766fbc57', '1b8080a4-53bd-47c9-a0d8-2bd16762dc6e', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d93553dc-b3e8-40c3-81f1-3f1cb7e8ed4c', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'TRUE_FALSE', 'Azure Service Health provides alerts about global Azure service outages only, not specific to your region.',
        'Azure Service Health provides personalized alerts about issues in the specific Azure regions and services you use, not just global outages.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f8b78406-85f0-41ef-a87c-98adcc2a414d', 'd93553dc-b3e8-40c3-81f1-3f1cb7e8ed4c', 'True', FALSE, 1),
    ('0f69a625-7892-4c54-a25c-de158ec3763e', 'd93553dc-b3e8-40c3-81f1-3f1cb7e8ed4c', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a26b2db9-6ed9-4a6b-88eb-212781ecf283', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'TRUE_FALSE', 'A ReadOnly resource lock can be applied to a resource group and will prevent deletion of all resources within that group.',
        'A ReadOnly lock on a resource group is inherited by all resources inside it, preventing both modifications and deletions.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a89569cc-3cd0-4422-9d72-fe7086e82d6f', 'a26b2db9-6ed9-4a6b-88eb-212781ecf283', 'True', TRUE, 1),
    ('31c20c44-03db-46b2-b931-56d9f59f1eaf', 'a26b2db9-6ed9-4a6b-88eb-212781ecf283', 'False', FALSE, 2);

-- Scenario questions (answers derived from AZ-900 fundamentals, see note above)
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6568462a-d079-4909-8448-28f1cc266839', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company has a production Azure SQL Database that is business-critical. The database administrator wants to ensure that no one — including administrators and owners — can accidentally delete this database. Modifications to the database configuration (scaling, backup settings) must still be allowed. The solution must meet the following requirements: - Prevent deletion of the database. - Allow modifications to the database. - Apply to all users including Owners. Which Azure Resource Lock type should they apply?',
        'A CanNotDelete lock blocks deletion of a resource while still allowing configuration changes, and it applies to every user including Owners.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('22487ac2-8a7c-45fe-80aa-f4699e657e2e', '6568462a-d079-4909-8448-28f1cc266839', 'ReadOnly', FALSE, 1),
    ('c46b4f38-42c9-46d2-9a95-e435d7fbb91b', '6568462a-d079-4909-8448-28f1cc266839', 'CanNotDelete', TRUE, 2),
    ('81e719fb-23ac-461f-ba22-58aadd81a18d', '6568462a-d079-4909-8448-28f1cc266839', 'NoModify', FALSE, 3),
    ('c007c8d1-3370-476e-883b-070ccb46726c', '6568462a-d079-4909-8448-28f1cc266839', 'DeleteProtect', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b38da370-97c4-441b-905c-e4d6862b2c01', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company needs to completely freeze an Azure Key Vault to prevent any configuration changes or deletion during an audit period. All users should only be able to read the Key Vault''s current configuration. No changes of any kind should be permitted. The solution must meet the following requirements: - Prevent all modifications. - Prevent deletion. - Allow only read access. - Apply during audit period. Which Resource Lock type should be applied?',
        'A ReadOnly lock prevents all modifications and deletions, leaving the resource accessible only for reading - exactly what''s needed during an audit.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('345f9170-23b3-4d26-81d5-819c83dbc393', 'b38da370-97c4-441b-905c-e4d6862b2c01', 'CanNotDelete', FALSE, 1),
    ('3f0139ea-abd7-4d90-9f77-8b41da9e394a', 'b38da370-97c4-441b-905c-e4d6862b2c01', 'ReadOnly', TRUE, 2),
    ('948c0ede-1d03-4ab5-98ae-f5447e5127c0', 'b38da370-97c4-441b-905c-e4d6862b2c01', 'NoAccess', FALSE, 3),
    ('8f8b4eb4-35b3-4129-9b5f-2928432a4838', 'b38da370-97c4-441b-905c-e4d6862b2c01', 'Immutable', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cb30c1ec-92a2-4460-889a-9f9f4e924935', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company''s cloud governance team needs to enforce the following rule across their entire Azure environment: all resources must be deployed only in North Europe or West Europe regions. Resources in other regions should be automatically blocked at deployment time. The solution must meet the following requirements: - Block resource deployment outside North and West Europe. - Enforce at deployment time, not just report. - Apply to all subscriptions. Which Azure service and effect should they use?',
        'Azure Policy with a ''Deny'' effect applied at the Management Group level blocks non-compliant deployments (like disallowed regions) at creation time, across all subscriptions.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('49e8c20e-c4fd-4879-8896-03db8e895eb5', 'cb30c1ec-92a2-4460-889a-9f9f4e924935', 'Azure RBAC with a custom role restricting regions', FALSE, 1),
    ('e4bb4543-f8c3-43d1-a2b3-726856384be7', 'cb30c1ec-92a2-4460-889a-9f9f4e924935', 'Azure Policy with ''Audit'' effect', FALSE, 2),
    ('5cfb7747-c2f5-40d6-9fb1-880d37b95912', 'cb30c1ec-92a2-4460-889a-9f9f4e924935', 'Azure Policy with ''Deny'' effect applied at Management Group', TRUE, 3),
    ('3a42e1f3-662a-41e8-a17f-4af053a5be8e', 'cb30c1ec-92a2-4460-889a-9f9f4e924935', 'Resource Locks on existing resources', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('099b9a27-8d0b-4f61-858d-27c18de056f9', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company''s DevOps team needs to deploy an identical environment (10 VMs, a load balancer, a VNet, and an NSG) to three separate environments: Development, Staging, and Production. They want to ensure the environments are exactly identical and deployments are repeatable. The solution must meet the following requirements: - Identical environments across Dev, Staging, and Prod. - Repeatable, consistent deployments. - Infrastructure defined as code. - No manual portal clicks. Which Azure tool best meets this requirement?',
        'ARM Templates deployed via CLI describe infrastructure as code, guaranteeing identical, repeatable deployments across Dev, Staging, and Production without manual portal steps.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d9e681a7-95e2-43ac-b4c1-6d8c98352bff', '099b9a27-8d0b-4f61-858d-27c18de056f9', 'Deploy manually via Azure Portal for each environment', FALSE, 1),
    ('2f547781-5614-407c-85fc-a65294c281ce', '099b9a27-8d0b-4f61-858d-27c18de056f9', 'Azure ARM Templates deployed via CLI', TRUE, 2),
    ('800a1934-8a27-4339-9280-cea83303270e', '099b9a27-8d0b-4f61-858d-27c18de056f9', 'Azure Blueprints (for first-time subscription setup)', FALSE, 3),
    ('1d552b8c-fa37-4cc7-b06c-b644af95c69d', '099b9a27-8d0b-4f61-858d-27c18de056f9', 'Azure Advisor recommendations', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b814c738-eabd-45e1-858e-115a78f1f509', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company manages 200 servers on-premises. They want to apply Azure Policy to these on-premises servers, monitor them with Azure Monitor, and manage them using Azure RBAC — all from the Azure Portal, without migrating the servers to Azure. The solution must meet the following requirements: - Apply Azure governance to on-premises servers. - Monitor with Azure Monitor. - No migration to Azure required. - Centralized management from Azure Portal. Which Azure service enables this?',
        'Azure Arc extends Azure governance, Azure Monitor, and Azure RBAC to on-premises servers without migrating them into Azure.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('608edfe4-741d-4a26-853d-914f3a3af191', 'b814c738-eabd-45e1-858e-115a78f1f509', 'Azure Migrate', FALSE, 1),
    ('886dea4e-6594-494c-b059-cc813036bad3', 'b814c738-eabd-45e1-858e-115a78f1f509', 'Azure Site Recovery', FALSE, 2),
    ('3902feb6-1f1f-4544-9fdc-834912d78f5a', 'b814c738-eabd-45e1-858e-115a78f1f509', 'Azure Arc', TRUE, 3),
    ('78685cf9-27a8-4ed4-93cf-f4bcc82b013f', 'b814c738-eabd-45e1-858e-115a78f1f509', 'Azure Virtual Machines', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bd1c99ed-cb22-45ac-9def-6a72f84ef969', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company''s operations team wants to receive an automatic notification when the average CPU utilization of a production VM exceeds 85% for more than 5 consecutive minutes. They want the on-call engineer to receive an SMS and email alert. The solution must meet the following requirements: - Monitor CPU metric on a specific VM. - Alert when CPU > 85% for 5 minutes. - Notify via SMS and email. Which Azure service should they configure?',
        'An Azure Monitor metric alert rule can trigger on a CPU threshold sustained over a time window and notify via SMS and email through an action group.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0e08e153-3448-4956-aaac-260b82c95940', 'bd1c99ed-cb22-45ac-9def-6a72f84ef969', 'Azure Advisor', FALSE, 1),
    ('52a66227-cc86-44cb-aa5b-726d5c93a636', 'bd1c99ed-cb22-45ac-9def-6a72f84ef969', 'Azure Service Health', FALSE, 2),
    ('806ebe1b-265a-4dad-84c1-5fdcb30be50d', 'bd1c99ed-cb22-45ac-9def-6a72f84ef969', 'Azure Monitor with a metric alert rule', TRUE, 3),
    ('bd63df85-efcd-4696-96f5-0d9177cb0584', 'bd1c99ed-cb22-45ac-9def-6a72f84ef969', 'Microsoft Defender for Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fd285924-44c8-4632-8f64-89026d427a55', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company''s IT team has identified that some Azure VMs are consistently running at less than 10% CPU utilization. They want Azure to automatically suggest which VMs to resize or shut down to reduce the monthly bill, without running complex queries. The solution must meet the following requirements: - Identify underutilized VMs. - Actionable right-sizing recommendations. - Built-in, no custom queries. Which Azure service provides these cost optimization recommendations?',
        'Azure Advisor automatically flags underutilized VMs and gives specific, actionable resizing or shutdown recommendations without custom queries.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a3abbe4f-3098-4c72-848c-414a5156cec8', 'fd285924-44c8-4632-8f64-89026d427a55', 'Azure Monitor', FALSE, 1),
    ('a748da35-b89d-48a3-8ccb-ab983acb13e7', 'fd285924-44c8-4632-8f64-89026d427a55', 'Azure Cost Management (cost analysis)', FALSE, 2),
    ('2ca37da9-0479-4478-b4d8-aebacb1c1475', 'fd285924-44c8-4632-8f64-89026d427a55', 'Azure Advisor', TRUE, 3),
    ('0f09c641-8b94-49b2-83c4-ade727f27c83', 'fd285924-44c8-4632-8f64-89026d427a55', 'Microsoft Defender for Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0ae47666-c03c-430d-bc4c-90fc930b107f', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company''s compliance officer needs to verify that Microsoft Azure meets ISO 27001, SOC 2 Type II, and GDPR compliance requirements. They need to access independent third-party audit reports and compliance documentation to present to their board. The solution must meet the following requirements: - Access third-party audit reports for Azure. - Verify ISO 27001 and SOC 2 compliance. - Official Microsoft documentation. Where should the compliance officer look?',
        'The Microsoft Service Trust Portal hosts official third-party audit reports and compliance documentation, including ISO 27001 and SOC 2 Type II.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2ba558f0-ff4b-47fa-bb73-773ab66b6117', '0ae47666-c03c-430d-bc4c-90fc930b107f', 'Azure Portal → Security Center', FALSE, 1),
    ('c985bf46-e770-4774-b41f-767c5e98fe47', '0ae47666-c03c-430d-bc4c-90fc930b107f', 'Microsoft Service Trust Portal', TRUE, 2),
    ('96116ad2-e37d-4d8e-8754-fbadc396bb5d', '0ae47666-c03c-430d-bc4c-90fc930b107f', 'Azure Advisor → Security tab', FALSE, 3),
    ('7b74b493-c37a-4e91-b419-e5309cc91848', '0ae47666-c03c-430d-bc4c-90fc930b107f', 'Azure Monitor logs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6814d242-d615-4139-9995-d9b07a4b0848', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company''s Azure environment is experiencing an issue. Several Azure services in West Europe are showing errors. The IT team needs to quickly determine if there is an active Azure service incident affecting West Europe, and if any planned maintenance is scheduled for next week in that region. The solution must meet the following requirements: - Check for active incidents in West Europe. - View upcoming planned maintenance. - Personalized to their subscriptions and services. Which Azure service should they check?',
        'Azure Service Health shows active incidents and planned maintenance personalized to the specific regions and services a subscription actually uses.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7078769c-6dc9-4604-a15b-83d89e970d40', '6814d242-d615-4139-9995-d9b07a4b0848', 'Azure Monitor', FALSE, 1),
    ('ab1a005e-633a-4a48-83de-b41a3fe939ee', '6814d242-d615-4139-9995-d9b07a4b0848', 'Azure Advisor', FALSE, 2),
    ('49384167-3593-410e-88b9-1e68c0bc651b', '6814d242-d615-4139-9995-d9b07a4b0848', 'Microsoft global status page (status.azure.com) only', FALSE, 3),
    ('7334e03d-1436-4702-b302-8e4150b18c52', '6814d242-d615-4139-9995-d9b07a4b0848', 'Azure Service Health', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dad5a85a-a706-4268-8c41-a90d392100c7', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company''s infrastructure team wants to query the last 30 days of sign-in logs, find all failed authentication attempts from foreign countries, and correlate them with Azure resource activity logs to identify potential compromises. The solution must meet the following requirements: - Query multiple log sources. - Complex queries over 30 days of data. - Correlate sign-in logs with activity logs. Which Azure service should they use for log analysis?',
        'Azure Monitor with a Log Analytics workspace lets you run complex KQL queries across multiple log sources and correlate sign-in and activity logs.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7aaa5776-a81e-438c-83c0-8a43cb2594aa', 'dad5a85a-a706-4268-8c41-a90d392100c7', 'Azure Advisor', FALSE, 1),
    ('84601000-5ada-4ac6-bba2-d0e64da678b6', 'dad5a85a-a706-4268-8c41-a90d392100c7', 'Azure Service Health', FALSE, 2),
    ('b916813f-377f-4e1b-a886-e8d045333638', 'dad5a85a-a706-4268-8c41-a90d392100c7', 'Azure Monitor with Log Analytics workspace (KQL queries)', TRUE, 3),
    ('f983f394-4df9-4632-9e57-1e41b483f1ae', 'dad5a85a-a706-4268-8c41-a90d392100c7', 'Azure Cost Management', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8d2e6258-0314-4b64-a420-7f8c9aab0f34', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company''s cloud team writes a Bicep file to deploy a new application infrastructure. A new team member asks what happens to the Bicep file when it''s submitted to Azure Resource Manager for deployment. What does Azure Resource Manager do with the Bicep file during deployment?',
        'Bicep files are compiled into standard ARM JSON templates, which Azure Resource Manager then processes to deploy resources.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('27aedb77-b5ff-457c-bc6e-8a4b8559ae95', '8d2e6258-0314-4b64-a420-7f8c9aab0f34', 'ARM executes the Bicep file directly without conversion', FALSE, 1),
    ('e1afe944-af58-4404-8ccb-fffe1bf554d3', '8d2e6258-0314-4b64-a420-7f8c9aab0f34', 'Bicep is compiled to ARM JSON template, which ARM then processes', TRUE, 2),
    ('c6aeb40c-1d98-4df3-b142-177c46f7bb1f', '8d2e6258-0314-4b64-a420-7f8c9aab0f34', 'Bicep is converted to Terraform and then executed', FALSE, 3),
    ('f29a035a-d03a-47af-83d7-218c9ba4c0b8', '8d2e6258-0314-4b64-a420-7f8c9aab0f34', 'Bicep is sent to Azure Blueprints for processing', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('37fd1073-8502-4eae-a65a-e4f27224f47e', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company runs a 3-tier application in Azure. The web tier is hosted on VMs in West Europe. The company''s users report that the application started failing 30 minutes ago. The team needs to check whether the failure is caused by an Azure service issue or a problem with their own code/configuration. The solution must meet the following requirements: - Quickly check if Azure has an active incident in West Europe. - Verify if the specific services they use are affected. - Determine if it''s Azure''s issue or theirs. What should they check FIRST?',
        'Checking Azure Service Health first quickly reveals whether an active Azure incident in the affected region explains the outage, before digging into app-level causes.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0cef0b61-ceac-4e03-8374-f33209425445', '37fd1073-8502-4eae-a65a-e4f27224f47e', 'Azure Monitor metrics for their VMs', FALSE, 1),
    ('56f49285-e5e5-4ce8-ad79-13d71f94497b', '37fd1073-8502-4eae-a65a-e4f27224f47e', 'Azure Advisor recommendations', FALSE, 2),
    ('7f5494e3-760a-41d8-b86b-cb184b4a9224', '37fd1073-8502-4eae-a65a-e4f27224f47e', 'Azure Service Health for incidents in West Europe', TRUE, 3),
    ('74c7bd21-4d5a-4908-b157-072c8f53d619', '37fd1073-8502-4eae-a65a-e4f27224f47e', 'Microsoft Defender for Cloud alerts', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0578e3e8-0e43-4f7c-8b6c-1762da619681', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company is building an ARM Template to deploy a complex infrastructure. They want the template to be more readable and maintainable than JSON. They also want to use modules to reuse code across multiple templates. The output must still be compatible with Azure Resource Manager. The solution must meet the following requirements: - More readable than ARM JSON. - Support for modules (code reuse). - Compiles to standard ARM JSON. - First-class Azure CLI/Portal support. Which language should they use?',
        'Azure Bicep is a more readable DSL than ARM JSON, supports reusable modules, and compiles down to standard ARM JSON with full Azure CLI/Portal support.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1edb98fb-c7ef-4288-aad1-c7f25999e493', '0578e3e8-0e43-4f7c-8b6c-1762da619681', 'Terraform (HashiCorp)', FALSE, 1),
    ('54409c66-3693-4411-a61e-12525bf44722', '0578e3e8-0e43-4f7c-8b6c-1762da619681', 'YAML ARM Templates', FALSE, 2),
    ('2ac8b9b4-598b-4cbb-b610-44f8ceb25e30', '0578e3e8-0e43-4f7c-8b6c-1762da619681', 'Azure Bicep', TRUE, 3),
    ('a37e7fed-687e-4e3f-a54c-ffcca982d746', '0578e3e8-0e43-4f7c-8b6c-1762da619681', 'Azure PowerShell scripts', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c4f2429c-7d72-4512-9fde-50b9ccf088c9', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company applies a Resource Lock of type ReadOnly to a resource group containing 5 storage accounts and 3 VMs. An administrator with the Owner role then tries to delete one of the VMs. What happens? What is the result of the deletion attempt?',
        'A ReadOnly lock prevents all modifications and deletions for every user, including Owners, so the deletion attempt fails.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('859674f8-6c62-42f0-a84d-69f66935a2ad', 'c4f2429c-7d72-4512-9fde-50b9ccf088c9', 'The VM is deleted successfully because the Owner role overrides all locks', FALSE, 1),
    ('b49e116a-3331-4dee-9461-14f8fe3796de', 'c4f2429c-7d72-4512-9fde-50b9ccf088c9', 'The deletion fails because the ReadOnly lock prevents all modifications and deletions, including for Owners', TRUE, 2),
    ('1d84f7fa-3f2b-4866-9d64-2cfb888f18fd', 'c4f2429c-7d72-4512-9fde-50b9ccf088c9', 'The VM is deleted but the lock remains and prevents future deletions', FALSE, 3),
    ('69961d59-959a-4548-8e72-57a6b6dcb33c', 'c4f2429c-7d72-4512-9fde-50b9ccf088c9', 'The lock only applies to storage accounts, not VMs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e4c20b59-dc60-4a3e-90cb-fadf23eb0178', '9c80a03f-def5-4578-bb87-1bde3f271c1d', 'SINGLE_CHOICE', 'A company uses Azure Monitor to collect metrics from all their VMs. They want to visualize CPU, memory, and network metrics on a single dashboard that refreshes every 5 minutes and can be shared with the management team via a URL. The solution must meet the following requirements: - Visualize metrics from multiple VMs. - Single, shared dashboard. - Auto-refresh every 5 minutes. - Shareable with management. Which Azure feature should they use? ✅  End of scenario questions — Give this document to your trainer for correction. Your trainer will provide answer explanations and discuss common mistakes from this module.',
        'Azure Monitor Workbooks or Azure Dashboards let you combine metrics from multiple resources into a single, shareable, auto-refreshing view.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ade9e014-a57d-49d4-8d93-90d15b0e51bc', 'e4c20b59-dc60-4a3e-90cb-fadf23eb0178', 'Azure Advisor reports', FALSE, 1),
    ('4ca3d021-e922-4e26-b040-b3e0de41a9ea', 'e4c20b59-dc60-4a3e-90cb-fadf23eb0178', 'Azure Service Health dashboard', FALSE, 2),
    ('b2233e9c-b759-47b1-83b7-9de6ec887316', 'e4c20b59-dc60-4a3e-90cb-fadf23eb0178', 'Azure Monitor Workbooks or Azure Dashboards', TRUE, 3),
    ('358d9ab3-8fc4-4299-a824-f76b44aada5e', 'e4c20b59-dc60-4a3e-90cb-fadf23eb0178', 'Microsoft Defender for Cloud dashboard', FALSE, 4);
