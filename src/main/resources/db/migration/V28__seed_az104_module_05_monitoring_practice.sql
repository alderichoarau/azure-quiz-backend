INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('bcae176f-8d1e-4ba5-94b4-597fae74add7', '00000000-0000-0000-0000-000000000002', 'module-05-monitoring-practice', 'Module 5 (Practice Scenarios) - Monitor and Back Up Azure Resources',
        NULL, 11);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('48c709fc-ec66-446d-bc18-04946b1a82da', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso Ltd. wants a single Azure service that can collect performance numbers from its VMs, let administrators run queries against activity and diagnostic data, and automatically trigger a webhook when a resource becomes unhealthy. Which Azure service natively provides all three of these capabilities as its core pillars?',
        'Azure Monitor is Azure''s full-stack monitoring service built around exactly three pillars: monitoring and visualizing metrics, querying and analyzing logs, and setting up alerts and automated actions. Azure Advisor (C) only provides configuration and cost recommendations, not full telemetry collection and alerting. Azure Policy (D) enforces governance rules, not monitoring. Azure Service Health (A) only reports on Azure platform incidents and planned maintenance affecting your resources, not a full-stack monitoring pillar set.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cd5e414d-2f8c-4c1f-adb9-4d9a8c737c9a', '48c709fc-ec66-446d-bc18-04946b1a82da', 'Azure Service Health', FALSE, 1),
    ('d97f23f8-48c0-48af-8c76-a679926212e6', '48c709fc-ec66-446d-bc18-04946b1a82da', 'Azure Monitor', TRUE, 2),
    ('222e7c21-8b4f-4cf1-9e40-165f672d2a72', '48c709fc-ec66-446d-bc18-04946b1a82da', 'Azure Advisor', FALSE, 3),
    ('f0a7f704-d200-42c3-9c18-9e67f2d1a343', '48c709fc-ec66-446d-bc18-04946b1a82da', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('43d73667-1ede-4a64-8938-ec9a21064948', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'A Fabrikam administrator is designing a monitoring strategy and needs to account for telemetry originating from several different levels: the company''s custom line-of-business application code, the guest operating system of its VMs, the Azure resources themselves, and tenant-wide Azure AD sign-in events. According to Azure Monitor''s data source model, which of the following is NOT one of the defined data source categories?',
        'Azure Monitor''s defined data source categories are Application, Operating System, Azure Resources, Azure Subscription, Azure Tenant, and Custom Sources. Network Security Group is an Azure networking resource, not one of the named data source categories itself; it would simply be monitored as part of "Azure Resources." Options A, B, and D are each explicitly listed categories in the Azure Monitor data source model.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3926b1a7-ee84-4414-aeaa-7f862ea7e651', '43d73667-1ede-4a64-8938-ec9a21064948', 'Operating System', FALSE, 1),
    ('fad0e273-0880-4b82-90fa-ecd19c960bb4', '43d73667-1ede-4a64-8938-ec9a21064948', 'Network Security Group', TRUE, 2),
    ('95acc747-a71d-4af2-885c-1bd237da3745', '43d73667-1ede-4a64-8938-ec9a21064948', 'Application', FALSE, 3),
    ('dbf35704-53b4-48ef-a57f-e5898bbd2dde', '43d73667-1ede-4a64-8938-ec9a21064948', 'Azure Tenant', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b120ca85-b683-4c1a-9121-c4cc6a55bad1', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'An engineer at Contoso is reviewing Azure Monitor documentation and needs to explain to a colleague the two fundamental types of data that Azure Monitor collects and stores, regardless of the data source. Which pair correctly describes these two fundamental data types?',
        'Azure Monitor collects and stores exactly two fundamental data types: Metrics (lightweight numerical values captured at regular intervals describing some aspect of a system) and Logs (different kinds of data organized into records with different sets of properties). Alerts and dashboards (A) are downstream consumers of this data, not the fundamental data types. Events and traces (B) and counters/diagnostics (C) are not the terminology Azure Monitor uses for its two core data types.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('27f0262a-7f49-4e36-a7e9-b8e89164f6c7', 'b120ca85-b683-4c1a-9121-c4cc6a55bad1', 'Metrics and Logs', TRUE, 1),
    ('c1a2d021-570e-42f7-8561-67c347c826a4', 'b120ca85-b683-4c1a-9121-c4cc6a55bad1', 'Counters and Diagnostics', FALSE, 2),
    ('760ebc7b-5797-41be-90bf-236a44c6bf68', 'b120ca85-b683-4c1a-9121-c4cc6a55bad1', 'Alerts and Dashboards', FALSE, 3),
    ('d4cc4a34-55ab-4d04-8cad-bf14240ddebe', 'b120ca85-b683-4c1a-9121-c4cc6a55bad1', 'Events and Traces', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e315ee61-25b9-4894-808a-5569131d75dd', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Fabrikan Corp still has several legacy Windows Server VMs reporting performance data to a Log Analytics workspace using the Log Analytics agent (MMA/OMS agent). The company has been notified that this agent is being retired and wants to migrate to the strategic, unified agent that Microsoft recommends going forward for both metrics and log collection. Which agent should the company migrate to?',
        'The Azure Monitor Agent (AMA) is the unified, strategic replacement for the legacy Log Analytics agent (MMA/OMS), which is being retired. The Dependency Agent (A) only maps process dependencies and works alongside AMA, it does not replace the log/metric collection role of MMA. Network Watcher Agent (B) is unrelated, it supports network diagnostics. The Diagnostics Extension (C) is a separate legacy mechanism (WAD/LAD) also being consolidated into AMA, not the destination for an MMA migration.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8740c313-2972-4b40-b39e-aadaddaf3427', 'e315ee61-25b9-4894-808a-5569131d75dd', 'Dependency Agent', FALSE, 1),
    ('c2cc3bcd-7fa5-4269-bddb-85c6beb15f66', 'e315ee61-25b9-4894-808a-5569131d75dd', 'Azure Monitor Agent (AMA)', TRUE, 2),
    ('ce0c3e12-57e3-4e02-b287-9ba5315ef413', 'e315ee61-25b9-4894-808a-5569131d75dd', 'Network Watcher Agent', FALSE, 3),
    ('968c7e59-1b41-4484-b91a-2704915d8aaf', 'e315ee61-25b9-4894-808a-5569131d75dd', 'Azure Diagnostics Extension (WAD)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b8d5530c-c180-44fb-91ff-a5315aecc924', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'A systems administrator needs to collect boot diagnostics and basic performance counters from a fleet of Windows and Linux Azure VMs using the platform-specific diagnostics extension that existed prior to the unified Azure Monitor Agent. Which pair of extension names correctly matches Windows and Linux respectively?',
        'The Diagnostics extension is implemented as WAD (Windows Azure Diagnostics) for Windows VMs and LAD (Linux Azure Diagnostics) for Linux VMs. Option D confuses these extension names with the Log Analytics/OMS agent naming. Option A misapplies AMA and "DA" (Dependency Agent) names to this legacy extension pairing. Option B simply reverses the correct Windows/Linux mapping from option C.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e1fec2ae-24de-400e-845d-33868222efd3', 'b8d5530c-c180-44fb-91ff-a5315aecc924', 'WAD for Linux, LAD for Windows', FALSE, 1),
    ('649497f4-168a-4ab5-b3cc-e257537f8f4b', 'b8d5530c-c180-44fb-91ff-a5315aecc924', 'WAD for Windows, LAD for Linux', TRUE, 2),
    ('9b96d68a-9ea2-4e96-969d-3d9ace4731e5', 'b8d5530c-c180-44fb-91ff-a5315aecc924', 'MMA for Windows, OMS for Linux', FALSE, 3),
    ('a852f682-6ee3-43ae-a7e9-1f99ae6722fb', 'b8d5530c-c180-44fb-91ff-a5315aecc924', 'AMA for Windows, DA for Linux', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('422d2991-e707-4dee-8ca2-280c6f5affd1', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso wants to enable VM insights so that it can visualize process-level dependencies and network connections between its application-tier and database-tier virtual machines. Which agent is specifically responsible for discovering and mapping these process dependencies?',
        'The Dependency Agent is specifically responsible for discovering process dependencies and mapping network connections between processes running on monitored machines, which underpins the VM insights Map feature. The Log Analytics Agent (C) collects logs and performance counters but does not perform dependency mapping. The Network Watcher Agent (D) supports network diagnostic tools like packet capture, not process-level dependency mapping. The Diagnostics Extension (A) collects basic guest-level diagnostics, not process dependency data.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bb65e12d-87fa-413c-8296-89d19cc57215', '422d2991-e707-4dee-8ca2-280c6f5affd1', 'Log Analytics Agent', FALSE, 1),
    ('e37dcf3f-ff45-4c87-a79f-929567ce74f9', '422d2991-e707-4dee-8ca2-280c6f5affd1', 'Diagnostics Extension', FALSE, 2),
    ('1a8efbbf-d876-4830-935f-b68e3a972ff5', '422d2991-e707-4dee-8ca2-280c6f5affd1', 'Dependency Agent', TRUE, 3),
    ('681abcd2-10ec-47dc-b8c7-27456ee08949', '422d2991-e707-4dee-8ca2-280c6f5affd1', 'Network Watcher Agent', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c6c64f8d-cda7-40e1-9f1f-b5d7ff7173d5', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'An Azure administrator configuring the Azure Monitor Agent (AMA) on a set of production VMs needs to define exactly what data should be collected, how it should be transformed before ingestion, and which Log Analytics workspace it should be routed to. Which Azure Monitor construct is used to define this?',
        'A Data Collection Rule (DCR) is the Azure Monitor Agent construct that defines what data to collect, how to transform it, and where to route it (e.g., which Log Analytics workspace). An Action Group (B) defines notification/remediation actions taken when an alert fires, unrelated to data collection configuration. An Alert Processing Rule (C) modifies alert notification behavior, not data collection. "Diagnostic Setting Category" (D) is not a real Azure Monitor construct used for this purpose.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4e017633-f1b2-4fec-a62e-a4d16f6a2b6f', 'c6c64f8d-cda7-40e1-9f1f-b5d7ff7173d5', 'Data Collection Rule (DCR)', TRUE, 1),
    ('cfd76bb7-c9df-4aa9-a7bb-03acdaeede7b', 'c6c64f8d-cda7-40e1-9f1f-b5d7ff7173d5', 'Diagnostic Setting Category', FALSE, 2),
    ('12cefe74-59cf-436e-81c5-18b7b9a0e1a1', 'c6c64f8d-cda7-40e1-9f1f-b5d7ff7173d5', 'Alert Processing Rule', FALSE, 3),
    ('46b96bc6-49b9-4626-854b-50264baadaa6', 'c6c64f8d-cda7-40e1-9f1f-b5d7ff7173d5', 'Action Group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('052587a4-c3c0-4793-9dbd-7a88650d44b7', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso''s compliance team wants to know which of the following statements about Azure Monitor''s agent landscape is accurate as the company plans its next fiscal year monitoring roadmap. Which statement is correct?',
        'Microsoft''s stated agent strategy is that the Log Analytics agent (MMA/OMS), the Diagnostics extension (WAD/LAD), and the Dependency Agent are all converging toward the single, unified Azure Monitor Agent (AMA). Option C is false because the Dependency Agent only handles process mapping and still requires AMA (or a legacy agent) for the underlying telemetry pipeline. Option D is false since the Log Analytics agent is the legacy agent being retired, not the newest one. Option A is false because the Diagnostics extension is a separate legacy mechanism, not dependent on AMA-based DCRs.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1e01cfd4-5c0c-4e8b-bb85-eb9cf0d8567d', '052587a4-c3c0-4793-9dbd-7a88650d44b7', 'The Log Analytics agent (MMA/OMS), the Diagnostics extension, and the Dependency Agent are all converging toward the unified Azure Monitor Agent (AMA)', TRUE, 1),
    ('d23bf6e9-d3d5-49ab-9fa6-961b2612bf5b', '052587a4-c3c0-4793-9dbd-7a88650d44b7', 'The Dependency Agent alone can fully replace the need for the Azure Monitor Agent on every VM', FALSE, 2),
    ('280984d3-b3a4-44ea-9d2d-f43143076fe3', '052587a4-c3c0-4793-9dbd-7a88650d44b7', 'The Log Analytics agent is Microsoft''s newest and most strategic monitoring agent', FALSE, 3),
    ('d34c3793-76dd-4804-8d9f-66159c21f005', '052587a4-c3c0-4793-9dbd-7a88650d44b7', 'The Diagnostics extension (WAD/LAD) is only usable with Azure Monitor Agent-based Data Collection Rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('19a1d456-b449-4848-8709-3ac7eabb9200', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Fabrikam''s central IT team is designing its logging architecture and needs a resource that acts as a container providing geographic location, data isolation, and defined scope for the log data it collects from its resources. Which resource should it provision?',
        'A Log Analytics workspace is the container that stores collected, aggregated, and analyzed log data, and it defines geographic location, data isolation, and access scope. A Recovery Services Vault (A) stores backup and Site Recovery data, not general log telemetry. An Action Group (B) defines alert notification/remediation actions. An Automation Account (C) hosts runbooks and automation assets, not log data.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6a7da74a-a435-42af-b38d-86c5aa4109f7', '19a1d456-b449-4848-8709-3ac7eabb9200', 'Action Group', FALSE, 1),
    ('7ff94b82-2292-4802-bb93-4012dbc84800', '19a1d456-b449-4848-8709-3ac7eabb9200', 'Log Analytics workspace', TRUE, 2),
    ('636c5e52-006c-4bc6-8c19-d9b3b0c22e76', '19a1d456-b449-4848-8709-3ac7eabb9200', 'Automation Account', FALSE, 3),
    ('01498b2c-21d6-4d1e-a02d-3dcaf3b9c6d8', '19a1d456-b449-4848-8709-3ac7eabb9200', 'Recovery Services Vault', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1b00f93d-e7f5-4dda-8cf7-dbfbbeec239a', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso operates two business units, each with strict data residency and access-control requirements. The company needs to decide whether a single Azure subscription can contain more than one Log Analytics workspace to satisfy this isolation requirement. What is true regarding the number of Log Analytics workspaces per subscription?',
        'A single Azure subscription can contain multiple Log Analytics workspaces, which allows organizations to isolate data by region, business unit, or access requirements. Option D incorrectly imposes a one-workspace-per-subscription limit that does not exist. Option A is false; workspaces are not forced to be shared tenant-wide. Option B incorrectly imposes a per-region cap that does not reflect the actual model.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3d3780b8-443e-4e1f-b4ed-bbb8ec51c1a1', '1b00f93d-e7f5-4dda-8cf7-dbfbbeec239a', 'A single subscription can contain multiple Log Analytics workspaces', TRUE, 1),
    ('1373e62a-92db-47f9-8d4e-6067fc78e15f', '1b00f93d-e7f5-4dda-8cf7-dbfbbeec239a', 'A subscription can contain a maximum of exactly one Log Analytics workspace', FALSE, 2),
    ('0da54320-964f-49ad-9357-000a7d6ff1ad', '1b00f93d-e7f5-4dda-8cf7-dbfbbeec239a', 'Only one workspace per Azure region is allowed globally', FALSE, 3),
    ('00c29a8d-f7cc-48a8-be84-8ea83a5b00b4', '1b00f93d-e7f5-4dda-8cf7-dbfbbeec239a', 'Log Analytics workspaces must always be shared across all subscriptions in a tenant', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6700ea8a-e090-4f74-8bac-4a5b11cfb91e', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'An administrator has connected several Windows Server VMs to a Log Analytics workspace and wants to query the Windows Event Logs data that has been collected from these machines. Which table should the administrator query?',
        'Windows Event Logs collected from connected Windows sources land in the Event table in the Log Analytics workspace. The Syslog table (A) holds Linux syslog data, not Windows Event Logs. The Heartbeat table (B) records agent connectivity health signals, not event log content. The Perf table (C) stores performance counter data, not event log entries.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cd6f18f3-5ea3-41b0-9f1c-0f6cf11060b6', '6700ea8a-e090-4f74-8bac-4a5b11cfb91e', 'Syslog', FALSE, 1),
    ('ca422edc-128a-47fb-9441-d47b8aff6349', '6700ea8a-e090-4f74-8bac-4a5b11cfb91e', 'Heartbeat', FALSE, 2),
    ('6fab49c3-d095-4a01-b0d4-af538ffa8603', '6700ea8a-e090-4f74-8bac-4a5b11cfb91e', 'Event', TRUE, 3),
    ('4a033fed-7f1a-4e6e-aed4-06e4b56992ff', '6700ea8a-e090-4f74-8bac-4a5b11cfb91e', 'Perf', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67dd5e25-368e-4442-ac5f-06cb388d7888', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'A Linux-heavy Fabrikam environment is forwarding syslog messages to Log Analytics. An engineer wants to confirm the connected Linux VMs are still actively reporting to the workspace by checking a table that records periodic health signals from each connected agent. Which table should be queried to check this connectivity heartbeat?',
        'The Heartbeat table records periodic health/connectivity signals sent by each connected agent, making it the correct table to confirm that Linux VMs are still actively reporting. The Syslog table (A) holds actual syslog message content, not connectivity heartbeats. The Event table (B) is used for Windows Event Logs, not Linux heartbeat data. The Usage table (C) tracks data ingestion volume by data type, not per-agent connectivity.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1912e7e0-abc0-41e6-a4a4-bcf9cfa6bd4e', '67dd5e25-368e-4442-ac5f-06cb388d7888', 'Syslog', FALSE, 1),
    ('29d77d5e-784f-49bd-81fd-137e52d4efb5', '67dd5e25-368e-4442-ac5f-06cb388d7888', 'Event', FALSE, 2),
    ('826d333d-3962-4173-a62e-ed07e630c9ec', '67dd5e25-368e-4442-ac5f-06cb388d7888', 'Heartbeat', TRUE, 3),
    ('170738a6-4164-4894-9873-8bf7a302f784', '67dd5e25-368e-4442-ac5f-06cb388d7888', 'Usage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8bee9c49-df1e-460b-a68c-1c8a3f68a7f8', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso has built a custom logging pipeline that ingests application telemetry from an on-premises system into its Log Analytics workspace using the custom logs feature. When querying this data, the engineer notices the table name ends in a specific two-character suffix that identifies it as a custom log table. What is that suffix?',
        'Custom logs ingested into a Log Analytics workspace are stored in custom tables whose names carry the suffix _CL. None of _Custom, _LOG, or _EXT (D, A, B) are the suffix used by Azure Monitor for custom log tables.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b8ca8c2f-7472-4d34-aaf9-372c06a70897', '8bee9c49-df1e-460b-a68c-1c8a3f68a7f8', '_Custom', FALSE, 1),
    ('a7fb772c-0bb2-418d-bac9-72d739c72f0d', '8bee9c49-df1e-460b-a68c-1c8a3f68a7f8', '_CL', TRUE, 2),
    ('5e1d7dce-3bd8-48b0-9216-6b1d86335d5a', '8bee9c49-df1e-460b-a68c-1c8a3f68a7f8', '_LOG', FALSE, 3),
    ('15c8089f-52a2-428f-bd8d-9663da0694c3', '8bee9c49-df1e-460b-a68c-1c8a3f68a7f8', '_EXT', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('41e92ddf-1468-4cdc-9a06-3f968a73fae4', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'A Contoso administrator needs to write a KQL query against the Event table that returns only error-level events generated in the last 24 hours, then counts how many errors occurred per computer, and finally returns the top 10 computers with the highest error counts in descending order. Which sequence of KQL operators would correctly accomplish this?',
        'The described query logic filters rows on error level and time range (where), aggregates a count grouped by computer (summarize ... by), and limits/orders the result to the top 10 by count descending (top ... desc) — exactly matching the example query pattern: Event | where ... | summarize ErrorCount = count() by Computer | top 10 by ErrorCount desc. Option B''s operators (project, join, render) are used for column selection, table combination, and visualization, not this filtering/aggregation/ranking task. Option C''s operators (extend, distinct, take) don''t perform the required grouped aggregation. Option D mixes parsing and evaluation operators that are not part of this filter-aggregate-rank pattern, and misstates sort direction handling.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f870fe8f-1d9e-43b5-9ece-697fa47998f6', '41e92ddf-1468-4cdc-9a06-3f968a73fae4', 'extend, distinct, take', FALSE, 1),
    ('4b9bee7d-5d42-4fe7-9f08-1f9cea4de2e7', '41e92ddf-1468-4cdc-9a06-3f968a73fae4', 'where, summarize ... by, top ... desc', TRUE, 2),
    ('0911fcd9-8e6b-4295-972d-72aefdb7e8cc', '41e92ddf-1468-4cdc-9a06-3f968a73fae4', 'parse, evaluate, order by asc', FALSE, 3),
    ('aca8f249-9a1e-410a-a537-b835dadf9311', '41e92ddf-1468-4cdc-9a06-3f968a73fae4', 'project, join, render', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e4d2abd0-ec96-424b-acba-5bd14856b030', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'An engineer at Fabrikam runs a KQL query to determine how many distinct computers reported a heartbeat in the last hour, and needs the result grouped into 5-minute time buckets for a trend chart. Which combination of KQL functions is most appropriate for counting distinct values and creating time buckets, respectively?',
        'dcount() computes the count of distinct values (e.g., distinct computers reporting a heartbeat), and bin() is the KQL function used to group timestamps into fixed-size time buckets such as 5-minute intervals, typically used with summarize ... by bin(TimeGenerated, 5m). count() and top() (D) do not provide distinct counting or time bucketing. avg() and project() (A) compute averages and select columns, not distinct counts or time buckets. sum() and take() (B) sum values and limit row counts, neither of which matches the described requirement.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5b27010a-1f06-4a62-8b73-ef242072ffab', 'e4d2abd0-ec96-424b-acba-5bd14856b030', 'dcount() and bin()', TRUE, 1),
    ('26c51abd-fe30-4da9-8805-101d59dd321c', 'e4d2abd0-ec96-424b-acba-5bd14856b030', 'sum() and take()', FALSE, 2),
    ('9243c268-371c-4d61-a1bd-bbf52906759a', 'e4d2abd0-ec96-424b-acba-5bd14856b030', 'count() and top()', FALSE, 3),
    ('126c7207-97b7-46ed-a020-07be00486841', 'e4d2abd0-ec96-424b-acba-5bd14856b030', 'avg() and project()', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('17ebc6bb-f357-4f13-8a62-e9bdd8e8cbbf', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'After building a useful KQL query that shows daily error trends across the environment, a Contoso administrator wants to make this visualization available at a glance to the operations team without requiring them to run the query manually every day. Which of the following is a valid way to operationalize a Log Analytics query result according to Azure Monitor capabilities?',
        'Log Analytics query results can be pinned to an Azure dashboard so they are visible at a glance without re-running the query manually, and can also be exported to Power BI or Excel. Converting a workspace into a Recovery Services Vault (B) is not a valid or meaningful operation; these are distinct resource types. Exporting a query into an Azure Policy definition (C) is not a supported Log Analytics capability. Attaching a query as a Data Collection Rule transformation (D) relates to ingestion-time transformation, not to visualizing or sharing existing query results.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('729b8027-d300-4632-93f1-5140bd119203', '17ebc6bb-f357-4f13-8a62-e9bdd8e8cbbf', 'Pin the query results to an Azure dashboard', TRUE, 1),
    ('5462b82d-9ca0-4b6d-b994-81224af13544', '17ebc6bb-f357-4f13-8a62-e9bdd8e8cbbf', 'Convert the workspace into a Recovery Services Vault', FALSE, 2),
    ('ac1c5f84-edea-4d5b-b0d5-7de8f198851e', '17ebc6bb-f357-4f13-8a62-e9bdd8e8cbbf', 'Attach the query as a Data Collection Rule transformation', FALSE, 3),
    ('6c141a96-c7dc-4699-b831-cb5e23b00270', '17ebc6bb-f357-4f13-8a62-e9bdd8e8cbbf', 'Export the query directly into an Azure Policy definition', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('32a12b23-c425-4e2e-bac2-0349daa7e06e', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso wants to enable rich monitoring of VM health and performance, including process dependency mapping between its web and database tiers. The solution requires both the Dependency Agent and the Azure Monitor Agent, and it must send data to a specific destination for storage and analysis. Which additional resource is required to deploy this monitoring solution?',
        'VM insights requires a Log Analytics workspace as the destination for the data gathered by the Dependency Agent and Azure Monitor Agent. A Recovery Services Vault (D) and Backup Vault (A) are backup-related resources, not monitoring data destinations. An Automation Account (B) hosts runbooks and is not required for VM insights deployment.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('59559034-1f92-49ab-8e70-a7d9e5d9239d', '32a12b23-c425-4e2e-bac2-0349daa7e06e', 'A Backup Vault', FALSE, 1),
    ('226ae98e-6f23-4429-bf01-bb3afc741b75', '32a12b23-c425-4e2e-bac2-0349daa7e06e', 'A Log Analytics workspace', TRUE, 2),
    ('96c4b1c1-20d0-4f5a-8a7a-480c952fe9bb', '32a12b23-c425-4e2e-bac2-0349daa7e06e', 'An Automation Account', FALSE, 3),
    ('f0aba722-4f29-46fc-91a2-be8c85ab079b', '32a12b23-c425-4e2e-bac2-0349daa7e06e', 'A Recovery Services Vault', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('00a68547-d463-4e3c-a89f-17566b0a28b8', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'A Fabrikam administrator wants to quickly view the CPU percentage and network in/out values for a VM without installing any agent inside the guest operating system. Which Azure Monitor capability provides this out-of-the-box, agent-free visibility into platform-level performance data?',
        'Host metrics (platform-level metrics like CPU percentage and network in/out) are available by default with no agent required and can be viewed near-real-time through Metrics Explorer. Querying the Perf table via Log Analytics (C) requires an agent to have collected guest-level performance counters first. VM insights guest-level performance counters (D) explicitly require an in-VM agent, contradicting the "no agent" requirement. Custom Event Log collection via AMA (A) is unrelated to host-level CPU/network metrics and also requires an agent.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('99d46321-9898-431d-9319-6dc9a71b49a2', '00a68547-d463-4e3c-a89f-17566b0a28b8', 'VM insights guest-level performance counters', FALSE, 1),
    ('1357bed0-f272-46b1-b619-de0bb386e9db', '00a68547-d463-4e3c-a89f-17566b0a28b8', 'Custom Event Log collection via AMA', FALSE, 2),
    ('4159d08f-2b68-4b9c-8605-cad2306b9e46', '00a68547-d463-4e3c-a89f-17566b0a28b8', 'Metrics Explorer using host metrics', TRUE, 3),
    ('ebf97110-2d72-408f-ba90-2b7d7b5a0d3b', '00a68547-d463-4e3c-a89f-17566b0a28b8', 'Log Analytics query against the Perf table', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('01327a05-1206-488f-bd8d-42985a805532', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso needs to monitor per-process memory consumption and collect custom application event logs from inside its VMs, data that is not exposed by default platform telemetry. What is required to collect this class of data?',
        'Per-process memory consumption and custom application event logs are guest OS-level telemetry that require an agent running inside the VM, such as the Azure Monitor Agent, to collect. Host metrics (C) do not include this granular guest-level detail by default. The Dependency Agent alone (D) only maps process dependencies; it does not collect performance counters or event logs, and typically works alongside AMA rather than instead of it. A subscription-level diagnostic setting alone (A) does not reach inside the guest OS to collect this data.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('25c02ded-3d6c-4ef0-a2cb-34c1661dd3c0', '01327a05-1206-488f-bd8d-42985a805532', 'Only the Dependency Agent, without any additional agent', FALSE, 1),
    ('1e8aff82-c9e8-41bb-89ce-f8e841aa58c6', '01327a05-1206-488f-bd8d-42985a805532', 'Nothing additional; host metrics already include this data by default', FALSE, 2),
    ('99b784ec-a89a-4c47-8ef4-dd4124af4c2b', '01327a05-1206-488f-bd8d-42985a805532', 'Only a diagnostic setting on the subscription, with no in-VM agent', FALSE, 3),
    ('1c80fbdb-00c1-43c9-bea3-45d006378d2d', '01327a05-1206-488f-bd8d-42985a805532', 'An agent installed inside the VM, such as the Azure Monitor Agent, to collect guest OS-level metrics and events', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0cde7982-4285-48d4-ad53-e94a05625dff', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'An operations team at Fabrikam is triaging incoming Azure Monitor alerts and needs to prioritize the most critical, service-impacting issues first. Which severity level represents the most critical alert classification in Azure Monitor''s severity scale?',
        'In Azure Monitor''s alert severity scale, Sev 0 represents the most critical severity, while severities descend in criticality down to Sev 4 (verbose). Sev 4 (B) is the least critical/informational level, not the most critical. Sev 2 (C) and Sev 3 (D) represent intermediate severities, not the most critical classification.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('762a6ea7-e7a5-4b75-916e-f5248f0ed2c6', '0cde7982-4285-48d4-ad53-e94a05625dff', 'Sev 3', FALSE, 1),
    ('fe3ac77e-ae38-428e-a4d5-1698a2683545', '0cde7982-4285-48d4-ad53-e94a05625dff', 'Sev 0', TRUE, 2),
    ('22ba3a2d-ff33-4cb3-affa-5ff2c7d5e276', '0cde7982-4285-48d4-ad53-e94a05625dff', 'Sev 4', FALSE, 3),
    ('44d6fc83-7af4-46ab-9080-94527aa5f25e', '0cde7982-4285-48d4-ad53-e94a05625dff', 'Sev 2', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('358804d9-c31c-414c-93e8-a8e7c4ef5225', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso''s monitoring lead is comparing two alert types. One evaluates numeric platform data very frequently and fires within a couple of minutes of a threshold breach. The other runs a scheduled KQL query against a Log Analytics workspace and, due to query execution and data ingestion latency, generally takes longer to fire after the underlying condition occurs. Which two alert types are being described, respectively?',
        'Metric alerts evaluate numeric platform data frequently and fire in near real time, whereas log alerts run a scheduled KQL query against a Log Analytics workspace and are subject to query execution plus data ingestion latency, making them slower to fire. Option A misapplies these behaviors to activity log alerts and Smart Groups, which are different constructs entirely (activity log alerts fire on control-plane events; Smart Groups group related alerts). Option B simply reverses the correct order of alert types. Option C describes Action Groups and Smart Groups, neither of which is an alert type with the described latency characteristics.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ac69b850-b022-41fd-bc66-ac92a9b85155', '358804d9-c31c-414c-93e8-a8e7c4ef5225', 'Action Groups and Smart Groups', FALSE, 1),
    ('c446f81e-5d3b-4690-af6e-d704209ef875', '358804d9-c31c-414c-93e8-a8e7c4ef5225', 'Activity log alerts and Smart Groups', FALSE, 2),
    ('daa754c9-1d5e-4632-97ec-d4a20af36de3', '358804d9-c31c-414c-93e8-a8e7c4ef5225', 'Metric alerts and log alerts', TRUE, 3),
    ('96082df9-bd1c-47e0-8d8b-084d20f8c1e3', '358804d9-c31c-414c-93e8-a8e7c4ef5225', 'Log alerts and metric alerts', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5b5d7563-6d6a-48fd-9293-6fe14adccde5', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'A Fabrikam administrator wants to be notified whenever a specific production virtual machine is deleted or has its network security group modified, both of which are control-plane operations rather than numeric threshold conditions. Which type of alert rule should the administrator configure to capture these events?',
        'Activity log alerts fire based on control-plane events recorded in the Activity Log, such as resource deletion or modification (e.g., an NSG change), which is exactly the scenario described. Metric alerts (D) evaluate numeric platform data, not control-plane events. A log alert against the Heartbeat table (A) would only reveal agent connectivity issues, not resource deletion/modification events. "Smart Group alert" (B) is not a real alert rule type; Smart Groups are a grouping mechanism for existing alerts.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a0c926f5-9c48-4269-aa40-d8d72c9b4dda', '5b5d7563-6d6a-48fd-9293-6fe14adccde5', 'Activity log alert', TRUE, 1),
    ('fe6d514b-560b-4a34-9588-6ef5d768f779', '5b5d7563-6d6a-48fd-9293-6fe14adccde5', 'Metric alert', FALSE, 2),
    ('dd37c25c-571f-4d04-8d11-40f8e079d63d', '5b5d7563-6d6a-48fd-9293-6fe14adccde5', 'Log alert based on the Heartbeat table', FALSE, 3),
    ('aac1a8ff-dd4b-40f9-8850-cb3eb74d8150', '5b5d7563-6d6a-48fd-9293-6fe14adccde5', 'Smart Group alert', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b33e9720-a630-420a-b5a3-909aaeb83821', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'When Contoso''s metric alert fires because CPU utilization crossed 90 percent, the company needs the alert to simultaneously send an email to the on-call engineer, trigger a webhook to its ITSM ticketing tool, and invoke an Azure Automation runbook to attempt an automated remediation. Which Azure Monitor construct bundles these notification and automated response actions together for the alert to invoke?',
        'An Action Group is the Azure Monitor construct that bundles together notification and automated remediation actions — such as email, webhook to an ITSM tool, and an Automation runbook — that get invoked when an alert fires. A Data Collection Rule (A) governs what telemetry AMA collects, not alert response actions. A Diagnostic Setting (B) routes resource logs/metrics to destinations, not alert response actions. A Recovery Services Vault (C) is a backup/Site Recovery storage container, unrelated to alert actions.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('22ef53ca-e2e4-4bdb-a762-0014d0e45e87', 'b33e9720-a630-420a-b5a3-909aaeb83821', 'Diagnostic Setting', FALSE, 1),
    ('1c009c5e-0d95-43c4-b010-0ebef0b86e81', 'b33e9720-a630-420a-b5a3-909aaeb83821', 'Data Collection Rule', FALSE, 2),
    ('92263a71-6cc4-4752-8d93-69534bd02859', 'b33e9720-a630-420a-b5a3-909aaeb83821', 'Action Group', TRUE, 3),
    ('e35ca8ab-8e0d-4f55-a0d8-6c075860a3aa', 'b33e9720-a630-420a-b5a3-909aaeb83821', 'Recovery Services Vault', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('19ac482c-bbc3-4672-8482-9e3b9b1eab27', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Fabrikam''s monitoring dashboard is being flooded with dozens of related individual alerts stemming from a single underlying network outage, making it hard for the on-call engineer to identify the root cause quickly. Which Azure Monitor feature uses machine learning to automatically group related alerts together to reduce this noise?',
        'Smart Groups use machine learning to automatically group related alerts together, reducing noise and helping engineers identify a common root cause faster. Azure Advisor (B) provides configuration/cost/performance recommendations, not alert grouping. Data Collection Rules (C) govern telemetry collection for AMA, unrelated to alert grouping. Metrics Explorer (D) is a tool for plotting metrics, not for grouping alerts.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6dc0d9fd-4b3f-43f3-8d0c-7de834ded169', '19ac482c-bbc3-4672-8482-9e3b9b1eab27', 'Azure Advisor', FALSE, 1),
    ('223bba71-e184-410b-975c-c04a852e86e6', '19ac482c-bbc3-4672-8482-9e3b9b1eab27', 'Metrics Explorer', FALSE, 2),
    ('13e51718-adef-4b2b-b889-6f9082796831', '19ac482c-bbc3-4672-8482-9e3b9b1eab27', 'Data Collection Rules', FALSE, 3),
    ('63c67602-55d6-4b6b-b1b0-721687fea5ce', '19ac482c-bbc3-4672-8482-9e3b9b1eab27', 'Smart Groups', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b46463fa-d210-48c9-97e3-b383cf81b3dd', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso''s compliance team requires that backup data stored in Azure be automatically replicated to a paired Azure region for maximum resilience against a regional outage, without the company having to manage the underlying replication infrastructure. Which Azure Backup storage redundancy option should be selected to satisfy this cross-region replication requirement?',
        'Geo-redundant storage (GRS) replicates backup data to a paired secondary Azure region, providing resilience against a full regional outage, and Azure Backup manages this replication automatically. Locally-redundant storage (C) only replicates within a single datacenter and does not protect against regional outages. Zone-redundant storage (D) replicates across availability zones within the same region, not to a different region. "Client-managed replication" (A) is not an Azure Backup redundancy option; redundancy is configured, not manually replicated by the customer.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b01e1a8d-3ec0-4916-bc37-4a9147860f93', 'b46463fa-d210-48c9-97e3-b383cf81b3dd', 'Locally-redundant storage (LRS)', FALSE, 1),
    ('b00bb7c9-3097-4dd1-8760-62dfe0113101', 'b46463fa-d210-48c9-97e3-b383cf81b3dd', 'Zone-redundant storage (ZRS)', FALSE, 2),
    ('c94f5f15-8a89-4425-a300-da6bcc5b650c', 'b46463fa-d210-48c9-97e3-b383cf81b3dd', 'Geo-redundant storage (GRS)', TRUE, 3),
    ('21feddf8-4707-4419-bf99-d8fdc2eb1123', 'b46463fa-d210-48c9-97e3-b383cf81b3dd', 'Client-managed replication', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e33d2f5b-3fbe-45c2-9ed3-f42bcb6f7297', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'A Fabrikam finance stakeholder is concerned about ongoing bandwidth charges for continuously sending backup data from Azure VMs to a Recovery Services Vault over time. According to Azure Backup''s cost model, which statement about data transfer charges is accurate?',
        'Azure Backup provides unlimited data transfer at no charge for inbound and outbound backup traffic, with the sole exception being the initial offline seeding of data performed via the Azure Import/Export service. Option B incorrectly claims per-gigabyte charges apply to all transfers. Option C incorrectly claims only restore traffic is free while all backup traffic is charged, which reverses the actual model. Option D invents a 30-day free period that does not reflect the actual unlimited-transfer benefit.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d4d578a7-358e-42c1-9050-3d9401dcf5be', 'e33d2f5b-3fbe-45c2-9ed3-f42bcb6f7297', 'Only outbound restore traffic is free; all backup traffic is charged', FALSE, 1),
    ('cf277295-1faf-4136-8a97-be4bdb24cf87', 'e33d2f5b-3fbe-45c2-9ed3-f42bcb6f7297', 'Data transfer is free only for the first 30 days after vault creation', FALSE, 2),
    ('12e1f691-aff0-4f14-b164-a643a077d1cb', 'e33d2f5b-3fbe-45c2-9ed3-f42bcb6f7297', 'Every incremental backup transfer is billed per gigabyte transferred, with no exceptions', FALSE, 3),
    ('93130510-066b-4eba-905a-35775d589806', 'e33d2f5b-3fbe-45c2-9ed3-f42bcb6f7297', 'Azure Backup offers unlimited data transfer with no charge for inbound or outbound backup traffic, except for the initial offline seeding performed through the Azure Import/Export service', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c0502485-ef95-4ee5-898b-b8b63f276a32', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso needs to back up several classic workloads directly to Azure, including its Azure VMs, an Azure VM running SQL Server, Azure File shares, and SAP HANA running on an Azure VM. Which resource type is required to store and manage backup data for these workloads?',
        'A Recovery Services Vault is the resource required to store and manage backup data for classic workloads including Azure VMs, Azure VM SQL, Azure File shares, and SAP HANA on Azure VMs. A Backup Vault (D) targets a different, newer class of workloads (e.g., PostgreSQL, Managed Disks, Blobs), not these classic workloads. A Storage Account (A) is a general-purpose data store, not the vault construct used to manage these backups. An Automation Account (B) hosts runbooks, unrelated to backup storage.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('746fa792-7bfc-4b33-bbf3-f2df5b2a1851', 'c0502485-ef95-4ee5-898b-b8b63f276a32', 'Storage Account', FALSE, 1),
    ('30512b06-7959-4806-bf54-72b21449658d', 'c0502485-ef95-4ee5-898b-b8b63f276a32', 'Backup Vault', FALSE, 2),
    ('f917552e-7124-4635-9fcb-b7881989ded0', 'c0502485-ef95-4ee5-898b-b8b63f276a32', 'Automation Account', FALSE, 3),
    ('4f5cf2b2-550d-44d8-9d30-843bd1d01f57', 'c0502485-ef95-4ee5-898b-b8b63f276a32', 'Recovery Services Vault', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1e7babb3-cedf-4799-964c-208d173d09df', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Fabrikam is adopting Azure Database for PostgreSQL, Azure Managed Disks, and Azure Blob storage, and wants to configure backup for these newer data services. Which newer Azure resource type is specifically designed to target this class of modern data services?',
        'The Backup Vault is the newer Azure resource type specifically designed to target modern data services such as Azure Database for PostgreSQL, Azure Managed Disks, and Azure Blobs. The Recovery Services Vault (D) targets the classic workload set (Azure VMs, SQL on VM, File shares, SAP HANA, and on-premises agent-based workloads), not these newer services. A Log Analytics workspace (A) is used for monitoring data, not backup. A "Site Recovery Vault" (B) is not a distinct resource type from the Recovery Services Vault used for ASR.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2855abdf-dcd1-4b29-a650-d88422483685', '1e7babb3-cedf-4799-964c-208d173d09df', 'Backup Vault', TRUE, 1),
    ('be24a844-f375-4300-98e2-4af8b816fb30', '1e7babb3-cedf-4799-964c-208d173d09df', 'Site Recovery Vault', FALSE, 2),
    ('37a83b01-c15e-439b-b25c-3088ade6a10f', '1e7babb3-cedf-4799-964c-208d173d09df', 'Recovery Services Vault', FALSE, 3),
    ('4aa2066d-2144-4aaa-a2ed-b39fd7e8cb0a', '1e7babb3-cedf-4799-964c-208d173d09df', 'Log Analytics workspace', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('53554d51-0527-4008-a334-fe4791dc7d25', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso has a small branch office with a handful of physical Windows servers that need simple, file- and folder-level backup directly to Azure without deploying a dedicated backup server. The solution does not need to be application-aware and will run at most a couple of times daily. Which on-premises backup tool best fits this scenario?',
        'The MARS agent (Microsoft Azure Recovery Services agent) backs up files and folders directly from a physical or virtual machine to a Recovery Services Vault, supports up to 3 backups per day, is not application-aware, and requires no separate backup server — matching this branch-office scenario exactly. MABS (B) would require deploying a dedicated backup server, which the scenario explicitly wants to avoid. Plain SCDPM without Azure integration (C) does not back up directly to Azure. Azure Site Recovery (D) is a disaster recovery replication service, not a file/folder backup tool.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b4b0b17b-485d-4d66-991c-61ddddb35e8d', '53554d51-0527-4008-a334-fe4791dc7d25', 'Azure Site Recovery', FALSE, 1),
    ('2fd5df50-95a4-4e92-936c-2b26bf596c98', '53554d51-0527-4008-a334-fe4791dc7d25', 'MARS agent (Microsoft Azure Recovery Services agent)', TRUE, 2),
    ('e7e7c71d-0749-4766-8fad-9df43ad5e0fb', '53554d51-0527-4008-a334-fe4791dc7d25', 'System Center Data Protection Manager without Azure integration', FALSE, 3),
    ('c73a10b3-0f6c-4061-b955-34f3962efac5', '53554d51-0527-4008-a334-fe4791dc7d25', 'Microsoft Azure Backup Server (MABS)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1b0e46f7-24f8-46b5-be63-c7d6c4436013', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Fabrikam runs a mixed virtualization environment with Hyper-V and VMware VMs, some running Linux, and needs application-aware backups with granular recovery and full flexibility over backup scheduling, without purchasing a System Center license. Which Azure Backup component should Fabrikam deploy on-premises to meet these requirements?',
        'Microsoft Azure Backup Server (MABS) provides application-aware snapshots, full scheduling flexibility, granular recovery, and support for Linux VMs on Hyper-V/VMware, as well as VMware VM backup, all without requiring a System Center license. The MARS agent (C) only performs file/folder/volume-level, non-application-aware backups and has no Linux support, failing the scenario''s requirements. Backup Center alone (D) is a management interface, not a backup engine capable of protecting these workloads. The Diagnostics extension (A) is a monitoring component, unrelated to VM backup.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('efa21d8e-2e65-42ec-97a4-f5bb5afaa508', '1b0e46f7-24f8-46b5-be63-c7d6c4436013', 'MARS agent', FALSE, 1),
    ('eb6e8adf-bc77-4cfa-9589-87a9c9849a18', '1b0e46f7-24f8-46b5-be63-c7d6c4436013', 'Diagnostics extension', FALSE, 2),
    ('f82eee24-72c2-4bfc-9bad-e9330244b675', '1b0e46f7-24f8-46b5-be63-c7d6c4436013', 'Microsoft Azure Backup Server (MABS)', TRUE, 3),
    ('33db99c3-1738-4510-95ba-2e5acd4d60a6', '1b0e46f7-24f8-46b5-be63-c7d6c4436013', 'Azure Backup Center only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('621b9b19-6b71-4d04-b16b-5595b9dca9a4', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'An administrator is comparing the MARS agent and MABS (Microsoft Azure Backup Server) before choosing a solution for a mixed on-premises estate. Which of the following is an accurate distinguishing capability between the two?',
        'MABS supports Linux VMs running on Hyper-V or VMware and offers granular, application-aware recovery, while the MARS agent has no Linux support at all and is limited to file/folder/volume-level restores. Option D reverses the actual capabilities (MARS does not support VMware VM backup; that is a MABS/MABS-DPM capability, and MABS is not limited to file-level backup). Option A incorrectly assigns the 3-backups-per-day limit to MABS instead of the MARS agent. Option B incorrectly claims the MARS agent requires a System Center license; in fact neither tool requires SCDPM licensing for MABS, and the MARS agent doesn''t use SCDPM at all.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8666d2c2-cb48-4c23-8d06-ec78d4ed6b10', '621b9b19-6b71-4d04-b16b-5595b9dca9a4', 'The MARS agent requires an active System Center Data Protection Manager license, while MABS does not', FALSE, 1),
    ('2ef09f7b-6c03-4122-8f9b-bd2e293f2f2d', '621b9b19-6b71-4d04-b16b-5595b9dca9a4', 'MABS is limited to a maximum of 3 backups per day, while the MARS agent has no such limit', FALSE, 2),
    ('5e51c201-85f5-4995-b0fd-2ff76a917c49', '621b9b19-6b71-4d04-b16b-5595b9dca9a4', 'The MARS agent supports VMware VM backup, while MABS only supports file-level backup', FALSE, 3),
    ('bd9332f3-b30a-4198-981c-6476d1d3424d', '621b9b19-6b71-4d04-b16b-5595b9dca9a4', 'MABS supports Linux virtual machines running on Hyper-V or VMware, while the MARS agent has no Linux support and only performs file/folder/volume level restores', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('532e5e7b-8a90-473b-8097-12d84b495b9c', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso''s IT director wants a single pane of glass to govern and monitor backup jobs, policies, and compliance across multiple Recovery Services Vaults and Backup Vaults spanning several subscriptions. Which Azure Backup capability provides this centralized management experience?',
        'Backup Center provides a single, central management pane for governing and monitoring backup across multiple Recovery Services Vaults and Backup Vaults, including across subscriptions. Azure Advisor (A) provides general optimization recommendations, not centralized backup management. Metrics Explorer (B) is for plotting Azure Monitor metrics. Smart Groups (C) is an alert-grouping feature in Azure Monitor, unrelated to backup governance.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('15f6ddaf-6f5b-4d25-8406-dc76f7b762ad', '532e5e7b-8a90-473b-8097-12d84b495b9c', 'Azure Advisor', FALSE, 1),
    ('f101761e-91c9-4c96-824a-46b7814e80af', '532e5e7b-8a90-473b-8097-12d84b495b9c', 'Metrics Explorer', FALSE, 2),
    ('53c5b567-ceef-433e-8f5f-5cfb8bd48fbd', '532e5e7b-8a90-473b-8097-12d84b495b9c', 'Backup Center', TRUE, 3),
    ('573266ff-e6c7-4ab7-bfa7-c5b2a7827612', '532e5e7b-8a90-473b-8097-12d84b495b9c', 'Smart Groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9b33f47d-08b5-4573-abff-16b12bac120e', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso backs up a Windows Server VM running SQL Server using Azure Backup. The backup extension leverages the Volume Shadow Copy Service (VSS) inside the guest OS to quiesce application I/O before the snapshot is taken. What type of recovery point does this process produce?',
        'When VSS is used inside a Windows guest OS to quiesce application I/O before a snapshot, the result is an application-consistent recovery point, ensuring applications like SQL Server are in a transactionally consistent state. A crash-consistent-only recovery point (B) results when no application-level quiescing occurs, which is not what VSS achieves here. "File-consistent" (C) and "metadata-only" (D) are not recognized categories of Azure VM backup recovery points.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1dcfa45c-0203-49b0-a2f0-143b6595013e', '9b33f47d-08b5-4573-abff-16b12bac120e', 'Application-consistent recovery point', TRUE, 1),
    ('98c8796e-80c0-43fa-aa0f-a29b4f07445d', '9b33f47d-08b5-4573-abff-16b12bac120e', 'Metadata-only recovery point', FALSE, 2),
    ('2757248b-6e1e-4374-af74-b2cc1eeb7f98', '9b33f47d-08b5-4573-abff-16b12bac120e', 'File-consistent recovery point', FALSE, 3),
    ('3c5d3a4f-bf43-45fc-8f07-f68c0092b04d', '9b33f47d-08b5-4573-abff-16b12bac120e', 'Crash-consistent recovery point only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('95e28060-f048-4562-b604-6760d21186f1', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'During a backup job for an Azure VM, a snapshot is taken and cached locally on the customer''s own storage before being transferred to the Recovery Services Vault. Fabrikam wants to use this locally cached snapshot to perform a much faster recovery than restoring from the vault. Which Azure Backup capability enables this, and what is its configurable retention range?',
        'Instant Restore uses the VM snapshot that remains cached locally on the customer''s own storage before it''s transferred to the vault, enabling much faster recovery, with a configurable retention range of 1 to 5 days; it is enabled by default for everyone and cannot be disabled. Soft delete (C) is a data-retention safety feature for deleted backup data, not a fast-restore mechanism, and its window is fixed at 14 days, not configurable. Cross Region Restore (D) and archive tier restore (A) are unrelated capabilities with different purposes and retention characteristics not matching this description.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0d77bc72-0e3a-47f0-b613-39597e072d25', '95e28060-f048-4562-b604-6760d21186f1', 'Soft delete, fixed at 14 days', FALSE, 1),
    ('156dd408-0d1b-46d0-a454-31bb2c743d6f', '95e28060-f048-4562-b604-6760d21186f1', 'Archive tier restore, configurable from 30 to 180 days', FALSE, 2),
    ('dd77c6ba-db9a-49a3-9966-b2bccb7a0409', '95e28060-f048-4562-b604-6760d21186f1', 'Instant Restore, configurable from 1 to 5 days', TRUE, 3),
    ('7e5a0b1e-fa79-4307-a4a0-649407de278a', '95e28060-f048-4562-b604-6760d21186f1', 'Cross Region Restore, configurable from 7 to 30 days', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8e2ccc12-7ee7-4439-a616-352d52ca196e', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'An administrator at Contoso restores an Azure VM from a recovery point that was captured while several VM extensions were installed and active. After the restore completes, the administrator notices the extensions are present again but are not functioning. What is the expected post-restore behavior regarding VM extensions?',
        'Extensions that were present on the VM at backup time are reinstalled during a restore, but they are not automatically re-enabled, requiring manual action afterward. Option A is incorrect because extensions are not permanently lost; they are reinstalled. Option B is incorrect because re-enabling is not automatic. Option C describes an unrelated and nonexistent behavior involving Data Collection Rules.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('20275c83-3a3f-44c9-a239-efbfcf9d1c09', '8e2ccc12-7ee7-4439-a616-352d52ca196e', 'Extensions present at backup time are reinstalled during restore but are not automatically re-enabled', TRUE, 1),
    ('ccaf54fb-118b-4d92-8f53-5e80f84f6689', '8e2ccc12-7ee7-4439-a616-352d52ca196e', 'Extensions are automatically reinstalled and re-enabled with no manual action required', FALSE, 2),
    ('b0a45593-db3e-4015-8968-ce80ec89c5fa', '8e2ccc12-7ee7-4439-a616-352d52ca196e', 'Extensions are converted into Data Collection Rules during restore', FALSE, 3),
    ('1f646c0e-7670-4bbd-b217-83f96e07417e', '8e2ccc12-7ee7-4439-a616-352d52ca196e', 'Extensions are permanently lost and must be reinstalled from scratch', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5f3dc691-1431-4aa1-bb66-479e38c09eaf', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Before an outage, a Fabrikam production VM had a static private IP address assigned to its NIC. After the administrator restores the VM using Azure Backup, they need to understand what will happen to the VM''s networking configuration and how to correct it if needed. What should the administrator expect?',
        'A restored VM that previously had a static private IP will be assigned a dynamic IP after restore specifically to avoid IP conflicts, and the administrator can reassign the static IP afterward using a cmdlet such as Set-AzNetworkInterfaceIpConfig. Option B is incorrect because the static IP is not automatically retained. Option C incorrectly claims total loss of NICs, which does not occur. Option D incorrectly claims a public IP is always assigned regardless of prior configuration.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2aaed39f-92d1-44cf-a2cd-3135bfce5b4d', '5f3dc691-1431-4aa1-bb66-479e38c09eaf', 'The restored VM will automatically retain its original static IP address with no possibility of conflict', FALSE, 1),
    ('f4fcea05-ddf4-42be-a99a-7731f81ed861', '5f3dc691-1431-4aa1-bb66-479e38c09eaf', 'The restored VM will receive a dynamic private IP address to avoid conflicts, and the static IP can be reassigned afterward using a cmdlet such as Set-AzNetworkInterfaceIpConfig', TRUE, 2),
    ('df8bd8bf-3830-499d-bfea-809f25fed0f1', '5f3dc691-1431-4aa1-bb66-479e38c09eaf', 'The restored VM will be assigned a public IP address regardless of its prior configuration', FALSE, 3),
    ('43ea4081-3650-4d00-954a-8ef3aefcc491', '5f3dc691-1431-4aa1-bb66-479e38c09eaf', 'The restored VM will lose all network interfaces and must be manually recreated with new NICs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ce399626-57b6-41cc-8afb-706abce8ca6f', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'A Contoso VM that was originally part of an availability set is deleted and later restored from a Recovery Services Vault recovery point. The administrator wants to know whether the restored VM will automatically be placed back into its original availability set. What is the expected default behavior, and how can the administrator address it if needed?',
        'A restored Azure VM has no availability set by default; to place it back into an availability set, the administrator must use the restore-disk-then-redeploy approach, specifying the desired availability set via an ARM template or PowerShell. Option A is incorrect because automatic rejoining does not occur. Option B incorrectly claims availability sets become permanently unusable after any backup, which is false. Option C incorrectly claims automatic conversion to availability zones, which is not part of the default restore behavior.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('55e5ff36-bd27-4ef1-84d1-3c352f9f49ff', 'ce399626-57b6-41cc-8afb-706abce8ca6f', 'The restored VM has no availability set by default; the administrator can specify one manually using the restore-disk-then-redeploy path via an ARM template or PowerShell', TRUE, 1),
    ('1bec89fc-1395-447b-a669-b7de038b9e95', 'ce399626-57b6-41cc-8afb-706abce8ca6f', 'The restored VM is automatically converted into an availability zone deployment', FALSE, 2),
    ('e6dcff44-6a40-473c-a7d8-c817cba16b3c', 'ce399626-57b6-41cc-8afb-706abce8ca6f', 'Availability sets cannot be used with VMs that have ever been backed up', FALSE, 3),
    ('39d2688c-7aab-4fd8-a322-72d44acb482b', 'ce399626-57b6-41cc-8afb-706abce8ca6f', 'The restored VM automatically rejoins its original availability set with no manual action required', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7f2b7aab-6fd9-4c6b-aa2e-0cf048320283', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Fabrikam''s security team accidentally selects "Stop backup and delete data" for a VM that still had a legal hold pending review. They immediately want to know their recovery options for the deleted backup data. According to Azure Backup''s soft delete behavior, which statement is correct?',
        'Soft delete retains deleted backup data for an additional 14 days in a soft-deleted state (with no retention policy actively applied) before permanent purge, and it can be recovered via an Undelete operation during that window. Option B is incorrect because immediate, unrecoverable purge does not occur due to the native soft-delete protection. Option C is incorrect because soft delete is natively enabled for all Recovery Services Vaults, not something that must be manually turned on to take effect. Option D incorrectly claims the original retention policy still applies during the soft-deleted state, when in fact no retention policy is applied during that window.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('062ee600-bffb-4e1a-8e8e-571dd1872cad', '7f2b7aab-6fd9-4c6b-aa2e-0cf048320283', 'Soft-deleted data retains its original retention policy indefinitely until manually purged', FALSE, 1),
    ('64efce99-edb4-438c-96be-e612875c150f', '7f2b7aab-6fd9-4c6b-aa2e-0cf048320283', 'Soft delete must be manually enabled per vault before it provides any protection', FALSE, 2),
    ('e730540c-f906-40a1-ba85-9876a0131e08', '7f2b7aab-6fd9-4c6b-aa2e-0cf048320283', 'The backup data is permanently and immediately purged with no recovery option', FALSE, 3),
    ('5bc2eaa5-69b3-459e-957a-35372a8f5d5d', '7f2b7aab-6fd9-4c6b-aa2e-0cf048320283', 'The backup data enters a soft-deleted state and is retained for an additional 14 days before permanent purge, and can be recovered via an Undelete operation within that window', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('06f30523-f037-4325-9a41-6239902ff0fd', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Contoso wants to stop backing up a decommissioned VM but must retain the existing recovery points indefinitely for regulatory reasons, with no future purge date. Which stop-backup option should the administrator choose to achieve this outcome, as opposed to the option that would start a soft-delete countdown?',
        '"Stop backup and retain data" keeps the existing recovery points indefinitely with no purge date, which matches the regulatory retention requirement described. "Stop backup and delete data" (C) would instead start the soft-delete 14-day countdown toward eventual purge, which is the opposite of what''s needed. "Pause backup temporarily" (D) is not one of the two defined stop-backup options in Azure Backup. "Disable the Recovery Services Vault" (A) is not a valid, targeted action for stopping backup on a single VM''s data retention.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0a8563e7-7fe5-45dc-896b-3dda4c41d209', '06f30523-f037-4325-9a41-6239902ff0fd', 'Stop backup and delete data', FALSE, 1),
    ('83ee4515-d1b9-407d-85bd-e0dad9f42a7a', '06f30523-f037-4325-9a41-6239902ff0fd', 'Disable the Recovery Services Vault', FALSE, 2),
    ('ca9162ba-7759-4359-94d9-0b5e9eed555e', '06f30523-f037-4325-9a41-6239902ff0fd', 'Stop backup and retain data', TRUE, 3),
    ('d914a5de-b510-4224-ac42-d91b911796cd', '06f30523-f037-4325-9a41-6239902ff0fd', 'Pause backup temporarily', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d12f6740-4c46-41dd-b6ed-f82b367930f3', 'bcae176f-8d1e-4ba5-94b4-597fae74add7', 'SINGLE_CHOICE', 'Beyond routine backup and restore, Fabrikam wants to protect its production workload against the risk of an entire Azure region becoming unavailable, and it wants to validate its disaster recovery plan in an isolated network without impacting the production environment or ongoing replication. Which Azure service should Fabrikam use, and which specific feature supports this non-disruptive validation?',
        'Azure Site Recovery (ASR) protects workloads against a full regional outage by replicating VMs (Azure, VMware, Hyper-V, including those managed by System Center VMM) and physical servers to a secondary region or site, and its Test Failover feature specifically allows validating a DR plan in an isolated network without impacting production or ongoing replication. Azure Backup''s Instant Restore (C) addresses fast recovery from a local snapshot cache, not regional disaster recovery or isolated DR testing. Azure Monitor''s Smart Groups (D) groups alerts and has nothing to do with regional failover. Azure Advisor''s Reliability recommendations (A) offer configuration guidance but do not provide replication or failover testing capability.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7bd64ef0-1fe9-48ab-b050-13dea5d63594', 'd12f6740-4c46-41dd-b6ed-f82b367930f3', 'Azure Backup, using its Instant Restore feature', FALSE, 1),
    ('0dcd578e-19c4-451f-881c-513a56f7a82c', 'd12f6740-4c46-41dd-b6ed-f82b367930f3', 'Azure Advisor, using its Reliability recommendations', FALSE, 2),
    ('7451b1c3-be64-4e4e-bf02-045436fff80e', 'd12f6740-4c46-41dd-b6ed-f82b367930f3', 'Azure Monitor, using its Smart Groups feature', FALSE, 3),
    ('579d7dfa-fde6-4de2-a859-1ea51c77d36b', 'd12f6740-4c46-41dd-b6ed-f82b367930f3', 'Azure Site Recovery, using its Test Failover feature', TRUE, 4);
