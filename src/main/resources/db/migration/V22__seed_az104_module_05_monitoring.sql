INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('75c38a05-1b82-4f2a-8a94-b8eda5d088b0', '00000000-0000-0000-0000-000000000002', 'module-05-monitoring', 'Module 5 - Monitor and Back Up Azure Resources',
        NULL, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('620713a9-46b8-49d4-8670-a7d9a95f51c5', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What best describes Azure Monitor?',
        'Azure Monitor is explicitly described as Azure''s full-stack monitoring service, collecting, analyzing, and acting on telemetry from cloud and on-premises environments. B is too narrow (metrics are only one part), D confuses it with Azure Backup, and A incorrectly limits it to Azure Firewall/network security.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('72724204-c508-4326-8952-5d1120c10753', '620713a9-46b8-49d4-8670-a7d9a95f51c5', 'A network security monitoring tool exclusive to Azure Firewall', FALSE, 1),
    ('b952f5c5-cf70-48cd-8b18-0f4472697bc7', '620713a9-46b8-49d4-8670-a7d9a95f51c5', 'A full-stack monitoring service that collects, analyzes, and acts on telemetry from cloud and on-premises environments', TRUE, 2),
    ('e4dbd83d-be18-4531-94db-63014b429eb6', '620713a9-46b8-49d4-8670-a7d9a95f51c5', 'A backup orchestration service for Azure resources', FALSE, 3),
    ('c8e24c9b-e67c-450d-8efa-c18471b8f40a', '620713a9-46b8-49d4-8670-a7d9a95f51c5', 'A service that only collects numeric performance metrics for Azure VMs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('24340ab9-6a9a-4e31-abea-95be0421d7ff', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Azure Monitor''s functionality is commonly described around three core pillars. Which of the following correctly lists them?',
        'Azure Monitor''s functionality is organized around Monitor & Visualize Metrics, Query & Analyze Logs, and Setup Alerts & Actions. The other options mix in unrelated services (backups, cost management, networking, identity, policy) that are not part of the three core pillars.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a55f8728-7b42-4d5c-8938-d5d3dc3a446c', '24340ab9-6a9a-4e31-abea-95be0421d7ff', 'Monitor & Visualize Metrics, Query & Analyze Logs, Setup Alerts & Actions', TRUE, 1),
    ('ed96e83b-b8c0-41a0-a1a7-4cd54ff5ae62', '24340ab9-6a9a-4e31-abea-95be0421d7ff', 'Query Logs, Manage Identities, Configure Policies', FALSE, 2),
    ('930a29d9-0017-44d0-9968-a163cd993534', '24340ab9-6a9a-4e31-abea-95be0421d7ff', 'Visualize Dashboards, Manage Costs, Deploy Resources', FALSE, 3),
    ('2d0bd03b-f9c2-43bc-af68-a344793c5d42', '24340ab9-6a9a-4e31-abea-95be0421d7ff', 'Collect Metrics, Store Backups, Configure Networking', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('967b2c2a-653f-4033-8c4d-210075af7952', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which statement correctly distinguishes the two fundamental data types collected by Azure Monitor?',
        'Metrics are numeric values captured at a point in time, while Logs are records containing different kinds of structured/unstructured data with varying properties, typically queried with KQL. C and A incorrectly conflate the two, and D reverses their actual characteristics.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2082a306-cca1-4bc3-a19a-d342c68d9c9e', '967b2c2a-653f-4033-8c4d-210075af7952', 'Metrics are always stored in a Log Analytics workspace, while Logs are stored in Azure Storage only', FALSE, 1),
    ('1f52874a-fdf7-4ade-8003-9c87a1841ae5', '967b2c2a-653f-4033-8c4d-210075af7952', 'Metrics and Logs are two names for the same underlying data structure', FALSE, 2),
    ('aafaffb1-9049-43cc-a3d6-4c34e54d9fa5', '967b2c2a-653f-4033-8c4d-210075af7952', 'Metrics capture textual event data, while Logs capture only numeric time-series data', FALSE, 3),
    ('59fa40a6-1c3d-4f19-af43-da7f79a490d0', '967b2c2a-653f-4033-8c4d-210075af7952', 'Metrics are numeric values describing an aspect of a system at a point in time; Logs contain different kinds of structured/unstructured data organized as records with different sets of properties', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('22b037b3-c83a-4262-b3ff-673d3e8164b9', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'A company wants to monitor sign-in and directory-level events across their entire organization, not tied to a single subscription. Which Azure Monitor data source category is most relevant?',
        'Azure Tenant-level data covers directory-wide events such as Azure AD sign-ins, which are broader than a single subscription. Application (B) relates to custom app telemetry, Azure Resource (C) is scoped to individual resources, and Custom Sources (D) refers to bespoke data sources, none of which match tenant-wide identity events.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('791806c2-6968-4ad4-94bb-d1cb8b7ad5d7', '22b037b3-c83a-4262-b3ff-673d3e8164b9', 'Custom Sources', FALSE, 1),
    ('30d6a445-82c5-4094-bcab-413c474da6dd', '22b037b3-c83a-4262-b3ff-673d3e8164b9', 'Azure Tenant', TRUE, 2),
    ('1404237c-08b6-45f8-a708-7aeb3e4464a2', '22b037b3-c83a-4262-b3ff-673d3e8164b9', 'Application', FALSE, 3),
    ('56c51255-4b48-456a-ad47-7335ad008e54', '22b037b3-c83a-4262-b3ff-673d3e8164b9', 'Azure Resource', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5764ed34-03b1-4eb6-95c8-be90eac300fe', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which statement about the Log Analytics agent (also known as the MMA or OMS agent) is accurate in the context of Azure Monitor''s agent evolution?',
        'The Log Analytics agent (MMA/OMS) is a legacy agent being retired as Azure Monitor converges on the unified Azure Monitor Agent (AMA). B reverses the roles, C is too narrow (it collects much more than Activity Log data), and A is false since it supports both Windows and Linux.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dee449e3-7103-454c-9f8d-7c46aca0ca99', '5764ed34-03b1-4eb6-95c8-be90eac300fe', 'It is the newest agent and replaces all others', FALSE, 1),
    ('6dc4a36b-f324-4744-8542-a6cf4cb61577', '5764ed34-03b1-4eb6-95c8-be90eac300fe', 'It is a legacy agent being retired in favor of the unified Azure Monitor Agent (AMA)', TRUE, 2),
    ('0ec313a7-f319-42f4-bc5f-e7cf115ea011', '5764ed34-03b1-4eb6-95c8-be90eac300fe', 'It can only be installed on Linux virtual machines', FALSE, 3),
    ('e431328b-0e50-43fd-9ffa-a25338e52fb0', '5764ed34-03b1-4eb6-95c8-be90eac300fe', 'It is used exclusively to collect Azure Activity Log data', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('359e2c02-c158-456b-b0a3-a05095cea2b8', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the primary purpose of the Diagnostics extension (WAD for Windows, LAD for Linux) in Azure Monitor?',
        'The Diagnostics extension (WAD/LAD) collects guest-level diagnostic data such as performance counters, logs, and crash dumps and routes them to destinations like Azure Storage or Event Hubs. D describes the Dependency Agent, A describes a Data Collection Rule, and C is unrelated to its function.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5244c2c6-8b43-4b53-86f3-f13593ae8479', '359e2c02-c158-456b-b0a3-a05095cea2b8', 'To define what data to collect and where to route it when using the Azure Monitor Agent', FALSE, 1),
    ('5acea3bc-514f-4672-ac74-a1419ef41a3b', '359e2c02-c158-456b-b0a3-a05095cea2b8', 'To enforce Azure Policy compliance on virtual machines', FALSE, 2),
    ('4cf2c75e-9304-4bb1-9a69-6a325513def4', '359e2c02-c158-456b-b0a3-a05095cea2b8', 'To collect guest-level diagnostic data such as performance counters, logs, and crash dumps from the operating system and route it to destinations like Azure Storage or Event Hubs', TRUE, 3),
    ('2c91c680-a820-45e6-9c11-cdc852d8389e', '359e2c02-c158-456b-b0a3-a05095cea2b8', 'To map dependencies between running processes on a VM', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3bc39b60-a18c-40ec-8fa8-6a78c0b39ced', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which Azure Monitor agent is specifically used to discover and map process dependencies and network connections between virtual machines, and is a component required for VM insights?',
        'The Dependency Agent maps process dependencies and network connections between VMs and is required for VM insights. AMA (B) is the general data collection agent, the Diagnostics extension (A) collects guest OS diagnostics, and the Log Analytics agent (D) is the legacy log-forwarding agent — none perform dependency mapping.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('facd83a1-c962-41bd-91f1-d0431e08a3a9', '3bc39b60-a18c-40ec-8fa8-6a78c0b39ced', 'Dependency Agent', TRUE, 1),
    ('da34ffe7-f4a9-4c81-a5db-7080f75b471f', '3bc39b60-a18c-40ec-8fa8-6a78c0b39ced', 'Azure Monitor Agent (AMA)', FALSE, 2),
    ('f8f332f4-595c-4ee3-85af-745c5c4f68cc', '3bc39b60-a18c-40ec-8fa8-6a78c0b39ced', 'Diagnostics extension', FALSE, 3),
    ('c06afe2d-8707-4f62-a996-e0da65940d7a', '3bc39b60-a18c-40ec-8fa8-6a78c0b39ced', 'Log Analytics agent', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d9cb65ca-ed28-4060-817b-c05c4321c620', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the Azure Monitor Agent (AMA)?',
        'AMA is explicitly the unified, modern agent that the Log Analytics agent, Diagnostics extension, and other legacy agents are converging toward. A and C mischaracterize it as legacy or narrowly scoped, and D is unrelated to its actual purpose.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8b473feb-5ac2-4850-b945-badedb5200c2', 'd9cb65ca-ed28-4060-817b-c05c4321c620', 'The unified, modern agent toward which the Log Analytics agent, Diagnostics extension, and other legacy agents are converging', TRUE, 1),
    ('c5d07a53-576a-4312-8ef5-b28eb72df4c2', 'd9cb65ca-ed28-4060-817b-c05c4321c620', 'A network monitoring tool unrelated to data collection', FALSE, 2),
    ('c7462f9d-de20-42f5-916b-5c8d8937b5b7', 'd9cb65ca-ed28-4060-817b-c05c4321c620', 'A legacy agent scheduled for deprecation', FALSE, 3),
    ('4514f5ab-7680-4051-afdb-b74261fa9f6c', 'd9cb65ca-ed28-4060-817b-c05c4321c620', 'An agent used only for collecting Windows Event Logs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4f6dcfbc-88a2-43fa-8bb6-90fe0bb14b48', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the primary function of a Data Collection Rule (DCR) when using the Azure Monitor Agent?',
        'A Data Collection Rule defines what data to collect, how to transform it, and where to route it when using AMA. B, C, and A describe unrelated Azure Backup, retention, and RBAC concepts.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('024c05bb-b726-445a-8f4d-3a33c3a9e1fc', '4f6dcfbc-88a2-43fa-8bb6-90fe0bb14b48', 'It defines the retention period for a Recovery Services Vault', FALSE, 1),
    ('cf47edbc-87a3-4c14-9ad5-38d08b57f50c', '4f6dcfbc-88a2-43fa-8bb6-90fe0bb14b48', 'It defines a backup schedule for virtual machine disks', FALSE, 2),
    ('be803ed7-f86f-4ac9-876f-9c933c6144c6', '4f6dcfbc-88a2-43fa-8bb6-90fe0bb14b48', 'It defines role-based access control permissions for a Log Analytics workspace', FALSE, 3),
    ('049e5898-0186-4b2c-bf9f-ea301d6ee228', '4f6dcfbc-88a2-43fa-8bb6-90fe0bb14b48', 'It defines what data to collect, how to transform it, and where to route it', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('94ac69ce-8ce7-4b48-804c-36f832b0a116', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of Azure Monitor''s three pillars is responsible for triggering notifications or automated remediation when a defined condition is met?',
        'Setup Alerts & Actions is the pillar responsible for notifications and automated remediation. Monitor & Visualize Metrics (D) and Query & Analyze Logs (B) deal with observing data rather than acting on it, and DCRs (C) are a configuration mechanism, not a pillar.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8bea9a2a-ff40-4435-821b-e6744f0874c8', '94ac69ce-8ce7-4b48-804c-36f832b0a116', 'Data Collection Rules', FALSE, 1),
    ('f4e03e89-efb7-4d3d-89b1-9239c67671da', '94ac69ce-8ce7-4b48-804c-36f832b0a116', 'Setup Alerts & Actions', TRUE, 2),
    ('eed209a5-53e6-4ddb-8e34-82fb133347f8', '94ac69ce-8ce7-4b48-804c-36f832b0a116', 'Monitor & Visualize Metrics', FALSE, 3),
    ('f81816d4-c329-4c61-b6fd-701ea840c216', '94ac69ce-8ce7-4b48-804c-36f832b0a116', 'Query & Analyze Logs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('398e1f56-4438-479b-9b08-c8ee1d40fba7', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'A DevOps engineer wants to collect performance counters directly from the guest operating system of a virtual machine, such as per-process memory usage. Under Azure Monitor''s data source classification, this would fall under which category?',
        'Per-process performance counters collected from inside the guest OS fall under the Operating System data source category. Azure Subscription (B) and Azure Tenant (A) are broader scopes unrelated to guest-level counters, and Application (D) refers to custom app telemetry, not OS performance counters.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('eb25bcc9-1c30-4834-ab65-a30b5b4b09af', '398e1f56-4438-479b-9b08-c8ee1d40fba7', 'Azure Subscription', FALSE, 1),
    ('e8cad81d-659a-451f-a85d-10887bc95f53', '398e1f56-4438-479b-9b08-c8ee1d40fba7', 'Azure Tenant', FALSE, 2),
    ('9f26e29f-b3d5-4f3b-9c25-9489111c7a4b', '398e1f56-4438-479b-9b08-c8ee1d40fba7', 'Operating System', TRUE, 3),
    ('90d34d50-1f57-49b2-a40a-b8ca28fcdce3', '398e1f56-4438-479b-9b08-c8ee1d40fba7', 'Application', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d5bce0f8-6cd9-49f8-b110-fc976941420d', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following best describes the difference between the "Azure Resource" and "Azure Subscription" data source categories in Azure Monitor?',
        'Azure Resource data pertains to an individual resource''s operation, while Azure Subscription data covers subscription-wide health data like Azure service health and the Activity Log. A is incorrect since they are distinct categories, B wrongly limits Azure Resource data to on-premises servers, and D incorrectly ties Azure Subscription data to the Dependency Agent.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('aeb69852-93ed-4a25-a40f-092574553a24', 'd5bce0f8-6cd9-49f8-b110-fc976941420d', 'Azure Resource data only applies to on-premises servers', FALSE, 1),
    ('44c92028-9657-4943-9407-0fbf3d8392d3', 'd5bce0f8-6cd9-49f8-b110-fc976941420d', 'Azure Subscription data is only available through the Dependency Agent', FALSE, 2),
    ('dacdd0a4-aa32-4fe6-a258-83222e0c0bc9', 'd5bce0f8-6cd9-49f8-b110-fc976941420d', 'There is no difference; they are the same category', FALSE, 3),
    ('25d65a45-c779-41d9-871f-a8649cca19c0', 'd5bce0f8-6cd9-49f8-b110-fc976941420d', 'Azure Resource data relates to the operation of an individual resource (e.g., a VM or storage account), while Azure Subscription data relates to the health and operation of the subscription itself, such as Azure service health and the Activity Log', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('783782b7-73fa-47d9-b6e2-f73002474fcb', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following best characterizes Metrics data in Azure Monitor?',
        'Metrics are lightweight, numeric, time-series values well suited to near-real-time analysis. C describes Logs instead, D is an unfounded restriction, and B contradicts the near-real-time nature of metrics.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c91a2aa6-afcd-4b9f-9590-46476c686f6d', '783782b7-73fa-47d9-b6e2-f73002474fcb', 'Data that can only be generated by custom applications', FALSE, 1),
    ('4eae15bc-c687-46f7-8f2e-b03a23adcdbc', '783782b7-73fa-47d9-b6e2-f73002474fcb', 'Free-form text records that require complex parsing before they can be visualized', FALSE, 2),
    ('4e097a34-b052-419d-845e-ad3238707e60', '783782b7-73fa-47d9-b6e2-f73002474fcb', 'Lightweight, numeric values captured at regular intervals that describe some aspect of a system at a particular time, well-suited to near-real-time analysis', TRUE, 3),
    ('f732409d-a178-4058-ab4e-a17bff39cf1b', '783782b7-73fa-47d9-b6e2-f73002474fcb', 'Data that is only available after 24 hours due to ingestion latency', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ba9c255e-2927-4060-9835-8806dc7c536e', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following best characterizes Logs data in Azure Monitor compared to Metrics?',
        'Logs contain varied records with different property sets and generally require a query language like KQL for analysis, unlike numeric time-series metrics. D incorrectly equates them with metrics, and A and C impose false restrictions not supported by the reference material.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ce8cd583-b7bb-4f2b-96e9-19cf2d55c01c', 'ba9c255e-2927-4060-9835-8806dc7c536e', 'Logs cannot be stored longer than 24 hours', FALSE, 1),
    ('8f0395bf-f6a0-4d59-8138-0220454c3ec6', 'ba9c255e-2927-4060-9835-8806dc7c536e', 'Logs are always numeric and time-series in nature, identical to metrics', FALSE, 2),
    ('b9d877de-e396-4908-8236-196f34ccb93e', 'ba9c255e-2927-4060-9835-8806dc7c536e', 'Logs are only collected from Azure Tenant-level sources', FALSE, 3),
    ('0917ae6a-3085-4da1-9b52-c21cf9c4b3fb', 'ba9c255e-2927-4060-9835-8806dc7c536e', 'Logs contain different kinds of data organized into records with different sets of properties, and typically require a query (e.g., using KQL) for analysis', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('39113744-6beb-4c05-a487-4c8dd76eeab6', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'To enable VM insights for a set of Azure virtual machines, which combination of agents and resources is required?',
        'VM insights requires the Dependency Agent, the Azure Monitor Agent, and a Log Analytics workspace to store and analyze the collected data. B, A, and C each name only unrelated or insufficient components.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6547b827-1e65-4203-9af5-a2a881097ec5', '39113744-6beb-4c05-a487-4c8dd76eeab6', 'The MARS agent and a Backup Vault', FALSE, 1),
    ('f563fa95-34a7-4742-93e4-d064325eca0e', '39113744-6beb-4c05-a487-4c8dd76eeab6', 'Only a Recovery Services Vault', FALSE, 2),
    ('cd4d7f1a-deae-4c8c-a5f8-14b65737632b', '39113744-6beb-4c05-a487-4c8dd76eeab6', 'Only the Diagnostics extension', FALSE, 3),
    ('f4b164c6-444d-414b-a076-e45ffc4e9248', '39113744-6beb-4c05-a487-4c8dd76eeab6', 'The Dependency Agent and Azure Monitor Agent, along with a Log Analytics workspace', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6b931ca4-450a-452c-90fc-5cc8c50fd719', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is a Log Analytics workspace?',
        'A Log Analytics workspace is a unique container for collected/aggregated/analyzed log data, providing geographic location, data isolation, and access scope. A, B, and D describe unrelated compute, dashboard, or storage constructs.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d06c848c-965a-4005-adf5-4a7836f48846', '6b931ca4-450a-452c-90fc-5cc8c50fd719', 'A dashboard used exclusively to visualize Azure Backup jobs', FALSE, 1),
    ('5179f47a-4635-48c4-97c3-bf4fd35f4fe2', '6b931ca4-450a-452c-90fc-5cc8c50fd719', 'A type of Azure Storage account optimized for blobs', FALSE, 2),
    ('9adbf520-526d-42c6-a71a-ab7508d8e974', '6b931ca4-450a-452c-90fc-5cc8c50fd719', 'A unique environment/container for log data collected and stored by Azure Monitor, providing geographic location, data isolation, and scope for access control', TRUE, 3),
    ('5eb0925b-e2a5-4cc6-a0c8-c72b13425557', '6b931ca4-450a-452c-90fc-5cc8c50fd719', 'A virtual machine dedicated to running KQL queries', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4eb6d724-7755-4ba9-ad1d-f0aa78282ac2', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Can a single Azure subscription contain more than one Log Analytics workspace?',
        'A subscription can contain multiple Log Analytics workspaces, for example to separate data geographically or organizationally. C wrongly imposes a one-workspace limit, and D and B introduce conditions not tied to this capability.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f922c33f-044e-4892-9ca2-c2329f90d14b', '4eb6d724-7755-4ba9-ad1d-f0aa78282ac2', 'Only if Azure Backup is not in use', FALSE, 1),
    ('d0491602-1269-4a5e-8fb5-05eb08eb70b1', '4eb6d724-7755-4ba9-ad1d-f0aa78282ac2', 'Yes, a subscription can have multiple workspaces, for example to separate data by geography or organizational boundary', TRUE, 2),
    ('d1fd4370-8636-401d-9c76-c8741756cc6f', '4eb6d724-7755-4ba9-ad1d-f0aa78282ac2', 'No, each subscription is limited to exactly one workspace', FALSE, 3),
    ('e6a4d54f-2d91-46c6-8bff-289193a5d4e6', '4eb6d724-7755-4ba9-ad1d-f0aa78282ac2', 'Only when using the legacy Log Analytics agent', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2d5bfdcb-d6ea-41f6-ac41-476b74e25fc6', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'In a Log Analytics workspace, Windows Event Logs collected from connected sources are stored in which table?',
        'Windows Event Logs collected from connected sources land in the Event table. Syslog (D) is for Linux system logs, Heartbeat (A) tracks agent connectivity, and Perf (B) stores performance counter data, not event log entries.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9f0f33fb-0f8c-42bd-93ce-9a290b80b7c1', '2d5bfdcb-d6ea-41f6-ac41-476b74e25fc6', 'Perf', FALSE, 1),
    ('fc6c5da2-8072-404b-9c04-e3130892973c', '2d5bfdcb-d6ea-41f6-ac41-476b74e25fc6', 'Heartbeat', FALSE, 2),
    ('fc2b91a9-d8ac-4b48-8d44-838c9c6f75b6', '2d5bfdcb-d6ea-41f6-ac41-476b74e25fc6', 'Event', TRUE, 3),
    ('086339f5-fec3-4e12-9d1a-197c9e984694', '2d5bfdcb-d6ea-41f6-ac41-476b74e25fc6', 'Syslog', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c79a6874-5f7c-4b3a-b88f-8b51b2ef49f3', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Syslog data collected from Linux computers connected to a Log Analytics workspace is stored in which table, and which sources typically generate this data?',
        'Syslog data specifically comes from Linux computers and is stored in the Syslog table. B incorrectly attributes it to Windows Servers and the Event table, A confuses it with the Heartbeat table, and C incorrectly describes it as a custom (_CL) table sourced from Azure Storage.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1cfd2bad-e261-42b2-98ce-96c5a97aa2a3', 'c79a6874-5f7c-4b3a-b88f-8b51b2ef49f3', 'The Heartbeat table; generated by SCOM management groups', FALSE, 1),
    ('87b4ab2a-ad81-48af-82c2-c48599785389', 'c79a6874-5f7c-4b3a-b88f-8b51b2ef49f3', 'The Event table; generated only by Windows Servers', FALSE, 2),
    ('9696aebb-e9f1-4f02-8b66-f9fda36c4aaa', 'c79a6874-5f7c-4b3a-b88f-8b51b2ef49f3', 'The Syslog table; generated by Linux computers', TRUE, 3),
    ('f4d03aec-987e-40e1-a7ca-8248d656e7e4', 'c79a6874-5f7c-4b3a-b88f-8b51b2ef49f3', 'A custom table with the _CL suffix; generated by Azure Storage accounts', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b8e34911-026b-48b9-8501-f212d34f261d', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the purpose of the Heartbeat table in a Log Analytics workspace?',
        'The Heartbeat table records periodic signals confirming that a connected agent/computer is alive and reporting. A, B, and C describe functions unrelated to heartbeat/connectivity monitoring.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1250cab8-578a-4712-ac7f-1cda9b9bd8af', 'b8e34911-026b-48b9-8501-f212d34f261d', 'It stores KQL query execution history', FALSE, 1),
    ('fc218af2-dcf8-4c6b-bfca-dac6570e8e1c', 'b8e34911-026b-48b9-8501-f212d34f261d', 'It stores custom application telemetry only', FALSE, 2),
    ('b92a579e-cdc5-4521-a300-fbf6399c38fd', 'b8e34911-026b-48b9-8501-f212d34f261d', 'It stores Azure Backup job status', FALSE, 3),
    ('8e4567bf-d76a-4bf1-a663-8dbcea01102e', 'b8e34911-026b-48b9-8501-f212d34f261d', 'It records periodic signals from connected agents, useful for confirming that a monitored computer or agent is alive and connected', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a59ae630-7301-493c-8e03-e9ad2d420a10', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'When you ingest data from a custom log source into a Log Analytics workspace, what naming convention is applied to the resulting table?',
        'Custom logs ingested into a Log Analytics workspace are stored in tables with a "_CL" suffix appended to the table name. B, C, and A describe naming or storage conventions that do not match the documented behavior.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('57c64478-bf5e-42e2-8be7-8d8f588e009a', 'a59ae630-7301-493c-8e03-e9ad2d420a10', 'The table name is always "CustomLog"', FALSE, 1),
    ('bbf1f106-926c-48c0-9773-a87aef84db44', 'a59ae630-7301-493c-8e03-e9ad2d420a10', 'The table name receives a ".custom" prefix', FALSE, 2),
    ('999f5579-1164-42f2-9fa8-077c5d12c9dc', 'a59ae630-7301-493c-8e03-e9ad2d420a10', 'The table name receives a "_CL" suffix', TRUE, 3),
    ('7bef8825-b77e-46f9-b099-db3301185acc', 'a59ae630-7301-493c-8e03-e9ad2d420a10', 'Custom logs cannot be stored in tables; they are stored only as blobs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e4201bbc-5e7a-4e70-90ec-8c0d7d8414b2', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'In KQL, which operator is used to filter rows based on a specified condition?',
        'The where operator filters rows based on a condition. project (C) selects columns, summarize (A) aggregates data, and join (B) combines tables — none of which filter rows by condition.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3bc0c1bc-7a87-4939-912c-e138f203e249', 'e4201bbc-5e7a-4e70-90ec-8c0d7d8414b2', 'project', FALSE, 1),
    ('5b362eb5-f786-41dd-97ac-9fb92da89735', 'e4201bbc-5e7a-4e70-90ec-8c0d7d8414b2', 'join', FALSE, 2),
    ('14fd47b1-8e80-4884-8f16-728e0249cebe', 'e4201bbc-5e7a-4e70-90ec-8c0d7d8414b2', 'summarize', FALSE, 3),
    ('eaa9e222-8af6-48a4-802f-6f19094179d3', 'e4201bbc-5e7a-4e70-90ec-8c0d7d8414b2', 'where', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a4327a92-9188-4b90-b5e0-694f13255ee6', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'In the KQL query `Event | where EventLevelName == "Error" | summarize ErrorCount = count() by Computer`, what is the role of the summarize operator combined with count()?',
        'summarize combined with count() aggregates rows into a count of matching records grouped by the specified column (Computer). C describes ordering, which is a separate operation; A is incorrect since summarize does aggregate; D describes the preceding where clause, not summarize itself.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f50a1cee-9269-4023-b794-590f0502a017', 'a4327a92-9188-4b90-b5e0-694f13255ee6', 'It aggregates rows, producing a count of matching records grouped by the specified column', TRUE, 1),
    ('bd86ec50-25cd-4b1f-be02-43e8f5ff3855', 'a4327a92-9188-4b90-b5e0-694f13255ee6', 'It sorts the results alphabetically by computer name', FALSE, 2),
    ('5c35c29a-ca41-4462-8ab5-fb552615c23e', 'a4327a92-9188-4b90-b5e0-694f13255ee6', 'It removes duplicate rows without aggregating', FALSE, 3),
    ('55d388c0-f42e-465c-89ee-2ccb1ddf7bde', 'a4327a92-9188-4b90-b5e0-694f13255ee6', 'It filters out all rows where EventLevelName is not "Error"', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('58421eac-3e24-4d66-aac4-e140ac551c66', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which KQL function would you use to count the number of distinct values in a column, such as the number of unique computers reporting errors?',
        'dcount() returns the count of distinct values in a column. count() (A) counts all rows regardless of uniqueness, avg() (C) computes an average, and sum() (D) totals numeric values — none provide a distinct count.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fdce7fa1-7dc2-4412-8b56-5d0b4ec4a14b', '58421eac-3e24-4d66-aac4-e140ac551c66', 'sum()', FALSE, 1),
    ('9f64d983-412f-4140-b955-96ecf9ebee28', '58421eac-3e24-4d66-aac4-e140ac551c66', 'count()', FALSE, 2),
    ('7cf28a62-4db4-4018-a792-5c7c31576091', '58421eac-3e24-4d66-aac4-e140ac551c66', 'dcount()', TRUE, 3),
    ('91f106b9-0477-4e9f-8ef9-514a6116fec1', '58421eac-3e24-4d66-aac4-e140ac551c66', 'avg()', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6493c219-17e5-4dd7-b1a8-7c5a741fe5d7', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the purpose of the bin() function in a KQL query?',
        'bin() groups numeric or datetime values into fixed-size buckets, commonly used for time bucketing (e.g., hourly intervals) of TimeGenerated. C, D, and B describe unrelated operations (null filtering, joining, type conversion).', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('77cf4a16-8bb0-470c-b617-df168cc7f89c', '6493c219-17e5-4dd7-b1a8-7c5a741fe5d7', 'To remove rows containing null values', FALSE, 1),
    ('185a4a3b-fbbe-4aa2-805a-2576efc96264', '6493c219-17e5-4dd7-b1a8-7c5a741fe5d7', 'To group numeric or datetime values into fixed-size buckets, commonly used to bucket TimeGenerated values into time intervals such as 1-hour segments', TRUE, 2),
    ('5551f9c3-1bb0-4a18-924d-24afceb4868b', '6493c219-17e5-4dd7-b1a8-7c5a741fe5d7', 'To convert a column from string to numeric type', FALSE, 3),
    ('98d48324-4e0c-435c-9669-119c0b72d473', '6493c219-17e5-4dd7-b1a8-7c5a741fe5d7', 'To join two tables together on a common key', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f59bcad7-b7bb-4525-904e-0d248127ab9d', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which pair of KQL operators are used to control the sort order of query results, supporting both ascending and descending order?',
        'order by and sort by control the sort order of results, ascending or descending. project/extend (D) manipulate columns, top/take (A) limit row counts, and summarize/by (C) perform aggregation and grouping, not sorting.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7f765a11-941f-492f-8dd1-300556f8ec60', 'f59bcad7-b7bb-4525-904e-0d248127ab9d', 'summarize and by', FALSE, 1),
    ('3698ad7b-002f-4a8b-8a8a-325ba08fe7ce', 'f59bcad7-b7bb-4525-904e-0d248127ab9d', 'order by and sort by', TRUE, 2),
    ('82253f1e-683c-497c-ad45-85c6ac4bdf56', 'f59bcad7-b7bb-4525-904e-0d248127ab9d', 'top and take', FALSE, 3),
    ('0e27cced-3ab8-4713-857b-a264381b1356', 'f59bcad7-b7bb-4525-904e-0d248127ab9d', 'project and extend', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9325d9b4-1c6c-4b17-a511-5f2d14701fd4', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the key difference between the KQL `top` and `take` operators?',
        'top returns rows based on a specified sort order, while take (or limit) returns an arbitrary number of rows without guaranteeing order. C is incorrect since they behave differently, A imposes a false restriction, and D mischaracterizes both as performing aggregation/filtering rather than row limiting.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e72cc59e-5a76-4ab6-b050-8fc7fc20502a', '9325d9b4-1c6c-4b17-a511-5f2d14701fd4', 'There is no difference; they are interchangeable in every scenario', FALSE, 1),
    ('76972a9f-993f-4506-8e78-864aba84895c', '9325d9b4-1c6c-4b17-a511-5f2d14701fd4', 'top aggregates data while take filters data', FALSE, 2),
    ('21148042-217e-490d-9653-12ff1018adf4', '9325d9b4-1c6c-4b17-a511-5f2d14701fd4', 'take can only be used with numeric columns, while top works with all data types', FALSE, 3),
    ('d8219608-beea-4494-9fd5-9437c8e94757', '9325d9b4-1c6c-4b17-a511-5f2d14701fd4', 'top returns a specified number of rows based on a sort order, while take (or limit) returns an arbitrary specified number of rows without guaranteeing order', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('27d604be-7c0d-427c-a284-89c9a9bc98e9', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'In KQL, which operator is used to select a specific subset of columns to include in the query results?',
        'project selects a specific subset of columns for the output. summarize (B) aggregates data, render (C) visualizes results, and bin (D) buckets values — none select columns.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3de14ff5-eeaf-43fd-a10a-b54484b39ace', '27d604be-7c0d-427c-a284-89c9a9bc98e9', 'project', TRUE, 1),
    ('69d4ff72-7fd2-4149-aa76-c35d9ca2a6f5', '27d604be-7c0d-427c-a284-89c9a9bc98e9', 'bin', FALSE, 2),
    ('32aa9a1f-b9bb-44d9-817d-bd5547240cdb', '27d604be-7c0d-427c-a284-89c9a9bc98e9', 'render', FALSE, 3),
    ('26b35a7e-06d2-4748-b3d7-22c3a44eb8ff', '27d604be-7c0d-427c-a284-89c9a9bc98e9', 'summarize', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c25621ee-3f89-49ae-a3ab-177300566b5f', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which KQL operator would you use to combine records from two different tables based on a related column, similar to a SQL join?',
        'join combines records from two tables based on a related column, analogous to a SQL join. render (C) visualizes output, project (D) selects columns, and bin (A) buckets values, none of which combine tables.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7fdf12e4-14a5-45c7-8d38-deb5851748ab', 'c25621ee-3f89-49ae-a3ab-177300566b5f', 'join', TRUE, 1),
    ('e33c5242-47c5-4d6a-951d-e8f7d4ecf6ef', 'c25621ee-3f89-49ae-a3ab-177300566b5f', 'render', FALSE, 2),
    ('4b0cd683-8986-4291-a14f-3b05f897ab16', 'c25621ee-3f89-49ae-a3ab-177300566b5f', 'project', FALSE, 3),
    ('dcf55f5b-9875-46b3-9a98-936054a91cf0', 'c25621ee-3f89-49ae-a3ab-177300566b5f', 'bin', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d38cfe2a-2318-4474-b8df-b72a52b6bf3e', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Besides displaying results in the Log Analytics query editor, what can you do with the results of a KQL query in a Log Analytics workspace?',
        'Log Analytics query results can be pinned to Azure dashboards, exported to Power BI or Excel, or used as the basis for a log alert rule. D and B understate these capabilities, and A incorrectly ties KQL results directly to backup policy creation, which is unrelated functionality.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c38e07a8-7296-4382-82d8-f0aa59c4b4d3', 'd38cfe2a-2318-4474-b8df-b72a52b6bf3e', 'Only export them as an unformatted text file', FALSE, 1),
    ('d44e9794-6d15-4afd-ad2c-6ecf78c9dd76', 'd38cfe2a-2318-4474-b8df-b72a52b6bf3e', 'Convert them directly into a Recovery Services Vault backup policy', FALSE, 2),
    ('3d49383e-ab00-4e7e-add9-eb108fb540fb', 'd38cfe2a-2318-4474-b8df-b72a52b6bf3e', 'Nothing further can be done; results are only visible for the current session', FALSE, 3),
    ('5f36acae-fd33-4218-8161-505494d10f32', 'd38cfe2a-2318-4474-b8df-b72a52b6bf3e', 'Pin them to an Azure dashboard, export them to Power BI or Excel, or use them as the basis for a log alert rule', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('98c8b91f-7193-463c-a45a-e1e529358431', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What does VM insights provide, and what does it require to function?',
        'VM insights monitors VM health and performance and is deployed using the Dependency Agent plus Azure Monitor Agent, requiring a Log Analytics workspace to store data. B, A, and D describe unrelated cost, network security, or backup functionality.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ceb99cb9-a404-4017-a666-842d9934e19b', '98c8b91f-7193-463c-a45a-e1e529358431', 'It provides monitoring of VM health and performance, and requires the Dependency Agent, the Azure Monitor Agent, and a Log Analytics workspace', TRUE, 1),
    ('d568e6c5-d13b-4d07-8349-a1a09750ddbd', '98c8b91f-7193-463c-a45a-e1e529358431', 'It provides backup scheduling for VMs, requiring a Recovery Services Vault', FALSE, 2),
    ('eed0cbb7-609e-4677-9aa8-65d52f0205af', '98c8b91f-7193-463c-a45a-e1e529358431', 'It provides cost optimization recommendations only, and requires no configuration', FALSE, 3),
    ('753588a2-8435-4f8e-b04d-0280a7bf7b9e', '98c8b91f-7193-463c-a45a-e1e529358431', 'It provides only network security group monitoring, requiring Azure Firewall', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ad3fd2c1-6da2-4856-a153-595ccba8d2f6', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the key distinction between host metrics and guest OS (client) metrics for an Azure VM?',
        'Host metrics are platform-level (e.g., CPU percentage, network in/out, disk bytes) and require no agent, while guest OS metrics need an agent inside the VM and provide richer, per-process data. A reverses the requirement, B denies a real distinction, and C incorrectly ties the distinction to OS type rather than metric origin.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('94081d70-e55d-481a-b99c-b4a7cdaad3aa', 'ad3fd2c1-6da2-4856-a153-595ccba8d2f6', 'Host metrics are platform-level metrics (e.g., CPU percentage, network in/out, disk bytes) available by default with no agent required, while guest OS metrics require an agent inside the VM and provide richer data such as per-process CPU/memory', TRUE, 1),
    ('e5814604-e074-4d51-a97d-41ba6c2c6194', 'ad3fd2c1-6da2-4856-a153-595ccba8d2f6', 'There is no distinction; both terms refer to the same metric set', FALSE, 2),
    ('081e51c8-af80-4e06-8260-0dbe2c0b8f65', 'ad3fd2c1-6da2-4856-a153-595ccba8d2f6', 'Host metrics require an agent installed inside the VM, while guest OS metrics do not', FALSE, 3),
    ('fc6c3881-a823-4013-9f99-ccca37cb6a29', 'ad3fd2c1-6da2-4856-a153-595ccba8d2f6', 'Host metrics are only available for Linux VMs, while guest metrics are only available for Windows VMs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ff25b4d5-60d8-47b4-b1e9-feed7f6486c2', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following is an example of a host-level (platform) metric available for an Azure VM without installing any agent?',
        'CPU percentage is a host-level platform metric available by default without any agent. Per-process memory (C), custom event logs (D), and SQL query execution time (A) all require an agent inside the guest OS to collect.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8e2b99be-881b-41d1-95ff-f7b2268510cc', 'ff25b4d5-60d8-47b4-b1e9-feed7f6486c2', 'Per-process memory usage', FALSE, 1),
    ('ba5c1e7c-cef8-47da-bd3a-7115d3cc9e3a', 'ff25b4d5-60d8-47b4-b1e9-feed7f6486c2', 'SQL Server query execution time', FALSE, 2),
    ('d1a25d52-5db4-45ac-9305-2edaa0347acd', 'ff25b4d5-60d8-47b4-b1e9-feed7f6486c2', 'Custom application event log entries', FALSE, 3),
    ('2c48ada3-9bf5-4fca-a56c-6529bb4a402d', 'ff25b4d5-60d8-47b4-b1e9-feed7f6486c2', 'CPU percentage', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b8ca791f-8f79-42d1-9ed9-7f669baac21a', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which Azure Monitor tool allows you to plot near-real-time platform metrics for a VM with minimal setup and low latency?',
        'Metrics Explorer is designed to plot near-real-time platform metrics with minimal setup and low latency. The Log Analytics query editor (D) is used for KQL-based log analysis with more latency, Azure Advisor (A) provides recommendations, and Backup Center (B) manages backups.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a46c1af2-4dbd-477c-becf-99890b08fe50', 'b8ca791f-8f79-42d1-9ed9-7f669baac21a', 'Azure Advisor', FALSE, 1),
    ('553eb260-438d-48f0-bf1a-6bb689557f8e', 'b8ca791f-8f79-42d1-9ed9-7f669baac21a', 'Backup Center', FALSE, 2),
    ('df2a6425-bcd5-4e69-bf19-2befcfe9db3b', 'b8ca791f-8f79-42d1-9ed9-7f669baac21a', 'Log Analytics workspace query editor', FALSE, 3),
    ('ac316b94-09a0-40c7-85df-3083541f8a0a', 'b8ca791f-8f79-42d1-9ed9-7f669baac21a', 'Metrics Explorer', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('28e516b3-40f3-4062-b367-d9eef40f20a0', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Azure Monitor alert severities range across five levels. Which severity represents the most critical condition?',
        'Sev 0 represents the most critical alert severity, with severities descending through Sev 1 to the least severe Sev 4 (verbose). C, A, and D all represent less critical severities than Sev 0.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ec6398ae-cd2b-4cf9-8187-b90cb384afaa', '28e516b3-40f3-4062-b367-d9eef40f20a0', 'Sev 3', FALSE, 1),
    ('e29dbcfc-e301-4b75-b61a-ac64406b9dd4', '28e516b3-40f3-4062-b367-d9eef40f20a0', 'Sev 0', TRUE, 2),
    ('d4fc09d5-41fb-413e-a715-cdb3e43eb35e', '28e516b3-40f3-4062-b367-d9eef40f20a0', 'Sev 4', FALSE, 3),
    ('28ff1110-ac68-4a42-9fd8-374e7d3ce8c4', '28e516b3-40f3-4062-b367-d9eef40f20a0', 'Sev 1', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e87de501-2f29-4578-b678-3f60c9861b8f', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which set of statuses correctly represents the lifecycle states of an Azure Monitor alert?',
        'Azure Monitor alerts move through New, Acknowledged, and Closed statuses. The other option sets (A, B, C) do not reflect the documented Azure Monitor alert lifecycle terminology.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('584b6882-393a-479d-8557-de48a7d23b88', 'e87de501-2f29-4578-b678-3f60c9861b8f', 'Pending, Firing, Expired', FALSE, 1),
    ('92106cef-e0a9-4c31-8afc-1793ac191273', 'e87de501-2f29-4578-b678-3f60c9861b8f', 'Active, Suppressed, Archived', FALSE, 2),
    ('1875de4f-1f3e-477e-bd29-927c50b86b7d', 'e87de501-2f29-4578-b678-3f60c9861b8f', 'New, Acknowledged, Closed', TRUE, 3),
    ('ac7943cc-3f6c-4f96-97fd-12f014a19bfe', 'e87de501-2f29-4578-b678-3f60c9861b8f', 'Open, In Progress, Resolved', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a3ad1ee2-ee3a-40b6-8a65-4419e0171c7a', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What best characterizes a metric alert in Azure Monitor?',
        'Metric alerts evaluate numeric platform data near real time and frequently, making them well suited to fast-changing conditions. C describes log alerts, D describes activity log alerts, and A imposes an unrelated Recovery Services Vault dependency.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d54a10d2-4d1e-45ec-b186-06210f78dd66', 'a3ad1ee2-ee3a-40b6-8a65-4419e0171c7a', 'It is based on a scheduled KQL query and can take several minutes due to query and ingestion latency', FALSE, 1),
    ('e1f3e47e-2808-40aa-a65c-6acbba5a29bd', 'a3ad1ee2-ee3a-40b6-8a65-4419e0171c7a', 'It requires a Recovery Services Vault to be configured', FALSE, 2),
    ('45eb3318-8a02-4710-b0af-82a3a1fb56b4', 'a3ad1ee2-ee3a-40b6-8a65-4419e0171c7a', 'It only fires on control-plane events such as resource deletion', FALSE, 3),
    ('c71998fa-dce6-4fba-91ff-0c962cd087a1', 'a3ad1ee2-ee3a-40b6-8a65-4419e0171c7a', 'It evaluates numeric platform data near real time and frequently, making it well-suited to fast-changing conditions like CPU spikes', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9a00e51a-f9a3-402c-aa49-ab5063e2f19b', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Why do log alerts in Azure Monitor typically fire more slowly than metric alerts?',
        'Log alerts rely on a scheduled KQL query against Log Analytics, introducing both query execution time and data ingestion latency, making them slower than metric alerts. C, A, and B describe inaccurate or fabricated causes.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b67e7c44-4e39-453e-a21e-2cd0ec11edbe', '9a00e51a-f9a3-402c-aa49-ab5063e2f19b', 'Log alerts are deprecated and processed only once per day', FALSE, 1),
    ('7e23964a-e73f-422e-a4b1-2df7cd6d3f87', '9a00e51a-f9a3-402c-aa49-ab5063e2f19b', 'Log alerts require manual approval before firing', FALSE, 2),
    ('f66942f3-4408-4711-8888-5857ffc28bdc', '9a00e51a-f9a3-402c-aa49-ab5063e2f19b', 'Log alerts are based on a scheduled KQL query against a Log Analytics workspace, which introduces both query execution time and data ingestion latency', TRUE, 3),
    ('34a91306-5046-473a-bcb6-df1f75795ead', '9a00e51a-f9a3-402c-aa49-ab5063e2f19b', 'Log alerts can only be configured through Azure Advisor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a4ed2537-5f31-4e00-a741-756fbabf6192', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'An administrator wants to be notified whenever a specific Azure resource, such as a virtual network, is deleted or modified. Which alert type is designed for this scenario?',
        'Activity log alerts fire on control-plane events such as resource deletion or modification recorded in the Activity Log. Metric alerts (B) evaluate numeric data, log alerts (A) run scheduled KQL queries, and Smart Groups (C) are for grouping alerts, not detecting resource changes.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0725acae-834e-4f77-9446-888690a310ab', 'a4ed2537-5f31-4e00-a741-756fbabf6192', 'Log alert', FALSE, 1),
    ('6c05ca60-97d0-49fd-8f3d-c48dfe025b76', 'a4ed2537-5f31-4e00-a741-756fbabf6192', 'Activity log alert', TRUE, 2),
    ('d1d1a958-6c64-487d-a452-2bba6171d6ea', 'a4ed2537-5f31-4e00-a741-756fbabf6192', 'Metric alert', FALSE, 3),
    ('2a74a8db-3d9c-4ccb-854c-df78dda3db49', 'a4ed2537-5f31-4e00-a741-756fbabf6192', 'Smart Group alert', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e27e20f5-cf94-43cd-b153-9d44b56c6ec1', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the function of an Action Group in Azure Monitor alerting?',
        'Action Groups define the notification and automated actions (email, SMS, webhook, Azure Function, Automation Runbook, ITSM connector) triggered when an alert fires. A describes Smart Groups, and C and D describe unrelated retention/reporting functionality.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4bda6342-0f65-4fcd-ab6f-833a894c82a7', 'e27e20f5-cf94-43cd-b153-9d44b56c6ec1', 'It defines the retention policy for alert data', FALSE, 1),
    ('8178ba84-085a-42a2-a266-7059453a9f18', 'e27e20f5-cf94-43cd-b153-9d44b56c6ec1', 'It groups related alerts using machine learning to reduce noise', FALSE, 2),
    ('0f7dc50e-ea9b-4404-8233-cf2343e7da05', 'e27e20f5-cf94-43cd-b153-9d44b56c6ec1', 'It stores historical alert data for compliance reporting', FALSE, 3),
    ('17fcd0f5-1100-4aec-a728-c8b01ce7dee7', 'e27e20f5-cf94-43cd-b153-9d44b56c6ec1', 'It defines the set of notification and/or automated actions (such as email, SMS, webhook, Azure Function, or Automation Runbook) that are triggered when an alert fires', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('add21bbb-ddf6-4669-8de1-2f4f354b2b42', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the purpose of Smart Groups in Azure Monitor?',
        'Smart Groups use machine learning to group related alerts together, reducing alert noise and speeding root-cause identification. C overstates their function (they don''t auto-resolve), D is false since Action Groups remain necessary for actions, and B misapplies the concept to workspace organization.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('75cfab7a-3d3d-4cd3-81e5-049998ec28fb', 'add21bbb-ddf6-4669-8de1-2f4f354b2b42', 'They automatically resolve alerts without administrator involvement', FALSE, 1),
    ('d8c8e033-38d7-45ec-b918-13c390038ecd', 'add21bbb-ddf6-4669-8de1-2f4f354b2b42', 'They use machine learning to group related alerts together, reducing alert noise and helping identify the underlying issue faster', TRUE, 2),
    ('d92cc220-23cf-4b5b-9094-07187dd4041e', 'add21bbb-ddf6-4669-8de1-2f4f354b2b42', 'They replace the need for action groups', FALSE, 3),
    ('aa769047-3ff5-408a-b7e5-3abc1dea0796', 'add21bbb-ddf6-4669-8de1-2f4f354b2b42', 'They are used to organize Log Analytics workspaces by region', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8bcd09f2-43cb-499c-b689-add5eff06376', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is Azure Advisor?',
        'Azure Advisor is a personalized cloud consultant analyzing configuration and usage telemetry to provide recommendations. D, A, and B incorrectly narrow it to backup configuration, KQL querying, or agent-based data collection.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e85d8e19-be3a-45f6-8d59-636de46bc386', '8bcd09f2-43cb-499c-b689-add5eff06376', 'A tool exclusively for configuring backup policies', FALSE, 1),
    ('8c844663-5baf-4c1b-9282-968bd7317f25', '8bcd09f2-43cb-499c-b689-add5eff06376', 'A personalized cloud consultant that analyzes your resource configuration and usage telemetry to provide recommendations for improving your deployments', TRUE, 2),
    ('95dfd3ba-3b23-4f24-a36c-cbf5ced3a60d', '8bcd09f2-43cb-499c-b689-add5eff06376', 'An agent installed on VMs to collect performance counters', FALSE, 3),
    ('73a52aab-5793-4c74-bd70-3f3d75a2fa24', '8bcd09f2-43cb-499c-b689-add5eff06376', 'A KQL query editor for Log Analytics workspaces', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cf5b6d98-0be5-4a47-8bc9-9f0a0b09978a', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Azure Advisor recommendations are organized into five categories. Which of the following is NOT one of them?',
        'Azure Advisor''s five categories are Reliability/High Availability, Security, Performance, Operational Excellence, and Cost — "Data Residency" is not one of them, making it the correct choice for "NOT one of them."', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d2556daa-7d6c-43c3-b039-0ca17607be74', 'cf5b6d98-0be5-4a47-8bc9-9f0a0b09978a', 'Cost', FALSE, 1),
    ('a8301aec-bd7f-4fc9-82f1-9f130bc64efb', 'cf5b6d98-0be5-4a47-8bc9-9f0a0b09978a', 'Security', FALSE, 2),
    ('8f043f64-c36e-44a2-9858-d2dfd18adae1', 'cf5b6d98-0be5-4a47-8bc9-9f0a0b09978a', 'Reliability', FALSE, 3),
    ('b661ddb7-4cc6-4de1-a6cc-eefaf416343f', 'cf5b6d98-0be5-4a47-8bc9-9f0a0b09978a', 'Data Residency', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a0f29f4a-a818-41a1-ae32-1fce063cb684', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'A team notices that a metric alert configured on CPU percentage fires within a minute of the threshold being crossed, while a log alert on error counts in Log Analytics takes several minutes to fire. What best explains this difference?',
        'The observed timing difference is explained by metric alerts evaluating near-real-time platform data frequently, versus log alerts depending on scheduled KQL execution plus ingestion latency. B, C, and D present inaccurate or reversed explanations.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f20b5ea4-d859-414e-a867-88cd7540ee91', 'a0f29f4a-a818-41a1-ae32-1fce063cb684', 'Log alerts are always faster because they use cached data', FALSE, 1),
    ('a0d3026b-0aa8-4f7f-ad4c-86c165f05e90', 'a0f29f4a-a818-41a1-ae32-1fce063cb684', 'There is no meaningful difference; the observed delay is a configuration error', FALSE, 2),
    ('0ebbcd79-9e29-4fe6-9f81-00b7ab3639d5', 'a0f29f4a-a818-41a1-ae32-1fce063cb684', 'Metric alerts require a Log Analytics workspace, which slows them down', FALSE, 3),
    ('ebc54231-975c-41c8-b237-76cdd6d4cf1a', 'a0f29f4a-a818-41a1-ae32-1fce063cb684', 'Metric alerts evaluate near-real-time platform data frequently, while log alerts depend on scheduled KQL query execution plus log ingestion latency', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b4e998fc-f3cf-4ba4-9f73-de70adaa9991', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following is an example of the type of remediation categories Azure Advisor covers besides security and cost?',
        'Beyond Security and Cost, Azure Advisor''s remaining categories are Reliability/High Availability, Performance, and Operational Excellence. B, C, and A list Azure Backup or Azure Monitor concepts unrelated to Advisor''s recommendation categories.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3a5ed6c1-d9e0-4a2d-b45c-82e9f1c55832', 'b4e998fc-f3cf-4ba4-9f73-de70adaa9991', 'Reliability/High Availability, Performance, and Operational Excellence', TRUE, 1),
    ('bf108fd9-f9ac-4bdc-8d14-ab5eb4b2ba66', 'b4e998fc-f3cf-4ba4-9f73-de70adaa9991', 'Backup retention, Soft delete, and Instant Restore', FALSE, 2),
    ('83a5dcdf-c5f6-4583-aed0-a9e0c2e2854a', 'b4e998fc-f3cf-4ba4-9f73-de70adaa9991', 'Data Collection Rules, Custom logs, and Heartbeat monitoring', FALSE, 3),
    ('c932ceb0-fc25-4c3e-9135-bc1d33981971', 'b4e998fc-f3cf-4ba4-9f73-de70adaa9991', 'Availability sets, Static IP configuration, and Recovery points', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4744dca7-efbb-430c-b1b6-9f39d027c5e0', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which best describes Azure Backup?',
        'Azure Backup is Azure''s backup-as-a-service offering, providing centrally managed backup for Azure and on-premises workloads. D describes Azure Site Recovery instead, and A and B understate its actual scope.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('abd7a473-2fac-4301-b408-807b7653ebcd', '4744dca7-efbb-430c-b1b6-9f39d027c5e0', 'A feature limited to backing up Azure SQL databases only', FALSE, 1),
    ('de5ec6aa-1f5d-4334-8901-33968e8af3bb', '4744dca7-efbb-430c-b1b6-9f39d027c5e0', 'Azure''s backup-as-a-service offering, providing centrally managed, secure backup for both Azure and on-premises workloads', TRUE, 2),
    ('e9ae3599-8229-461d-89e0-a3e0fff00afd', '4744dca7-efbb-430c-b1b6-9f39d027c5e0', 'A monitoring tool exclusively for tracking backup costs', FALSE, 3),
    ('0225dd03-e344-4ae8-917d-6d84165402f4', '4744dca7-efbb-430c-b1b6-9f39d027c5e0', 'A disaster recovery service that replicates VMs to a secondary region', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3bfcf9fb-ea51-4331-9d02-2957bdeffab7', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which storage redundancy options are available for data stored by Azure Backup?',
        'Azure Backup offers LRS, ZRS, and GRS as storage redundancy options for backup data. C and B wrongly limit it to a single option, and D references an unrelated disk tier rather than a redundancy option.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6de28b48-5083-4203-b041-f938e7ce584a', '3bfcf9fb-ea51-4331-9d02-2957bdeffab7', 'LRS, ZRS, and GRS', TRUE, 1),
    ('64c8aab9-c75c-45fd-9617-c826547eb947', '3bfcf9fb-ea51-4331-9d02-2957bdeffab7', 'Premium SSD replication only', FALSE, 2),
    ('dee19eb5-fac4-45b3-9950-a83946954bbe', '3bfcf9fb-ea51-4331-9d02-2957bdeffab7', 'Only Locally Redundant Storage (LRS)', FALSE, 3),
    ('414f9f34-f457-494d-806f-c87edac55dae', '3bfcf9fb-ea51-4331-9d02-2957bdeffab7', 'Only Geo-Redundant Storage (GRS) is supported', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67d6d1e8-ae2b-4d32-a482-cc982a261105', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Regarding data transfer charges with Azure Backup, which statement is accurate?',
        'Azure Backup provides unlimited data transfer with no charge for inbound/outbound transfer, except for the initial offline seeding via the Azure Import/Export service. A and B misstate the charging model, and C incorrectly ties charges to VM size rather than transfer method.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('01b000e3-e7f0-4526-9216-dc9e180950d7', '67d6d1e8-ae2b-4d32-a482-cc982a261105', 'All inbound and outbound data transfer is always charged, including the initial backup', FALSE, 1),
    ('3f01db8b-490b-457c-9233-ea656d5ce5a3', '67d6d1e8-ae2b-4d32-a482-cc982a261105', 'Azure Backup offers unlimited data transfer with no charge for inbound/outbound transfer, except for the initial offline seeding when using the Azure Import/Export service', TRUE, 2),
    ('d43ad886-6dd3-4a23-88f1-6b8eb096b007', '67d6d1e8-ae2b-4d32-a482-cc982a261105', 'Only outbound restores are charged; backups are always free regardless of method', FALSE, 3),
    ('49412846-d096-4951-9a16-259bf289a543', '67d6d1e8-ae2b-4d32-a482-cc982a261105', 'Data transfer charges depend solely on the VM size, not the backup method', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b58bfb3f-8032-4bf6-874b-5249d33fc10c', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following workloads is backed up using a classic Recovery Services Vault (without requiring an on-premises agent)?',
        'Azure Virtual Machines are backed up natively using a classic Recovery Services Vault without requiring an on-premises agent. Files/folders (C) require the MARS agent, and Hyper-V (D) and VMware (A) VMs require MABS/agent-based backup since they are on-premises workloads.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d7823a6a-e30d-45bb-9905-f274c1f462a2', 'b58bfb3f-8032-4bf6-874b-5249d33fc10c', 'Files and folders on a physical server', FALSE, 1),
    ('83f46160-8542-46fd-905a-8cb293f44660', 'b58bfb3f-8032-4bf6-874b-5249d33fc10c', 'Hyper-V virtual machines', FALSE, 2),
    ('5acd1679-b243-4604-9690-0464c120e59e', 'b58bfb3f-8032-4bf6-874b-5249d33fc10c', 'Azure Virtual Machines', TRUE, 3),
    ('08e2a5f6-7772-434b-a141-7699bb65877c', 'b58bfb3f-8032-4bf6-874b-5249d33fc10c', 'VMware virtual machines', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9507049b-c745-4f24-b973-5dd52e541618', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which newer Azure resource type is designed to target backup of modern data services such as Azure Database for PostgreSQL, Azure Managed Disks, and Azure Blobs?',
        'The newer Backup Vault resource type targets modern data services such as PostgreSQL, Managed Disks, and Blobs. Recovery Services Vault (D) is for classic workloads, Log Analytics workspace (A) is unrelated to backup storage, and Backup Center (C) is a management interface, not a storage resource.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1fad57bb-b027-4039-a2a1-dbbf46d17027', '9507049b-c745-4f24-b973-5dd52e541618', 'Backup Vault', TRUE, 1),
    ('18931a0e-0476-40c9-9e66-856abb70ae97', '9507049b-c745-4f24-b973-5dd52e541618', 'Recovery Services Vault', FALSE, 2),
    ('ec8fd380-23ca-404b-8236-1b20be02e7c0', '9507049b-c745-4f24-b973-5dd52e541618', 'Backup Center', FALSE, 3),
    ('e03576c9-4b98-4496-b04e-69e9c0424619', '9507049b-c745-4f24-b973-5dd52e541618', 'Log Analytics workspace', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('54a4f482-45bf-4d7b-b010-07416cd29d38', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the Microsoft Azure Recovery Services (MARS) agent used for?',
        'The MARS agent backs up files and folders directly from a physical or virtual machine to a Recovery Services Vault. B describes MABS''s application-aware capability, A describes ASR-style replication, and D is unrelated to MARS functionality.', 51, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c1c8c5ea-b68a-42a0-9d7e-8a294a596018', '54a4f482-45bf-4d7b-b010-07416cd29d38', 'Replicating VMware VMs to Azure for disaster recovery', FALSE, 1),
    ('63f468d0-3cd3-46a9-87dc-5ebd2b039a65', '54a4f482-45bf-4d7b-b010-07416cd29d38', 'Providing application-aware backup of SQL Server databases', FALSE, 2),
    ('b2c312a5-12db-41ce-ad55-4573eaf8af49', '54a4f482-45bf-4d7b-b010-07416cd29d38', 'Managing Azure Kubernetes Service backup policies', FALSE, 3),
    ('fe041440-35ef-4292-81f2-275a5c970e4c', '54a4f482-45bf-4d7b-b010-07416cd29d38', 'Backing up files and folders directly from a physical or virtual machine to a Recovery Services Vault', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('47f0297d-ff08-47c6-941f-bfa0476d802f', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following is a known limitation of the MARS agent?',
        'MARS is limited to 3 backups per day, is not application-aware, and does not support Linux. A contradicts its lack of application awareness, B incorrectly requires System Center DPM (that''s MABS), and D misstates its restore granularity, which actually supports file/folder/volume-level restore.', 52, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('28a57616-f803-4447-a7b0-c18cce7a9a92', '47f0297d-ff08-47c6-941f-bfa0476d802f', 'It can perform a maximum of 3 backups per day, is not application-aware, and does not support Linux', TRUE, 1),
    ('acf9c4c6-7b35-4ed7-9a35-394f22c31344', '47f0297d-ff08-47c6-941f-bfa0476d802f', 'It can only restore entire virtual machines, not individual files', FALSE, 2),
    ('a07ba20c-2bb0-4fbe-bff2-771f91eed68e', '47f0297d-ff08-47c6-941f-bfa0476d802f', 'It requires System Center DPM to function', FALSE, 3),
    ('7c5c1f8b-a000-455c-9375-6dab1043d99c', '47f0297d-ff08-47c6-941f-bfa0476d802f', 'It supports application-consistent backups of SQL Server', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2ebcafdb-c652-45cb-93f4-9842fa9fee0a', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is Microsoft Azure Backup Server (MABS)?',
        'MABS (which can work with or replace System Center DPM) provides application-aware backup, granular recovery, and support for Hyper-V/VMware VMs including Linux. C describes MARS instead, and D and B mischaracterize its scope.', 53, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1fbb9d2e-1f54-4f61-9a8f-f31a00a7614c', '2ebcafdb-c652-45cb-93f4-9842fa9fee0a', 'A lightweight agent limited to file/folder backup with no application awareness', FALSE, 1),
    ('c845ccaa-0147-41b8-8eba-a0a657f5d6ed', '2ebcafdb-c652-45cb-93f4-9842fa9fee0a', 'A backup solution (which can work with or replace System Center DPM) that provides application-aware backup, granular recovery, and support for backing up Hyper-V and VMware VMs, including Linux VMs', TRUE, 2),
    ('32194ce0-cb52-4373-ae44-8ec8a151b138', '2ebcafdb-c652-45cb-93f4-9842fa9fee0a', 'A tool used exclusively to configure Azure Monitor alerts', FALSE, 3),
    ('3b268547-2b4c-49f9-a240-5be92431aeb8', '2ebcafdb-c652-45cb-93f4-9842fa9fee0a', 'A cloud-native service requiring no on-premises components', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2ccdc2bf-ac2c-466e-b93a-66bb718638f5', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following is a documented limitation of MABS?',
        'Documented MABS limitations include inability to back up Oracle workloads and the requirement for an active Azure subscription at all times. D is false since MABS does back up Hyper-V VMs, A misrepresents vault usage, and C contradicts MABS''s actual application-aware snapshot capability.', 54, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9f88e1d6-1294-48e1-952d-1fd0444e9090', '2ccdc2bf-ac2c-466e-b93a-66bb718638f5', 'It cannot back up Hyper-V virtual machines', FALSE, 1),
    ('707efae2-5159-429c-b738-484b1ce5b710', '2ccdc2bf-ac2c-466e-b93a-66bb718638f5', 'It does not support application-aware snapshots', FALSE, 2),
    ('41d49b9c-6e23-4b63-aa15-d10967ef95c0', '2ccdc2bf-ac2c-466e-b93a-66bb718638f5', 'It cannot back up Oracle workloads and always requires an active Azure subscription', TRUE, 3),
    ('a36c7c77-aa72-4c94-9cb7-96e2ed359652', '2ccdc2bf-ac2c-466e-b93a-66bb718638f5', 'It requires a Recovery Services Vault to store backup metadata only, never actual data', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1901b3ec-1ec1-42b4-a8b7-c0475b36c30f', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the purpose of Backup Center in Azure Backup?',
        'Backup Center provides a single, central place to govern, monitor, operate, and analyze backups across vaults. B, A, and C mischaracterize it as physical storage, a vault replacement, or an alert-only tool.', 55, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cf4fe82c-e1b0-4acf-9272-3f63d0403c16', '1901b3ec-1ec1-42b4-a8b7-c0475b36c30f', 'It is used only for configuring KQL-based backup alerts', FALSE, 1),
    ('66e13aa7-40ea-43cd-b1c4-4220562edaa3', '1901b3ec-1ec1-42b4-a8b7-c0475b36c30f', 'It provides a single, central place to govern, monitor, operate, and analyze backups at scale across Recovery Services Vaults and Backup Vaults', TRUE, 2),
    ('d9ad653e-4524-4d42-a0c0-c43be8ab3ff5', '1901b3ec-1ec1-42b4-a8b7-c0475b36c30f', 'It replaces the need for a Recovery Services Vault entirely', FALSE, 3),
    ('22412c2c-7efa-48dc-9156-e5a56247c500', '1901b3ec-1ec1-42b4-a8b7-c0475b36c30f', 'It is an on-premises appliance for physical backup storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9e903873-ee7c-4bc4-9909-14bdab3717f5', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What does it mean for an Azure Backup recovery point to be "application-consistent"?',
        'Application-consistent backup ensures applications and data are restorable to a usable, transactionally consistent state, typically via VSS on Windows. B describes crash-consistent backup instead, C fabricates an SLA, and D wrongly restricts the concept to Linux VMs.', 56, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('896fd6a9-4b0d-42a2-80e1-b5a09908aa92', '9e903873-ee7c-4bc4-9909-14bdab3717f5', 'The backup only applies to Linux VMs', FALSE, 1),
    ('b218ce8c-7617-40e7-b2a5-74b84319fd02', '9e903873-ee7c-4bc4-9909-14bdab3717f5', 'The backup captures disk data only, ignoring any in-memory or pending transactions', FALSE, 2),
    ('ef7f809f-cdd3-4b65-a3c9-50a4e15f2c33', '9e903873-ee7c-4bc4-9909-14bdab3717f5', 'The backup captures the state of applications and data in a manner that ensures the application can be restored to a usable, transactionally consistent state, typically using technologies like VSS on Windows', TRUE, 3),
    ('533d9ff4-40dd-490d-84f7-b0c45758a116', '9e903873-ee7c-4bc4-9909-14bdab3717f5', 'The backup is guaranteed to complete within a defined SLA of one hour', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('decd0f2c-144d-493f-b9b2-c7f57f75ec9f', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which capability differentiates Azure Backup''s long-term retention from typical on-premises backup solutions?',
        'Azure Backup enables retention well beyond typical on-premises retention windows, supporting long-term compliance needs. B imposes a false 30-day cap, D incorrectly ties long-term retention to MARS specifically, and A contradicts the customizability of retention policies.', 57, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d1c00bc6-0aef-4efe-b326-262044c26e59', 'decd0f2c-144d-493f-b9b2-c7f57f75ec9f', 'Azure Backup enables retention well beyond typical on-premises retention windows, supporting long-term compliance and archival needs', TRUE, 1),
    ('b61da6d6-4081-43bd-99aa-b7f0f4e51a1f', 'decd0f2c-144d-493f-b9b2-c7f57f75ec9f', 'Azure Backup cannot retain data for more than 30 days', FALSE, 2),
    ('38283eef-4744-470e-9c80-3ed14975afff', 'decd0f2c-144d-493f-b9b2-c7f57f75ec9f', 'Azure Backup retention periods cannot be customized', FALSE, 3),
    ('128480c2-7fda-47ad-95b1-9d901c1871a9', 'decd0f2c-144d-493f-b9b2-c7f57f75ec9f', 'Long-term retention is only available with the MARS agent', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bb197249-4f0c-49f0-979c-cd4a9a1b30df', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following on-premises workloads requires an agent-based approach and a Recovery Services Vault, rather than being backed up natively as an Azure resource?',
        'On-premises SharePoint and Exchange Server require an agent-based backup approach and a Recovery Services Vault. Managed Disks (C), Blobs (A), and PostgreSQL (B) are modern Azure-native services backed up via the newer Backup Vault, not agent-based on-premises backup.', 58, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0e1872fd-0daa-4336-b803-d0f6042ef2cc', 'bb197249-4f0c-49f0-979c-cd4a9a1b30df', 'Azure Database for PostgreSQL', FALSE, 1),
    ('fb9eeac4-2924-4814-b196-e4a211dca27e', 'bb197249-4f0c-49f0-979c-cd4a9a1b30df', 'SharePoint and Exchange Server running on-premises', TRUE, 2),
    ('e0b05493-9df0-4eef-886b-0fd6de41a766', 'bb197249-4f0c-49f0-979c-cd4a9a1b30df', 'Azure Managed Disks', FALSE, 3),
    ('08e03af0-5bb0-4439-8d04-3ef630b7d23f', 'bb197249-4f0c-49f0-979c-cd4a9a1b30df', 'Azure Blobs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('694ee067-5359-4a12-92cc-21db785a0d48', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which statement correctly distinguishes a Recovery Services Vault from a Backup Vault?',
        'A Recovery Services Vault supports classic workloads (Azure VMs, Azure VM SQL, Azure File shares, SAP HANA) plus on-premises workloads via agents, while a Backup Vault targets newer services like PostgreSQL, Managed Disks, and Blobs. B denies a real distinction, A incorrectly claims the Recovery Services Vault is deprecated, and D fabricates a metadata-only limitation.', 59, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e9161ec3-295a-4a3e-a3b5-355314bc9cf4', '694ee067-5359-4a12-92cc-21db785a0d48', 'They are identical resource types with different names', FALSE, 1),
    ('1123e4cb-3894-4505-9d55-ca220a657697', '694ee067-5359-4a12-92cc-21db785a0d48', 'A Backup Vault is required for all on-premises MARS agent backups, while the Recovery Services Vault is deprecated', FALSE, 2),
    ('147b9e76-3e8f-4c84-971a-5d9980edbaa4', '694ee067-5359-4a12-92cc-21db785a0d48', 'A Recovery Services Vault supports classic workloads such as Azure VMs, Azure VM SQL, Azure File shares, and SAP HANA on Azure VM (as well as on-premises workloads via agents), while a Backup Vault targets newer data services such as PostgreSQL, Managed Disks, and Blobs', TRUE, 3),
    ('d0d3af62-eeed-41bb-bb57-bfac1289bd9e', '694ee067-5359-4a12-92cc-21db785a0d48', 'A Recovery Services Vault can only store metadata, while a Backup Vault stores the actual backup data', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d8c8341d-6c25-426f-a46e-3653311e26ce', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which benefit of Azure Backup relates specifically to reducing administrative overhead of managing backup infrastructure capacity?',
        'Automated storage management specifically addresses reducing the administrative burden of managing backup storage capacity. Application-consistent backups (B), Backup Center (C), and data encryption (D) are separate benefits unrelated to storage capacity management.', 60, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8c32e32e-7fbb-45dd-9399-0995ae805297', 'd8c8341d-6c25-426f-a46e-3653311e26ce', 'Automated storage management', TRUE, 1),
    ('d6d3a7d6-8451-4533-bb67-46d16774632a', 'd8c8341d-6c25-426f-a46e-3653311e26ce', 'Central management via Backup Center', FALSE, 2),
    ('40a407fc-4e6c-4f57-879b-9a4d6613a17e', 'd8c8341d-6c25-426f-a46e-3653311e26ce', 'Data encryption', FALSE, 3),
    ('01e604ad-d0a0-4f5a-bbee-840d8a51d554', 'd8c8341d-6c25-426f-a46e-3653311e26ce', 'Application-consistent backups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c271dfed-0cd9-4fe0-b642-7c00530ae29a', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'When an Azure VM is backed up, what type of recovery point is created for a Windows VM using VSS?',
        'Windows VM backups use VSS to produce application-consistent recovery points. B describes a fallback type used in other scenarios, D is false since a recovery point is always created, and A incorrectly denies the possibility of application consistency.', 61, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a7218d19-29ae-429b-8bf0-8b33c6691030', 'c271dfed-0cd9-4fe0-b642-7c00530ae29a', 'Application-consistent', TRUE, 1),
    ('81d41367-b1e3-49b1-9eba-b8e319857b0e', 'c271dfed-0cd9-4fe0-b642-7c00530ae29a', 'Crash-consistent only', FALSE, 2),
    ('3058c0dd-1623-43a3-addc-5f5028ce961c', 'c271dfed-0cd9-4fe0-b642-7c00530ae29a', 'No recovery point is created for Windows VMs', FALSE, 3),
    ('46936283-e836-4a03-830c-76faecd0cf9b', 'c271dfed-0cd9-4fe0-b642-7c00530ae29a', 'File-consistent only, never application-consistent', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('80893a10-e0a8-4bbe-bf24-acbe46ad8c80', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What defines the schedule and retention duration for Azure VM backups?',
        'A backup policy defines the schedule and retention duration for VM backups. D, B, and C describe unrelated vault redundancy, dependency mapping, or Advisor recommendations that do not govern backup scheduling.', 62, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('96fd92de-c923-40c0-aed3-8be9f24c587c', '80893a10-e0a8-4bbe-bf24-acbe46ad8c80', 'The Recovery Services Vault''s storage redundancy setting', FALSE, 1),
    ('4f1eaa2d-6fa6-4a65-bc05-292f3d5eff44', '80893a10-e0a8-4bbe-bf24-acbe46ad8c80', 'A backup policy', TRUE, 2),
    ('c182a1bf-27d3-4157-aca3-961bd32bd1f5', '80893a10-e0a8-4bbe-bf24-acbe46ad8c80', 'The Dependency Agent configuration', FALSE, 3),
    ('e76568b9-0f63-4a17-999a-ee9682526289', '80893a10-e0a8-4bbe-bf24-acbe46ad8c80', 'Azure Advisor recommendations', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f5ba2a43-f32b-45fe-ba39-335d2c644fc1', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is Instant Restore in the context of Azure VM backup?',
        'Instant Restore uses the VM snapshot still cached locally on the customer''s own storage before it is transferred to the vault, enabling fast recovery. B misrepresents it as a deletion feature, A incorrectly ties it exclusively to MARS, and D confuses it with Azure Site Recovery replication.', 63, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('490bdcde-ab1b-45ad-ad09-6153db9d1454', 'f5ba2a43-f32b-45fe-ba39-335d2c644fc1', 'A feature exclusive to the MARS agent', FALSE, 1),
    ('fd8114cf-6448-403b-8afc-75a1d82ff9a9', 'f5ba2a43-f32b-45fe-ba39-335d2c644fc1', 'A fast recovery path that uses the VM snapshot still cached locally on the customer''s own storage, before it has been transferred to the Recovery Services Vault', TRUE, 2),
    ('74241093-5cde-402f-880e-08fcd2efd3b6', 'f5ba2a43-f32b-45fe-ba39-335d2c644fc1', 'A method for replicating VMs to a secondary region for disaster recovery', FALSE, 3),
    ('58ff7051-5efd-4b0a-ae2e-7a5394fa0165', 'f5ba2a43-f32b-45fe-ba39-335d2c644fc1', 'A feature that permanently deletes old recovery points to save space', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ee311070-e218-4073-a0d1-8e72b1a9778f', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Regarding Instant Restore snapshot retention and availability, which statement is correct?',
        'Instant Restore is enabled for everyone by default, cannot be disabled, and supports configurable snapshot retention from 1 to 5 days. B contradicts the "cannot be disabled" fact, C fabricates a fixed 30-day retention, and D wrongly restricts it to Linux VMs.', 64, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('efdc6dc6-08e0-41b9-bdde-cab89d6a95a6', 'ee311070-e218-4073-a0d1-8e72b1a9778f', 'It must be manually enabled and can be disabled at any time', FALSE, 1),
    ('2debe7d0-acc5-4c06-94c6-3b72351431b0', 'ee311070-e218-4073-a0d1-8e72b1a9778f', 'It supports retention of exactly 30 days with no configuration options', FALSE, 2),
    ('aeb20d72-e4fb-4077-afea-e64c4b794537', 'ee311070-e218-4073-a0d1-8e72b1a9778f', 'It is only available for Linux VMs', FALSE, 3),
    ('27bdb482-6ee0-491d-9d88-f2cfaae72531', 'ee311070-e218-4073-a0d1-8e72b1a9778f', 'It is enabled for everyone by default, cannot be disabled, and supports configurable snapshot retention of 1 to 5 days', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0a689e51-22b4-47b5-89cf-e9c707712206', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'After restoring an Azure VM from a backup, what happens to extensions that were present on the VM at the time of backup?',
        'After restore, VM extensions present at backup time are reinstalled but not automatically re-enabled, requiring manual action. C overstates automatic behavior, and D and A misstate the actual restore behavior for extensions.', 65, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4ce99f63-3075-4794-b975-4fc391f837f6', '0a689e51-22b4-47b5-89cf-e9c707712206', 'They are permanently lost and must be manually reconfigured from scratch', FALSE, 1),
    ('bce08b88-0b60-4615-9ff8-7b365142d654', '0a689e51-22b4-47b5-89cf-e9c707712206', 'They are migrated to a new VM automatically', FALSE, 2),
    ('641c45ab-4716-4f05-90cc-8381d85ecf3e', '0a689e51-22b4-47b5-89cf-e9c707712206', 'They are automatically reinstalled and re-enabled', FALSE, 3),
    ('c906263d-439a-4721-9795-814dade0a2a0', '0a689e51-22b4-47b5-89cf-e9c707712206', 'They are reinstalled but not automatically re-enabled', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0aaead7c-6adc-462a-a131-5b3d172476f9', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'If a VM had a static private IP address before being backed up, what happens to its IP address configuration after a restore?',
        'A VM with a static private IP receives a dynamic IP after restore to avoid conflicts, which can be reset to static afterward. D contradicts the documented behavior, and B and C describe scenarios not supported by the reference material.', 66, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a27eaae6-7210-4902-9941-840e64fb634b', '0aaead7c-6adc-462a-a131-5b3d172476f9', 'It retains the exact same static IP automatically', FALSE, 1),
    ('ae482dfa-b1ee-4d24-a53c-e0649892075b', '0aaead7c-6adc-462a-a131-5b3d172476f9', 'It is assigned a public IP address instead', FALSE, 2),
    ('c872f1b4-591d-4dbc-8965-8fe7413070f6', '0aaead7c-6adc-462a-a131-5b3d172476f9', 'It receives a dynamic IP address to avoid conflicts, which can be reset to static afterward if needed', TRUE, 3),
    ('f3cbec1b-b2a5-4557-af15-6933ec9b14f6', '0aaead7c-6adc-462a-a131-5b3d172476f9', 'The restored VM has no network interface at all', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8f7b4283-87e7-41d7-bd47-35b34ff34c60', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which PowerShell cmdlet would you use to reset a restored VM''s network interface back to a static IP configuration?',
        'Set-AzNetworkInterfaceIpConfig is the PowerShell cmdlet used to reset a restored VM''s network interface to a static IP. C, B, and D reference cmdlets unrelated to network interface IP configuration.', 67, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0057715e-7c32-43cb-a403-6ae5077fe6f5', '8f7b4283-87e7-41d7-bd47-35b34ff34c60', 'Set-AzAvailabilitySet', FALSE, 1),
    ('d6cfe583-3831-4c7f-a73e-08268acae6a7', '8f7b4283-87e7-41d7-bd47-35b34ff34c60', 'Set-AzVMBackup', FALSE, 2),
    ('a9b3efde-b64a-45de-8a80-ef3739fdec78', '8f7b4283-87e7-41d7-bd47-35b34ff34c60', 'Set-AzNetworkInterfaceIpConfig', TRUE, 3),
    ('e19cc163-47c2-4ffb-a5c7-de8a1fcc5657', '8f7b4283-87e7-41d7-bd47-35b34ff34c60', 'New-AzRecoveryServicesVault', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('60c61086-32be-4272-8688-7185f3c7c702', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'After restoring an Azure VM, what is true regarding its availability set membership?',
        'A restored VM has no availability set by default, but one can be specified manually via the restore-disk-then-redeploy path (ARM template or PowerShell). A incorrectly assumes automatic retention, and B and D fabricate deprecation or availability zone behavior not described in the reference material.', 68, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dc179145-02a0-48da-87b4-84153b12261f', '60c61086-32be-4272-8688-7185f3c7c702', 'The restored VM automatically retains its original availability set', FALSE, 1),
    ('bd0629ce-7f05-459b-890e-10b27ed00d3d', '60c61086-32be-4272-8688-7185f3c7c702', 'The restored VM has no availability set by default; one can be specified manually via the restore-disk-then-redeploy path', TRUE, 2),
    ('0835ed5f-f419-4d11-afe6-c234ad5081ea', '60c61086-32be-4272-8688-7185f3c7c702', 'The restored VM is always placed into a new availability zone rather than an availability set', FALSE, 3),
    ('fa03fa47-3403-4ef1-ae01-f6f613d44a7b', '60c61086-32be-4272-8688-7185f3c7c702', 'Availability sets are automatically deprecated after any restore operation', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ab17a4a3-3e3e-44ea-82e4-56d21a29ee22', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the soft delete feature in Azure Backup, and how long is data retained after deletion?',
        'Soft delete retains deleted backup data for 14 additional days in a soft-deleted state (with no retention policy applied) before permanent purge, recoverable via Undelete. C and D misstate the retention behavior, and A is false since soft delete is natively enabled for all Recovery Services Vaults.', 69, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('831bdc07-1ef6-4572-a2a9-eb1fa6db9d42', 'ab17a4a3-3e3e-44ea-82e4-56d21a29ee22', 'Soft delete must be manually enabled per vault; it is off by default', FALSE, 1),
    ('3aa6e70c-d018-4774-a618-3c994d435b87', 'ab17a4a3-3e3e-44ea-82e4-56d21a29ee22', 'Deleted backup data is retained in a soft-deleted state for 14 additional days (with no retention policy applied) before permanent purge, and can be recovered via an Undelete operation within that window', TRUE, 2),
    ('4f497745-dcde-4f13-9d24-f14914bcba34', 'ab17a4a3-3e3e-44ea-82e4-56d21a29ee22', 'Deleted backup data is immediately and permanently purged', FALSE, 3),
    ('665ac811-4845-4267-9356-6b2a6ab1a7a1', 'ab17a4a3-3e3e-44ea-82e4-56d21a29ee22', 'Deleted backup data is retained indefinitely with no way to purge it', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('492c4034-eee8-43bf-a4aa-17c16e68abaa', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is required to recover backup data that has been soft-deleted within the retention window?',
        'Recovering soft-deleted data requires performing an Undelete operation on the affected item within the retention window. C, A, and B describe unnecessary or impossible recovery paths.', 70, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3d4bbed3-5ea3-4735-babd-337b5094908b', '492c4034-eee8-43bf-a4aa-17c16e68abaa', 'Restoring from a completely new Recovery Services Vault', FALSE, 1),
    ('08ec8e9d-c485-444c-b26a-cf24d535ade9', '492c4034-eee8-43bf-a4aa-17c16e68abaa', 'Soft-deleted data cannot be recovered under any circumstances', FALSE, 2),
    ('3745f884-8795-43a0-97e1-bb78b1fd629c', '492c4034-eee8-43bf-a4aa-17c16e68abaa', 'Opening a support ticket with Microsoft is the only option', FALSE, 3),
    ('a25ffc07-5c9e-4c7f-820c-2cafe8d1dd64', '492c4034-eee8-43bf-a4aa-17c16e68abaa', 'Performing an Undelete operation on the affected item within the vault', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e3e7ce70-37e4-49a6-b9db-dc304ff9dc90', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the key difference between "Stop backup and retain data" and "Stop backup and delete data" in Azure Backup?',
        '"Stop backup and retain data" keeps data indefinitely with no purge, while "Stop backup and delete data" triggers the soft-delete countdown toward eventual permanent purge. B denies a real distinction, and A and C reverse or misstate the actual behavior of each option.', 71, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a3f33cc6-3d1c-4f32-87d8-ebba0cf61edc', 'e3e7ce70-37e4-49a6-b9db-dc304ff9dc90', '"Stop backup and retain data" keeps the backed-up data indefinitely with no purge, while "Stop backup and delete data" triggers the soft-delete countdown toward eventual permanent purge', TRUE, 1),
    ('1efdb073-b7eb-4aef-854d-e5ffbeed4463', 'e3e7ce70-37e4-49a6-b9db-dc304ff9dc90', '"Stop backup and retain data" deletes data immediately, while "Stop backup and delete data" retains it indefinitely', FALSE, 2),
    ('9192ee59-11a6-43cf-bb65-b3409d74e06b', 'e3e7ce70-37e4-49a6-b9db-dc304ff9dc90', 'There is no functional difference between the two options', FALSE, 3),
    ('c4b9c9c3-5142-4fba-a6ff-80cb27fba55a', 'e3e7ce70-37e4-49a6-b9db-dc304ff9dc90', 'Both options immediately and permanently purge all recovery points', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ceff3b92-12d0-4557-bdb9-8529c35ce0b8', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the primary purpose of Azure Site Recovery (ASR)?',
        'Azure Site Recovery protects against a full regional outage by replicating VMs and physical servers to a secondary region or site. B, C, and D describe unrelated monitoring, querying, or storage redundancy functionality that belongs to other services.', 72, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b7544bae-f501-4bca-b695-4740f34f87fd', 'ceff3b92-12d0-4557-bdb9-8529c35ce0b8', 'To provide a query language for analyzing log data', FALSE, 1),
    ('9626e6b0-aec6-4e79-a7d9-ea6ec0b822df', 'ceff3b92-12d0-4557-bdb9-8529c35ce0b8', 'To manage storage redundancy settings for Recovery Services Vaults', FALSE, 2),
    ('da7c30a7-0d51-4ff2-9a6c-a51aa523d9cb', 'ceff3b92-12d0-4557-bdb9-8529c35ce0b8', 'To protect workloads against a full regional outage by replicating VMs and physical servers to a secondary region or site', TRUE, 3),
    ('9f9ef32f-fe80-4f2b-8ab0-60b292a6bf05', 'ceff3b92-12d0-4557-bdb9-8529c35ce0b8', 'To provide near-real-time monitoring of VM CPU and memory metrics', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4932e92c-3f33-416b-bb99-fd424584e978', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which of the following workloads can Azure Site Recovery replicate to a secondary Azure region?',
        'ASR can replicate Azure VMs, VMware VMs, Hyper-V VMs (including those managed by System Center VMM), and physical servers running Windows or Linux. C, D, and A each understate the full range of supported workloads.', 73, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b95e5207-cf88-4756-aca9-7f0ddd4a978b', '4932e92c-3f33-416b-bb99-fd424584e978', 'Only physical servers, not virtualized workloads', FALSE, 1),
    ('3a0b7308-27a2-4972-aee1-e357a50af7d8', '4932e92c-3f33-416b-bb99-fd424584e978', 'Azure VMs, VMware VMs, Hyper-V VMs (including those managed by System Center VMM), and physical servers running Windows or Linux', TRUE, 2),
    ('9a35605e-1d50-4e28-9292-af43b36c330d', '4932e92c-3f33-416b-bb99-fd424584e978', 'Only Azure Virtual Machines', FALSE, 3),
    ('a54609cb-d793-48d7-8816-a475840dcecf', '4932e92c-3f33-416b-bb99-fd424584e978', 'Only VMware virtual machines', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a37dce71-3ca1-4b9e-9896-8a0b0bb96db3', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'What is the purpose of Test Failover in Azure Site Recovery?',
        'Test Failover validates a disaster recovery plan by failing over in an isolated network without impacting production workloads or ongoing replication. D describes an actual (not test) failover, and A and B describe unrelated backup retention or soft-delete concepts.', 74, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6e79e7a0-12ce-415e-94d7-2fc54ce20f63', 'a37dce71-3ca1-4b9e-9896-8a0b0bb96db3', 'To validate a disaster recovery plan by failing over in an isolated network, without impacting production workloads or ongoing replication', TRUE, 1),
    ('cf1e1093-1001-4ccf-bf5e-c91795c2b26f', 'a37dce71-3ca1-4b9e-9896-8a0b0bb96db3', 'To permanently fail over production workloads to the secondary region', FALSE, 2),
    ('58ebf717-07df-4abc-b295-23d7de2c6fd6', 'a37dce71-3ca1-4b9e-9896-8a0b0bb96db3', 'To test whether soft delete is functioning correctly', FALSE, 3),
    ('693e0408-2a8c-42db-998e-f641c3a0e582', 'a37dce71-3ca1-4b9e-9896-8a0b0bb96db3', 'To delete outdated recovery points from the Recovery Services Vault', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e86f58c8-cc98-4bf8-bd6f-a0e5d7f7ce6e', '75c38a05-1b82-4f2a-8a94-b8eda5d088b0', 'SINGLE_CHOICE', 'Which statement best distinguishes Azure Backup from Azure Site Recovery?',
        'Azure Backup focuses on creating recoverable data copies (recovery points) for restoring data or VMs, while Azure Site Recovery focuses on replicating workloads to a secondary region to protect against a regional outage and orchestrating failover/failback. B denies a real distinction, and A and C misstate the vault requirements and functional scope of each service.', 75, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fe6e5d98-08e1-49a6-a2ff-a3d38b081d53', 'e86f58c8-cc98-4bf8-bd6f-a0e5d7f7ce6e', 'Azure Backup focuses on creating recoverable data copies (recovery points) for restoring data or VMs, while Azure Site Recovery focuses on replicating workloads to a secondary region to protect against a full regional outage and orchestrating failover/failback', TRUE, 1),
    ('3bc5d5b6-8cd7-4caa-9929-a96e29244b5e', 'e86f58c8-cc98-4bf8-bd6f-a0e5d7f7ce6e', 'Azure Site Recovery is used only for file-level backup, while Azure Backup handles regional failover', FALSE, 2),
    ('460c3a9a-b018-4d2f-884e-8582655bddac', 'e86f58c8-cc98-4bf8-bd6f-a0e5d7f7ce6e', 'They are the same service with two different names', FALSE, 3),
    ('dcede690-7f45-4a56-94f0-fe12404be7b1', 'e86f58c8-cc98-4bf8-bd6f-a0e5d7f7ce6e', 'Azure Backup and Azure Site Recovery both require a Backup Vault, while neither uses a Recovery Services Vault', FALSE, 4);
