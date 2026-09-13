INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('c0a48db5-6118-42a8-b205-f0966839075e', '00000000-0000-0000-0000-000000000002', 'module-04-virtual-networks-practice', 'Module 4 (Practice Scenarios) - Configure and Manage Virtual Networks',
        NULL, 10);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('20493e7e-d3bb-4913-8515-9f3f92591e2f', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso is designing a new virtual network named VNet-Prod with address space 10.10.0.0/16. The network team wants to reserve a dedicated subnet for a future VPN gateway and separate subnets for a web tier and a data tier, each with room to grow. Which approach should they take when planning the subnets?',
        'Correct: Subnet planning requires each subnet''s address range to be unique and non-overlapping within the virtual network''s address space, and administrators should leave enough unallocated space to meet future service requirements, such as a dedicated gateway subnet. B) is wrong because a single flat subnet defeats the purpose of segmentation for security and manageability. C) is wrong because a gateway subnet must exist in the same virtual network it will attach to, and overlapping address ranges are not permitted between virtual networks that need to be connected. D) is wrong because subnet address ranges within one virtual network cannot overlap; each subnet must be unique.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('073ad6af-1e16-434c-a635-5a44382fc2b1', '20493e7e-d3bb-4913-8515-9f3f92591e2f', 'Create the web and data tier subnets in VNet-Prod, and create the gateway subnet in a completely separate virtual network with an overlapping address range', FALSE, 1),
    ('523d71a7-c9a6-45f8-b347-58d1f57d97b9', '20493e7e-d3bb-4913-8515-9f3f92591e2f', 'Use the same address range for all three subnets so any resource can move between tiers freely', FALSE, 2),
    ('7d5cd94e-67d8-4a3d-8b91-b7f0f0f77899', '20493e7e-d3bb-4913-8515-9f3f92591e2f', 'Create a single subnet covering the entire 10.10.0.0/16 range and place all resources in it', FALSE, 3),
    ('112cb74a-19a9-4424-9d5a-34cea3ccff5c', '20493e7e-d3bb-4913-8515-9f3f92591e2f', 'Create separate, non-overlapping subnets within 10.10.0.0/16 for the gateway, web tier, and data tier, sized with enough unallocated address space for growth', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bbc45ce9-7a16-48d7-877e-06de372c918d', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'An administrator at Contoso creates a subnet with the address range 172.16.1.0/24. A developer complains that the usable address range appears smaller than expected. Which explanation is correct?',
        'Correct: For every subnet, Azure reserves five IP addresses — the network address (.0), the default gateway (.1), two addresses mapped to Azure DNS (.2 and .3), and the broadcast address (.255) — reducing the usable address count. B) is incorrect; Azure does not reserve half a subnet automatically. C) is incorrect; /24 subnets are fully supported. D) is incorrect; the five reserved addresses apply to every subnet regardless of NSG association.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e8b52814-80fc-4337-9e0b-48a258dc5574', 'bbc45ce9-7a16-48d7-877e-06de372c918d', 'The subnet must be re-created because /24 subnets are not supported in Azure', FALSE, 1),
    ('c2cb995c-3bf0-4c10-931a-99a41cb1a5c6', 'bbc45ce9-7a16-48d7-877e-06de372c918d', 'Reserved addresses only apply if a network security group is attached to the subnet', FALSE, 2),
    ('c8bba5f0-c35c-4a91-abbd-fb46ab98d01c', 'bbc45ce9-7a16-48d7-877e-06de372c918d', 'Azure reserves half of every subnet for future scale-out', FALSE, 3),
    ('ce481999-a85d-4795-986c-9d016945ef10', 'bbc45ce9-7a16-48d7-877e-06de372c918d', 'Azure reserves five addresses per subnet: the network address, the default gateway, two addresses reserved for Azure DNS, and the broadcast address', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('35fb3717-a31c-482c-ba27-da7047aa00fc', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s network architects want traffic between two subnets in the same virtual network to always pass through a partner firewall appliance, rather than flow directly using Azure''s default routing. What must they implement to achieve this?',
        'Correct: By default, Azure routes traffic freely between subnets in a virtual network. To force traffic through a network virtual appliance, administrators must override the default routing with user-defined routes, and deploy resources needing appliance inspection onto different subnets. A) is incorrect because an NSG filters traffic based on rules, but does not redirect traffic through an appliance. C) is incorrect; DNS zones handle name resolution, not traffic path control. D) is incorrect; this behavior is not automatic and must be explicitly configured.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ad23c728-933d-4b84-b889-666c365e3268', '35fb3717-a31c-482c-ba27-da7047aa00fc', 'A network security group with a Deny rule only', FALSE, 1),
    ('4cb8ee44-ec0e-46aa-82b1-10db8490e481', '35fb3717-a31c-482c-ba27-da7047aa00fc', 'Custom (user-defined) routing that overrides Azure''s default subnet-to-subnet routing to direct traffic through the network virtual appliance', TRUE, 2),
    ('671e7b05-2baf-4cb9-b6f9-ff9fad0e32ba', '35fb3717-a31c-482c-ba27-da7047aa00fc', 'A private DNS zone linking the two subnets', FALSE, 3),
    ('43ca5889-ea0d-4dfc-8608-2bd721987993', '35fb3717-a31c-482c-ba27-da7047aa00fc', 'Nothing; Azure automatically routes inter-subnet traffic through any deployed firewall appliance', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3b95416b-7688-4dc8-ab2b-55f1d82c5694', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s security team wants to associate a network security group with resources in a specific subnet to create a protected buffer zone before traffic reaches internal resources. Which statement about NSG-to-subnet association is accurate?',
        'Correct: A subnet can have zero or one associated network security group, and the same NSG can be associated multiple times — across different subnets and/or network interfaces. A) is incorrect because only a single NSG can be directly bound to a given subnet. C) is incorrect; NSGs can be applied at both the subnet and NIC level. D) is incorrect; the same NSG can be associated with both a subnet and a network interface at the same time.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f374f1e1-37e5-4ca4-b155-2f9fb2677f9a', '3b95416b-7688-4dc8-ab2b-55f1d82c5694', 'Once an NSG is associated with a subnet, it cannot also be associated with a network interface', FALSE, 1),
    ('24346bd5-c575-4f86-9a51-05c2b2838b4d', '3b95416b-7688-4dc8-ab2b-55f1d82c5694', 'Each subnet can have zero or one network security group associated with it, and the same NSG can be reused across multiple subnets or NICs', TRUE, 2),
    ('42913c61-1aa7-4895-a689-7b427f0656fa', '3b95416b-7688-4dc8-ab2b-55f1d82c5694', 'Each subnet can have multiple network security groups associated simultaneously', FALSE, 3),
    ('be291d79-c63f-4f67-a7df-7ef398bbf554', '3b95416b-7688-4dc8-ab2b-55f1d82c5694', 'NSGs can only be applied at the virtual network level, never at the subnet level', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('39010c5c-3c8c-401f-a5f7-15e4d0645f2c', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s compliance team requires that traffic from its virtual network to a specific Azure Storage account never traverses the public internet, even though the storage account has a public endpoint. Which subnet-related feature should they consider?',
        'Correct: Azure Private Link provides private connectivity between a virtual network and Azure PaaS services (or customer/partner services), simplifying the network architecture and eliminating exposure of data to the public internet. A) is incorrect since blocking all outbound traffic would also block legitimate access, not securely route it privately. C) is incorrect; a public IP on the storage account increases, not decreases, public exposure. D) is incorrect; a CNAME record only aliases a name, it does not create a private network path.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('09ca7226-75dd-44fc-9206-d7315513d8de', '39010c5c-3c8c-401f-a5f7-15e4d0645f2c', 'Azure Private Link, to provide private connectivity from the virtual network to the Azure PaaS service, removing exposure to the public internet', TRUE, 1),
    ('0ae46665-aeb6-4097-aaa4-74fa567864b9', '39010c5c-3c8c-401f-a5f7-15e4d0645f2c', 'A CNAME DNS record pointing to the storage account', FALSE, 2),
    ('63833677-4651-4505-89da-babdd98c4b73', '39010c5c-3c8c-401f-a5f7-15e4d0645f2c', 'A public IP address assigned to the storage account', FALSE, 3),
    ('f48ada68-9622-4f6a-b432-50583c94dd52', '39010c5c-3c8c-401f-a5f7-15e4d0645f2c', 'A network security group Deny rule for all outbound traffic', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3c5be63e-7f03-4cd7-a999-61bb62222384', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'A Contoso engineer is provisioning a new virtual network and needs to define the IP address space. Which planning principle should guide their choice of address range?',
        'Correct: When planning a virtual network''s address space, you should choose a range not already used elsewhere in the organization; the address space represents either a local or cloud range, but not both simultaneously. A) is incorrect and risks IP conflicts. B) is incorrect; peered virtual networks must have non-overlapping address spaces, not identical ones. D) is incorrect; Azure does not automatically resolve address space conflicts — peering (and routing) will fail if ranges overlap.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a3c80e7a-00f3-4690-a89b-b299d4534269', '3c5be63e-7f03-4cd7-a999-61bb62222384', 'Always use the same address range as an existing peered virtual network', FALSE, 1),
    ('e98dd4b4-76ec-41e6-85be-8c6c723d1102', '3c5be63e-7f03-4cd7-a999-61bb62222384', 'Choose an address space that is not already in use elsewhere in the organization, since it must be either local or in the cloud, but not both', TRUE, 2),
    ('2d7fbcca-99b5-4518-8183-7049cc747a3b', '3c5be63e-7f03-4cd7-a999-61bb62222384', 'Choose an address range currently in use elsewhere within the organization to maintain consistency', FALSE, 3),
    ('5942e3a1-8caf-48de-9490-e4d48642260d', '3c5be63e-7f03-4cd7-a999-61bb62222384', 'Address space selection is irrelevant since Azure automatically resolves any conflicts', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b9319711-ab0e-48f3-82de-fdd1285efab4', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso deploys a domain controller VM and needs its IP address to remain constant, because DNS host records, IP-based security policies, and a role-based service depend on it. Which IP addressing decision is most appropriate for this VM''s private IP address?',
        'Correct: Static IP addresses are ideal for scenarios like DNS resolution, IP-based security models, TLS/SSL certificates tied to an IP, firewall rules, and role-based VMs such as domain controllers and DNS servers, since a change would otherwise require updating dependent records/rules. A) is incorrect; dynamic addresses can change, for instance if a VM is deallocated and restarted. C) is incorrect; VMs require IP addresses to communicate on the network. D) is incorrect; every VM in a virtual network requires a private IP address, and a domain controller typically shouldn''t be directly internet-facing.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('08640198-65d1-4f14-86b7-08172a5a5710', 'b9319711-ab0e-48f3-82de-fdd1285efab4', 'A public IP address only, with no private IP address', FALSE, 1),
    ('1b418362-5ebe-49b5-ae4c-c05e0c001908', 'b9319711-ab0e-48f3-82de-fdd1285efab4', 'Static allocation, since domain controllers and DNS servers are role-based VMs that benefit from an unchanging IP address', TRUE, 2),
    ('b0228fe0-d75d-4ed5-8eee-d22159218d4d', 'b9319711-ab0e-48f3-82de-fdd1285efab4', 'Dynamic allocation, since Azure automatically preserves dynamic addresses forever', FALSE, 3),
    ('a63b580d-80b6-4295-bcb6-66811fc718fc', 'b9319711-ab0e-48f3-82de-fdd1285efab4', 'No IP address should be assigned since domain controllers use only MAC addresses', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('edef4b2c-09ca-4d2e-a00a-97c390663b59', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso wants to attach a new Standard SKU public IP address to an existing Basic SKU public load balancer. What will happen?',
        'Correct: A public IP address''s SKU must match the SKU of the load balancer it''s used with (and the tier — regional or cross-region — must also correspond), so pairing a Standard IP with a Basic load balancer is not a supported combination. A), C), and D) all describe automatic or inconsequential behavior that does not occur; the mismatched configuration must be corrected manually by the administrator.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cdc1a0b7-6949-4d15-a9d0-eb7bae4f8d2d', 'edef4b2c-09ca-4d2e-a00a-97c390663b59', 'This configuration is not supported; the public IP address SKU must match the SKU of the load balancer it is used with', TRUE, 1),
    ('ec880038-c618-4c1c-b99c-2419c70713c9', 'edef4b2c-09ca-4d2e-a00a-97c390663b59', 'The mismatch is allowed and has no operational impact', FALSE, 2),
    ('f9299afb-5ab0-4207-8cfa-60502249832c', 'edef4b2c-09ca-4d2e-a00a-97c390663b59', 'The public IP address will silently downgrade to Basic SKU', FALSE, 3),
    ('c882e60e-c8a0-41fa-8b22-92d3d6913772', 'edef4b2c-09ca-4d2e-a00a-97c390663b59', 'Azure automatically upgrades the load balancer to Standard SKU', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('097d74d7-7124-4ce6-b292-642d28402e32', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso needs to deploy a VPN gateway and wants to know which IP configuration type applies. According to the standard Azure resource-to-IP-configuration mapping, which configuration type is used for VPN, ExpressRoute, and NAT virtual network gateways?',
        'Correct: According to the Azure documentation, VPN, ExpressRoute, and NAT gateways associate a public IP address using a gateway IP configuration. A) applies to virtual machines. B) applies to public load balancers, Application Gateway, Azure Firewall, Route Server, and API Management. C) applies to Bastion hosts.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9af82ee0-3a58-486a-8b78-901b0d63c54e', '097d74d7-7124-4ce6-b292-642d28402e32', 'Gateway IP configuration', TRUE, 1),
    ('69d7d7f9-0197-4b5c-8ac4-b10d9cfce906', '097d74d7-7124-4ce6-b292-642d28402e32', 'Network interface configuration', FALSE, 2),
    ('d63ff334-bf9c-4540-a4f9-cc58703b6818', '097d74d7-7124-4ce6-b292-642d28402e32', 'Public IP configuration', FALSE, 3),
    ('a444e764-bc94-4ccf-9374-d23b56d29de9', '097d74d7-7124-4ce6-b292-642d28402e32', 'Front-end configuration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4f2734f4-78c1-490b-9622-55ef5c5d9f96', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso deploys a new virtual machine into a subnet that has no network security group associated, and the NIC also has no NSG. A junior admin asks whether the VM is protected from unwanted traffic. What is the most accurate answer, based on Azure default behavior?',
        'Correct: Without an NSG associated at subnet or NIC level, there''s no explicit filtering layer applied by the administrator, so the workload relies on the platform''s default connectivity behavior; to enforce specific allow/deny postures, administrators must associate an NSG with defined security rules. B), C), and D) all misstate default Azure behavior — NSGs are optional constructs that add explicit filtering, not mandatory gatekeepers, and their absence does not equate to either total blocking or total lack of any control.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0e171da5-9671-499f-b561-bf3a2ddfa27e', '4f2734f4-78c1-490b-9622-55ef5c5d9f96', 'NSGs are mandatory in Azure and a VM cannot be deployed without one', FALSE, 1),
    ('12590715-7b72-4d2d-baca-835d1cfe7552', '4f2734f4-78c1-490b-9622-55ef5c5d9f96', 'The VM is fully protected because Azure blocks all traffic by default at the platform level regardless of NSG configuration', FALSE, 2),
    ('3c36a7fb-5a41-4d94-8e13-413ce0fb574c', '4f2734f4-78c1-490b-9622-55ef5c5d9f96', 'The VM cannot receive any network traffic at all until an NSG is created', FALSE, 3),
    ('483920a6-0544-48d5-ba52-7790a7e06637', '4f2734f4-78c1-490b-9622-55ef5c5d9f96', 'Without an NSG at either the subnet or NIC level, default platform behavior applies, which is generally permissive for traffic within the virtual network and from load balancers; explicit NSGs are needed to enforce a Deny posture', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9c3b7583-dcfb-4c07-addf-21ed43cbd44c', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'A Contoso administrator tries to delete the default DenyAllInbound rule from a network security group to simplify their rule set. What happens?',
        'Correct: Default security rules cannot be deleted, but their effect can be overridden by creating a new security rule with a higher priority (a lower numeric priority value) within the same NSG. A) is incorrect; default rules are immutable, not deletable. B) is incorrect; no support ticket process is needed since deletion isn''t possible through configuration. D) is incorrect; the NSG remains intact regardless.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d4d3ebc4-435e-4eaa-8d60-749c72472c70', '9c3b7583-dcfb-4c07-addf-21ed43cbd44c', 'Default security rules cannot be deleted, but they can be overridden by creating a new rule with a higher priority (lower priority number)', TRUE, 1),
    ('2ae84a83-bfd5-4f03-886e-233db92ddc74', '9c3b7583-dcfb-4c07-addf-21ed43cbd44c', 'Deleting a default rule requires a support ticket with Microsoft', FALSE, 2),
    ('35e22268-645b-445a-accb-b23a6c38d0a3', '9c3b7583-dcfb-4c07-addf-21ed43cbd44c', 'The default rule is deleted successfully like any custom rule', FALSE, 3),
    ('075590fe-4e13-4521-aaec-2dc3cbcab035', '9c3b7583-dcfb-4c07-addf-21ed43cbd44c', 'The NSG itself is automatically deleted if a default rule is removed', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b20708dc-e4e2-43a3-9332-18c2bc565dfd', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso has an NSG with a custom rule at priority 200 that denies inbound traffic on port 443, and another custom rule at priority 100 that allows inbound traffic on port 443 from a specific IP range. Which rule takes effect for matching traffic?',
        'Correct: NSG rules are processed in priority order; a rule with a lower priority number is evaluated first and takes precedence when it matches traffic. Since 100 is a lower value than 200, the allow rule for the specified IP range takes effect first for matching traffic. A) reverses the correct precedence logic. C) is incorrect; rules aren''t merged, the first matching rule (by priority) governs the decision for a given evaluation. B) is incorrect; custom rules can override default behavior when configured with appropriate priority.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5dc1fb4a-ae4f-44f0-b432-f5d52b14c245', 'b20708dc-e4e2-43a3-9332-18c2bc565dfd', 'Both rules apply simultaneously, and Azure merges their effects', FALSE, 1),
    ('d91df06c-6e3a-4b36-beab-55ae7b8e4b90', 'b20708dc-e4e2-43a3-9332-18c2bc565dfd', 'The allow rule at priority 100, because rules are processed in order of priority, and a lower priority value is evaluated (and takes precedence) before a higher one', TRUE, 2),
    ('5d9673b8-3b23-4eac-9f10-1f737b8e7784', 'b20708dc-e4e2-43a3-9332-18c2bc565dfd', 'The deny rule at priority 200, because higher numbers are processed first', FALSE, 3),
    ('c868c746-3e8f-49de-856b-ed29d56c31e6', 'b20708dc-e4e2-43a3-9332-18c2bc565dfd', 'Neither rule applies since default rules always override custom rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3b64392c-1b8e-4e52-a2d7-154b677feea3', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'An auditor at Contoso needs to determine, across several NSGs applied at both the subnet and NIC level, exactly which security rules are actually being enforced on a specific virtual machine. What is the recommended tool for this task?',
        'Correct: When multiple network security groups apply to a resource and it''s unclear exactly which rules are enforced, the Effective Security Rules link in the Azure portal (backed by Network Watcher) shows the aggregated rules that actually apply. A) and B) serve entirely different purposes (cost and policy compliance, not security rule evaluation). D) is technically possible but error-prone and not the recommended, purpose-built approach.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ecf1dde9-ada1-48b8-a26d-28f557ca0909', '3b64392c-1b8e-4e52-a2d7-154b677feea3', 'Azure Cost Management', FALSE, 1),
    ('d4840fd3-e0e9-4626-b0f2-2a172fb8cf60', '3b64392c-1b8e-4e52-a2d7-154b677feea3', 'Manually reading each NSG''s JSON template', FALSE, 2),
    ('4b421cd5-14f6-4036-b146-022d202f92fb', '3b64392c-1b8e-4e52-a2d7-154b677feea3', 'Azure Policy compliance view', FALSE, 3),
    ('03cbae35-8a45-4a90-8769-9fc8351ca337', '3b64392c-1b8e-4e52-a2d7-154b677feea3', 'The Effective Security Rules feature in the Azure portal, which aggregates rules across all associated NSGs for that resource', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('50bac4c6-4043-41db-835e-debc36bc0831', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s retail application has a two-tier design: web servers handling internet HTTP/HTTPS traffic, and application servers processing SQL requests from the web tier only. The security team wants to avoid maintaining rules against individual VM IP addresses as the environment scales. What should they implement?',
        'Correct: Application security groups let administrators logically group VMs by workload (web tier, app tier) and reference that group — rather than explicit IP addresses — in NSG rules; new rules automatically apply to every VM added to the group, removing the need to track individual IPs as the environment scales. B) removes security controls entirely and violates least-privilege design. A) increases the attack surface and does not address the scaling problem described. D) addresses name resolution, not traffic filtering.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a7223822-810d-4151-ac64-07d96e15e25a', '50bac4c6-4043-41db-835e-debc36bc0831', 'A single NSG rule that allows all traffic to both tiers', FALSE, 1),
    ('9665ea8a-882b-42c4-814e-84b2128a8cb3', '50bac4c6-4043-41db-835e-debc36bc0831', 'Static public IP addresses assigned directly to every application server', FALSE, 2),
    ('11ca1c14-fe05-48df-aef5-1924eb531ab6', '50bac4c6-4043-41db-835e-debc36bc0831', 'Application security groups (ASGs) for each tier, using the ASGs as source/destination in NSG rules instead of explicit IP addresses', TRUE, 3),
    ('8bc9232e-7651-42ec-80e4-56372f30143b', '50bac4c6-4043-41db-835e-debc36bc0831', 'A private DNS zone linking the two tiers', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2400e720-647b-4d9c-997e-47c285747433', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Building on the Contoso two-tier scenario (web tier receiving internet HTTP/HTTPS traffic, app tier only accepting SQL from the web tier), which rule design correctly enforces the intended security posture using ASGs?',
        'Correct: The lowest priority number (100) allows internet clients to reach the web tier over HTTP/HTTPS, since that access is essential; the next rule (110) allows only the web tier to reach the app tier over the SQL port; and the third rule (120) explicitly denies HTTP/HTTPS access to the app tier from anywhere, ensuring only the web tier can reach the database tier. B) inverts the intended access, exposing the app tier directly to HTTP/HTTPS while blocking the required SQL path. C) grants far too broad access to both tiers, violating the segmentation requirement. D) blocks the web tier from ever receiving legitimate internet traffic and does not protect the app tier appropriately.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('43147323-8580-4470-bd6c-034992c579b4', '2400e720-647b-4d9c-997e-47c285747433', 'Priority 100: deny all inbound to Web-ASG. Priority 110: allow all inbound to App-ASG', FALSE, 1),
    ('9aa909b8-7d66-48bc-a8b6-8c2f32484155', '2400e720-647b-4d9c-997e-47c285747433', 'Priority 100: allow any source to App-ASG on ports 80/443. Priority 110: deny Web-ASG to App-ASG on port 1433', FALSE, 2),
    ('77094d06-7da9-48c0-9774-6fc78b597907', '2400e720-647b-4d9c-997e-47c285747433', 'Priority 100: allow internet to Web-ASG on ports 80/443. Priority 110: allow Web-ASG to App-ASG on port 1433. Priority 120: deny any source to App-ASG on ports 80/443', TRUE, 3),
    ('459e2a10-523d-41ca-8e51-bb0d46661c69', '2400e720-647b-4d9c-997e-47c285747433', 'A single rule allowing all traffic between the internet and both ASGs at priority 100', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7b004e63-977d-44eb-8186-6c011c456975', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s network team wants to allow inbound traffic from three separate IP ranges and two different ports using as few NSG rules as possible. Which NSG capability should they use?',
        'Correct: Augmented security rules let a single NSG rule combine multiple IP addresses and multiple port ranges (and mix service tags, ASGs, and IP addresses), reducing the number of rules needed to enforce a policy that would otherwise require several individual rules. B) technically works but is inefficient and harder to manage — not the recommended approach given the augmented rules capability. C) is incorrect; ASGs group VMs, but a rule can still combine ASGs alongside IP ranges via augmented rules. D) addresses routing, not security filtering.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7d40f16b-d4f6-4f86-a2fb-562a198e8c24', '7b004e63-977d-44eb-8186-6c011c456975', 'Augmented security rules, which allow combining multiple IP addresses, multiple port ranges, and service tags/ASGs into a single rule', TRUE, 1),
    ('bfc213b7-9976-4aa4-a702-16cc55dba92a', '7b004e63-977d-44eb-8186-6c011c456975', 'A route table with multiple next hops', FALSE, 2),
    ('377ec0b6-01ef-48c5-bd95-85901c305e7c', '7b004e63-977d-44eb-8186-6c011c456975', 'Creating six separate rules, one per IP range and port combination', FALSE, 3),
    ('00fcdb7e-c31c-4f4c-93b2-20044c18f263', '7b004e63-977d-44eb-8186-6c011c456975', 'Application security groups, which cannot reference IP address ranges at all', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1313ae81-3c65-483b-bc3a-7c5841dded1e', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'A Contoso administrator wants to create a custom NSG rule but sets the priority field to 5000. What will happen?',
        'Correct: A priority value between 100 and 4096 must be assigned to each security rule, and it must be unique among all rules within the network security group; a value of 5000 is out of range and the rule creation will fail. A) is incorrect since the valid range is bounded. C) is incorrect; Azure does not silently auto-correct out-of-range values. B) is incorrect; the 100--4096 range constraint applies equally to inbound and outbound rules.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6b0d4941-9ace-4196-bb45-ca6d089fb083', '1313ae81-3c65-483b-bc3a-7c5841dded1e', 'The value 5000 is valid only for outbound rules, not inbound rules', FALSE, 1),
    ('8ed012ca-ff51-4b51-90cd-1350786c38c3', '1313ae81-3c65-483b-bc3a-7c5841dded1e', 'The configuration fails, because NSG rule priority values must fall between 100 and 4096 and be unique within the NSG', TRUE, 2),
    ('4aca7c06-69d8-4df8-9c51-bddb16b57191', '1313ae81-3c65-483b-bc3a-7c5841dded1e', 'Azure automatically rounds the value down to 4096', FALSE, 3),
    ('67c44245-7081-4623-90ce-cd7adc73c892', '1313ae81-3c65-483b-bc3a-7c5841dded1e', 'The rule is created successfully; any numeric value is valid for priority', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('06c0a515-3d6d-4d46-a4ad-c0a8f31e2e70', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s network engineer needs to determine, for a subnet with an associated NSG containing a default DenyAllInbound rule and no custom allow rules, what happens to inbound internet traffic destined for a VM in that subnet.',
        'Correct: Azure defines default inbound rules that deny all inbound traffic except traffic from the virtual network and from Azure load balancers; without a custom allow rule with higher priority, general inbound internet traffic is denied by the default DenyAllInbound rule. B), C), and D) all describe behavior that does not reflect how NSGs actually process default rules — VMs are not exempt, DNS routing is unrelated to security filtering, and a public IP does not bypass NSG evaluation.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ac786a4b-b99f-414e-bd35-2e775f20c678', '06c0a515-3d6d-4d46-a4ad-c0a8f31e2e70', 'It is denied by the default DenyAllInbound rule, since no custom rule overrides it with a higher priority', TRUE, 1),
    ('b8a009f0-4be6-48ed-9301-9bb0ce588b92', '06c0a515-3d6d-4d46-a4ad-c0a8f31e2e70', 'It is always allowed because VMs are exempt from default rules', FALSE, 2),
    ('b469c533-3626-49f2-a4ea-2cd1baf1a075', '06c0a515-3d6d-4d46-a4ad-c0a8f31e2e70', 'It is routed to Azure DNS for resolution instead of being filtered', FALSE, 3),
    ('089d1dbe-21b7-4fc6-b38f-1fec79b5a850', '06c0a515-3d6d-4d46-a4ad-c0a8f31e2e70', 'It bypasses the NSG entirely if the VM has a public IP address', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bece7cda-5336-4f16-82f1-e420a57d7efe', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso wants to register the new domain name contoso-shop.com and then manage its DNS records using Azure DNS. What is the correct process?',
        'Correct: Azure DNS cannot be used to register a new domain name; the domain must first be registered through a third-party domain registrar, after which Azure DNS can host and manage the domain''s DNS zone and records. B) misstates Azure DNS''s capabilities — it is a hosting service, not a registrar. C) is not a valid registration path. D) is incorrect; private DNS zones are unrelated to public domain registration and are not visible on the internet.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('853de9d4-c866-47b1-8b5f-2426b4ec0357', 'bece7cda-5336-4f16-82f1-e420a57d7efe', 'Register and host the domain entirely within Azure DNS in one step', FALSE, 1),
    ('a5714a42-6566-4850-a9aa-3a8976e84f1e', 'bece7cda-5336-4f16-82f1-e420a57d7efe', 'Create a private DNS zone, which automatically registers the public domain name', FALSE, 2),
    ('b2862895-edd4-4f5b-a664-5ef14af11e4b', 'bece7cda-5336-4f16-82f1-e420a57d7efe', 'Contact Microsoft Support to reserve the domain name globally', FALSE, 3),
    ('f2616999-d976-4f3b-9813-3b686790171c', 'bece7cda-5336-4f16-82f1-e420a57d7efe', 'Register the domain with a third-party domain registrar first, then create a DNS zone in Azure DNS to host and manage its records', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cd5e59b7-f9bf-42db-9949-04b6e84cc93f', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'After creating a DNS zone for wideworldimports.com in Azure and retrieving the four Azure name servers, what must Contoso do at their third-party domain registrar to make Azure DNS authoritative for the domain?',
        'a process called domain delegation — Correct: After creating the Azure DNS zone, the domain owner must log in to the domain registrar''s management application, edit the NS record, and update the name server information to match the four Azure DNS name servers — this change is called domain delegation. A) is incorrect; without delegation, the registrar''s original name servers remain authoritative, not Azure DNS. B) is incorrect and would break the zone''s authority record. D) is not how delegation is performed; delegation is done via NS records, not a CNAME.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6398741f-0dc2-42f1-9361-8e8af1a3a24f', 'cd5e59b7-f9bf-42db-9949-04b6e84cc93f', 'Nothing further is required once the zone exists in Azure', FALSE, 1),
    ('9f56f8e6-f792-473c-87d8-2f25c245a172', 'cd5e59b7-f9bf-42db-9949-04b6e84cc93f', 'Update the registrar''s name server (NS) record settings to point to the four Azure DNS name servers — a process called domain delegation', TRUE, 2),
    ('b8c477eb-b316-4654-939b-b874ad67f888', 'cd5e59b7-f9bf-42db-9949-04b6e84cc93f', 'Delete the SOA record from the Azure DNS zone', FALSE, 3),
    ('08541548-e8da-441a-8a71-d1997137017d', 'cd5e59b7-f9bf-42db-9949-04b6e84cc93f', 'Create a CNAME record at the registrar pointing to azure.com', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3b51ca7f-5b73-46d2-a108-83c28cbd22d6', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'A Contoso administrator wants to confirm that domain delegation to Azure DNS has successfully propagated for wideworldimports.com. Which command correctly verifies this?',
        'Correct: To verify successful domain delegation, you query the SOA (Start of Authority) record — which is automatically created when the Azure DNS zone is set up — using a tool like nslookup, for example: nslookup -type=SOA wideworldimports.com; delegation can take about 10 minutes or longer to propagate. A), B), and D) do not query the authoritative SOA record and are not the documented method for verifying delegation.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('792e1472-71fb-460a-8727-68a2ba993033', '3b51ca7f-5b73-46d2-a108-83c28cbd22d6', 'tracert wideworldimports.com', FALSE, 1),
    ('0036d882-f00f-4976-9afb-5814f6033f64', '3b51ca7f-5b73-46d2-a108-83c28cbd22d6', 'ipconfig /flushdns wideworldimports.com', FALSE, 2),
    ('d0c1566e-eba6-4ed1-bac3-cca2782be1a6', '3b51ca7f-5b73-46d2-a108-83c28cbd22d6', 'nslookup -type=SOA wideworldimports.com', TRUE, 3),
    ('eb7f809e-9493-4b55-af2e-ef95074aa75c', '3b51ca7f-5b73-46d2-a108-83c28cbd22d6', 'ping wideworldimports.com', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('09f198ac-8a7b-4881-9655-792789f12f71', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso needs to add a web server record so that webserver1.wideworldimports.com resolves directly to the IP address 20.30.40.50. Which record type and fields are required?',
        'Correct: To map a subdomain like webserver1 directly to an IP address, you create an A record, which requires a Name (webserver1), a Type (A), a TTL, and the IP address of the server. B) is incorrect; MX records route mail, not general host-to-IP mappings. C) is incorrect; TXT records store arbitrary text, not authoritative host mappings, and would not resolve for standard DNS clients. D) is incorrect; SOA records represent zone authority metadata, not individual host mappings.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8e0b811b-5a8e-4c87-a35b-e76f994a2f16', '09f198ac-8a7b-4881-9655-792789f12f71', 'A TXT record containing the string ''20.30.40.50''', FALSE, 1),
    ('06c5f198-a3b0-447e-a2b9-60247962d0cd', '09f198ac-8a7b-4881-9655-792789f12f71', 'An A record, specifying Name (webserver1), Type (A), TTL, and the IP address 20.30.40.50', TRUE, 2),
    ('dbb64740-7ca0-42e2-9d31-939d324bd045', '09f198ac-8a7b-4881-9655-792789f12f71', 'An MX record, specifying only a priority value', FALSE, 3),
    ('57294600-b942-4cd4-a97b-b10b303514ca', '09f198ac-8a7b-4881-9655-792789f12f71', 'An SOA record updated with the new IP address', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ff800566-528e-4a4b-9411-b212dafe4f79', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso wants both wideworldimports.com and www.wideworldimports.com to resolve to the same website. The team also wants to point the bare (apex) domain wideworldimports.com at an Azure Load Balancer whose IP address may change over time. Which combination of records should they use?',
        'Correct: A CNAME record is appropriate for aliasing www to the main A record, but CNAME records are not supported at the zone apex; alias records, however, are supported at the apex and can point to a public IP resource such as a load balancer, automatically tracking changes to the underlying IP address. A) is incorrect because standard CNAME records cannot be used at the zone apex. C) misapplies record types unrelated to this use case. B) is incorrect; SOA records don''t perform resolution to specific resources.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c4437a52-03fe-4005-828d-4f3f2f35f295', 'ff800566-528e-4a4b-9411-b212dafe4f79', 'An MX record for www and a TXT record for the apex', FALSE, 1),
    ('e11d1f68-51ae-40f3-93f9-215065f759e5', 'ff800566-528e-4a4b-9411-b212dafe4f79', 'A CNAME record for both www and the apex domain, both pointing to the load balancer', FALSE, 2),
    ('4b5e7b9e-71f0-45cb-bd0d-f0b2f2f5f91b', 'ff800566-528e-4a4b-9411-b212dafe4f79', 'A CNAME record for www pointing to the A record, and an alias record at the zone apex pointing to the load balancer''s public IP resource, since standard CNAME records are not supported at the zone apex', TRUE, 3),
    ('3c31d5cf-b44d-4d21-b86a-b3acea1eaad7', 'ff800566-528e-4a4b-9411-b212dafe4f79', 'Only an SOA record is required for both scenarios', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b1e8b1dc-988d-4096-9ffe-af5ad5556ba0', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s marketing team asks why the SOA and NS records already exist immediately after creating a new Azure DNS zone, without anyone manually creating them. What is the correct explanation?',
        'Correct: The SOA and NS records are automatically created by Azure when a DNS zone is set up; they represent the zone''s authority information and its assigned Azure name servers. B) is incorrect since these records are generated by Azure DNS itself, not inherited from the registrar. C) invents a nonexistent process. A) is incorrect; these records are required for the zone to function correctly and should not be deleted.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('561fbd9c-25fc-4dae-aeef-6eaf6fca3cba', 'b1e8b1dc-988d-4096-9ffe-af5ad5556ba0', 'They must always be manually created within the first hour of zone creation or the zone becomes invalid', FALSE, 1),
    ('7f18b04b-881d-45da-b355-f24a9e5505cf', 'b1e8b1dc-988d-4096-9ffe-af5ad5556ba0', 'SOA and NS records are automatically created when a DNS zone is set up in Azure', TRUE, 2),
    ('ac13315c-05bf-4969-9806-af80143fbb00', 'b1e8b1dc-988d-4096-9ffe-af5ad5556ba0', 'They were inherited from the domain registrar automatically at zone creation', FALSE, 3),
    ('9536201c-79e8-4c01-b616-7e4d2f3c1833', 'b1e8b1dc-988d-4096-9ffe-af5ad5556ba0', 'They are optional records that Contoso should delete to reduce clutter', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3503aa75-d2ca-4bc1-9975-f9d006ce6f17', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso wants VMs in VNet-Prod to resolve internal, custom hostnames like app1.internal.contoso.com without exposing those records to the public internet, and without deploying custom DNS servers. What should they configure?',
        'Correct: A private DNS zone is not visible on the internet and does not require a domain registrar; linking it to a virtual network (via a virtual network link) enables name resolution for VMs within that network and between linked virtual networks, without building a custom DNS solution. A) unnecessarily exposes internal names publicly. C) does not solve internal name resolution within Azure. B) is unrelated; MX records handle mail routing, not general internal name resolution.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('90c2e962-0e00-4413-bd13-3b7431ee3b31', '3503aa75-d2ca-4bc1-9975-f9d006ce6f17', 'A CNAME record pointing to an external DNS provider', FALSE, 1),
    ('cf842de8-399d-48e4-a376-e3152a50440f', '3503aa75-d2ca-4bc1-9975-f9d006ce6f17', 'An MX record scoped to VNet-Prod', FALSE, 2),
    ('ce5aa47d-e9f1-4d46-977a-324c89fbf301', '3503aa75-d2ca-4bc1-9975-f9d006ce6f17', 'A private DNS zone linked to VNet-Prod via a virtual network link, enabling name resolution for VMs within (and optionally between) virtual networks', TRUE, 3),
    ('ac73bffc-168a-4a82-97da-f2f533c839db', '3503aa75-d2ca-4bc1-9975-f9d006ce6f17', 'A public DNS zone for internal.contoso.com registered with a public registrar', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('22b69e14-abec-42d4-ad13-65f321aeeae9', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso configures a private DNS zone named private.wideworldimports.com but forgets to link it to any virtual network. What is the effect?',
        'Correct: To enable private name resolution, you must create a virtual network link between the private DNS zone and each virtual network that needs it; without that link, resolution will not work for the intended VMs. B) is incorrect; private zones do not auto-link to every VNet. C) is incorrect; the zone remains a private zone regardless of linking status. D) describes behavior that does not occur.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('01d4b5bb-67eb-46ba-b957-170d07f58bb8', '22b69e14-abec-42d4-ad13-65f321aeeae9', 'VMs in the target virtual network can already resolve records in the zone because private zones auto-link to all VNets in the subscription', FALSE, 1),
    ('2e0d0ce9-a4e4-4f6a-9d0a-f735cf26da22', '22b69e14-abec-42d4-ad13-65f321aeeae9', 'No virtual network can resolve records in the private zone until an explicit virtual network link is created for each virtual network that requires resolution', TRUE, 2),
    ('e1d8c567-3721-4c02-bbaf-bf7ff3b296e2', '22b69e14-abec-42d4-ad13-65f321aeeae9', 'The zone automatically becomes a public DNS zone instead', FALSE, 3),
    ('12b6b034-e4fd-45a9-8d56-59a35ba8553e', '22b69e14-abec-42d4-ad13-65f321aeeae9', 'Azure deletes the zone after 24 hours if it isn''t linked', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f567ac32-157f-4836-b69e-f721697fa4eb', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso has VNet-East (10.1.0.0/16) in East US and VNet-West (10.1.0.0/16) in West US, and wants to peer them so resources can communicate privately. What will happen when they attempt to create the peering?',
        'Correct: Peered virtual networks must have non-overlapping IP address spaces; since both VNets use the identical range 10.1.0.0/16, peering creation will fail regardless of whether it is regional or global peering. A) ignores the non-overlapping address space requirement, which applies to both regional and global peering. B) is incorrect; Azure does not auto-renumber address spaces. D) is incorrect; peering can be created across subscriptions and tenants, but that is not the blocking issue here — the address overlap is.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('52e21279-27ef-4714-be73-720176d564da', 'f567ac32-157f-4836-b69e-f721697fa4eb', 'Peering creation will fail because the two virtual networks have overlapping (identical) address spaces, which peered VNets are not permitted to have', TRUE, 1),
    ('cc41c45b-106c-4a9e-9c4d-0a61093280dd', 'f567ac32-157f-4836-b69e-f721697fa4eb', 'Peering will succeed only if both virtual networks are in the same subscription', FALSE, 2),
    ('548c5971-91dd-4280-af73-bf7feb393b41', 'f567ac32-157f-4836-b69e-f721697fa4eb', 'Peering will succeed because global peering supports different regions regardless of address space', FALSE, 3),
    ('f5028d78-91d3-4fae-ac5b-0adb3dfdf5da', 'f567ac32-157f-4836-b69e-f721697fa4eb', 'Peering will succeed, but Azure will automatically renumber one virtual network', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e190df9c-8c50-406b-a284-d60e2c00ca08', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso peers VNet-Hub and VNet-Spoke1, both in East US. Six months later, the team needs to expand VNet-Spoke1''s address space to accommodate a new subnet, but the peering is already active. What is the correct procedure?',
        'Correct: If you want to change a peered virtual network''s address range, you must first remove the peering, then update the address space, and then reconfigure the peering. A) is incorrect; address space changes are not supported while peering is active. C) is incorrect; address spaces can be changed, just not while actively peered. D) is a false distinction; the remove-update-reconfigure requirement applies to both regional and global peering.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6ae12d9d-764a-4564-a35a-9b63171915d4', 'e190df9c-8c50-406b-a284-d60e2c00ca08', 'Only global peering supports address space changes; regional peering does not', FALSE, 1),
    ('075ca62c-14fb-4437-948b-8b0cd26d6018', 'e190df9c-8c50-406b-a284-d60e2c00ca08', 'Modify the address space directly; peered virtual networks support live address space changes with no other steps required', FALSE, 2),
    ('925366ce-d596-401e-951d-8f04c3fd8ce4', 'e190df9c-8c50-406b-a284-d60e2c00ca08', 'Remove the existing peering, update VNet-Spoke1''s address space, then reconfigure (recreate) the peering', TRUE, 3),
    ('736fd93c-53be-4f3f-86df-8a4673e1eac7', 'e190df9c-8c50-406b-a284-d60e2c00ca08', 'Address space cannot ever be changed once a virtual network is created, peered or not', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('76117b86-f320-497b-8e5f-4eabd4b3f6ce', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso has a Basic SKU internal load balancer in VNet-East (East US region) and wants VMs in VNet-West (West US region), peered globally with VNet-East, to reach that load balancer''s private IP address. What is the outcome?',
        'a Standard load balancer must be used instead — Correct: Resources in a virtual network cannot communicate with Basic Internal Load Balancer IP addresses in peered virtual networks across regions; a Standard SKU load balancer must be used to support cross-region connections. A) incorrectly claims full compatibility for all SKUs. B) overstates the limitation — global peering does support load balancer traffic, just not with a Basic internal load balancer across regions. D) misidentifies the fix; the SKU (Basic vs Standard), not public vs private, is the limiting factor here.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8330205c-d1d0-4d61-945f-e877c2c7cf6f', '76117b86-f320-497b-8e5f-4eabd4b3f6ce', 'This works without issue since global peering supports all load balancer SKUs across regions', FALSE, 1),
    ('de0af5b2-bcb1-4b3b-ae20-65ede6c5bf29', '76117b86-f320-497b-8e5f-4eabd4b3f6ce', 'This will not work because global peering never supports load balancer traffic', FALSE, 2),
    ('6ed18ec1-4be5-4758-bfeb-ca66abd04921', '76117b86-f320-497b-8e5f-4eabd4b3f6ce', 'This will work only if the load balancer has a public IP address instead of a private one', FALSE, 3),
    ('a94f0816-58d5-4379-b7af-28c44e9d2d06', '76117b86-f320-497b-8e5f-4eabd4b3f6ce', 'This will not work; resources cannot communicate with Basic Internal Load Balancer IP addresses across regionally peered (i.e., cross-region) virtual networks — a Standard load balancer must be used instead', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e7a43b49-6d76-4674-ba35-2db1f511403f', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'After peering VNet-A and VNet-B, a Contoso engineer tries to ping a VM in VNet-B from VNet-A using the VM''s hostname (not IP address) and it fails, even though pinging by IP address succeeds. What is the most likely explanation?',
        'Correct: Azure''s built-in name resolution doesn''t work across peered virtual networks; you must configure Azure private DNS zones or custom DNS servers to enable name resolution (hostname-to-IP) between peered VNets, which explains why IP-based ping succeeds but hostname-based ping fails. B) is incorrect; ping over ICMP itself is not restricted by peering. A) is irrelevant; both regional and global peering share this same DNS limitation. D) misattributes the cause to NSG behavior rather than the actual DNS resolution gap.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d8732971-aa7b-43c8-b395-400029c2950c', 'e7a43b49-6d76-4674-ba35-2db1f511403f', 'Peering only supports IP-based communication and never supports ICMP-based ping at all', FALSE, 1),
    ('0e2f0ece-92e4-4bdc-bae3-f823d8a3eff9', 'e7a43b49-6d76-4674-ba35-2db1f511403f', 'Azure''s built-in name resolution does not work across peered virtual networks by default; a private DNS zone or custom DNS servers must be configured for hostname resolution between them', TRUE, 2),
    ('d5f2833b-be71-4796-a93b-36d47b17c14b', 'e7a43b49-6d76-4674-ba35-2db1f511403f', 'The peering must be recreated as global peering to support name resolution', FALSE, 3),
    ('0885aa0a-624f-47a6-bcaa-41be3a2612e1', 'e7a43b49-6d76-4674-ba35-2db1f511403f', 'NSGs always block ICMP by hostname but allow it by IP', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('30d88b4e-ecab-441f-b86d-3ad70ff3c366', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso designs a hub-and-spoke topology where VNet-Hub contains a VPN gateway, and VNet-Spoke1 and VNet-Spoke2 are peered to VNet-Hub. The team wants Spoke1 and Spoke2 to use the hub''s VPN gateway to reach an on-premises network, instead of deploying gateways of their own. Which peering setting should be enabled?',
        'Correct: Gateway transit allows a peered virtual network to use the remote virtual network''s VPN gateway (instead of deploying its own) to access resources like on-premises networks via a site-to-site VPN; this is exactly the hub-and-spoke pattern described. A) would actually prevent forwarded traffic from being accepted, breaking the intended flow. B) is unnecessary and unrelated to enabling gateway transit. D) defeats the purpose of a shared hub gateway and is unnecessary since a virtual network can only have one gateway and gateway transit was designed to avoid this duplication.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8ab82a19-de96-40a5-86b3-89772b087aa5', '30d88b4e-ecab-441f-b86d-3ad70ff3c366', 'Gateway transit: allow the spokes to use the hub''s virtual network gateway (or Route Server) rather than deploying their own', TRUE, 1),
    ('a0d0606d-21bc-46c7-824e-da7c29d9b183', '30d88b4e-ecab-441f-b86d-3ad70ff3c366', 'Traffic forwarded from remote virtual network, set to disabled on all peerings', FALSE, 2),
    ('d2716c6c-ebe1-4b07-a008-15c888a17cdd', '30d88b4e-ecab-441f-b86d-3ad70ff3c366', 'A new VPN gateway must be created independently in each spoke virtual network', FALSE, 3),
    ('9f0df86f-47c5-42c1-a0d2-f43fa61f3509', '30d88b4e-ecab-441f-b86d-3ad70ff3c366', 'Global peering must be recreated as regional peering first', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f3303153-142e-49cd-9a87-1afb0a682887', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'After configuring peering from VNet-A toward VNet-B, Contoso''s engineer checks the peering status on VNet-A''s side and sees ''Initiated'', while VNet-B shows no peering configured yet. What must happen for the peering to become fully operational?',
        'Correct: When you create the initial peering from one virtual network toward the other, the peering status on the initiating side shows ''Initiated''; peering is not properly established until the peering is also configured on the remote virtual network and both sides display ''Connected''. A) is incorrect; ''Initiated'' alone does not indicate functional connectivity. C) invents a nonexistent subscription requirement. B) is unnecessary; the peering type (regional vs. global) is unrelated to this status issue.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bbbe3bee-23ce-48bc-a2dc-14841de4059a', 'f3303153-142e-49cd-9a87-1afb0a682887', 'The peering configuration must also be created on VNet-B''s side, after which both virtual networks should show ''Connected'' status', TRUE, 1),
    ('c81849bd-1c7b-4cf2-98be-63a803ee3168', 'f3303153-142e-49cd-9a87-1afb0a682887', 'Nothing further; ''Initiated'' status alone is sufficient for full connectivity', FALSE, 2),
    ('20409c98-f8bb-4a8c-a1c9-0c0b7abc7a10', 'f3303153-142e-49cd-9a87-1afb0a682887', 'The subscription must be upgraded to support two-way peering', FALSE, 3),
    ('bc42aac9-db35-4120-ba36-98cfb18b9ab2', 'f3303153-142e-49cd-9a87-1afb0a682887', 'VNet-A''s peering must be deleted and re-created as global peering', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('79c710f1-b7cb-445f-b822-357edc560242', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'A new Contoso administrator, who has only been assigned the Reader role, attempts to configure virtual network peering between two VNets and the operation fails. What is the most likely cause?',
        'Correct: To implement virtual network peering, an account must be assigned the Network Contributor role, or a custom role authorized for the necessary peering actions; Reader access only allows viewing resources, not modifying network configuration. B) is incorrect; peering is a self-service configuration action, not one requiring Microsoft Support. A) confuses Microsoft Entra ID administrative roles with Azure RBAC roles for resource management. D) is excessive; tenant root Owner is not a requirement for configuring peering on specific virtual networks.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cb8e67e7-5e23-4f4b-9748-e7640b764307', '79c710f1-b7cb-445f-b822-357edc560242', 'Peering requires Owner role at the tenant root level', FALSE, 1),
    ('4b4e9906-6c64-454d-b2d5-a4b9ff4b95cf', '79c710f1-b7cb-445f-b822-357edc560242', 'Peering requires the Network Contributor role (or an equivalent custom role with the necessary permissions); Reader alone does not grant sufficient rights to create peering', TRUE, 2),
    ('29503137-dfc3-46b9-95db-ea9fdb3e7944', '79c710f1-b7cb-445f-b822-357edc560242', 'Peering cannot be created by any role; it requires direct Microsoft Support involvement', FALSE, 3),
    ('0549e74d-decd-4845-bae8-ad09211058d4', '79c710f1-b7cb-445f-b822-357edc560242', 'The administrator''s account must be a Global Administrator in Microsoft Entra ID', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6f47523e-7b23-42e7-8af9-3ba8d57f22dd', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso operates VNet-A peered with VNet-B, and VNet-B peered with VNet-C, but VNet-A and VNet-C are not directly peered. The team assumes VMs in VNet-A can already reach VMs in VNet-C because of the existing peerings. Why is this assumption incorrect?',
        'Correct: Virtual network peering is not transitive — peering functionality configured between B and C doesn''t automatically enable communication between A and C. Extending connectivity across all three requires additional mechanisms, such as a hub-and-spoke topology using user-defined routes and service chaining, or creating direct peering between A and C. A) incorrectly claims transitivity is the default behavior. C) invents a distinction that does not exist; neither regional nor global peering is transitive. D) incorrectly ties the (non-existent) transitivity behavior to subscription boundaries rather than to peering''s inherent non-transitive nature.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('127c4de6-5bc9-4aba-8e57-d61b2e47f084', '6f47523e-7b23-42e7-8af9-3ba8d57f22dd', 'Virtual network peering is not transitive; connectivity between B and C does not extend automatically to A and C, so a mechanism such as a hub-and-spoke design with UDRs, service chaining, or direct peering is required', TRUE, 1),
    ('8a7f4b08-254d-497d-a7de-afc7c7daed0c', '6f47523e-7b23-42e7-8af9-3ba8d57f22dd', 'Global peering automatically makes all connected networks transitive, but regional peering does not', FALSE, 2),
    ('b8c03e41-1993-4175-9a90-6b64bdbc356d', '6f47523e-7b23-42e7-8af9-3ba8d57f22dd', 'Peering is always transitive by default, so this should already work unless NSGs are blocking it', FALSE, 3),
    ('d66d7770-e4ee-40a0-865b-b772943c0d54', '6f47523e-7b23-42e7-8af9-3ba8d57f22dd', 'Transitivity only fails if the three virtual networks are in different subscriptions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e595a82c-b6b1-4883-8059-99554c5bf58b', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s cloud team is tasked with centrally managing dozens of hub-and-spoke peering relationships across many subscriptions without manually configuring each peering pair. Which Azure capability specifically addresses this at-scale peering management need?',
        'Correct: Azure Virtual Network Manager centrally manages hub-and-spoke or mesh peering topologies at scale, automating the creation of peering relationships without manual, per-virtual-network configuration. B) addresses name resolution, not peering topology management. C) provides visualization/diagnostics, not centralized peering configuration or automation. D) is a Load Balancer feature unrelated to peering management.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b5f4d30f-225d-4f0c-ac32-6a376de2fa15', 'e595a82c-b6b1-4883-8059-99554c5bf58b', 'Azure Load Balancer HA ports', FALSE, 1),
    ('ad23bde1-7d9a-417f-8bc4-a5772e84df4b', 'e595a82c-b6b1-4883-8059-99554c5bf58b', 'Network Watcher Topology tool', FALSE, 2),
    ('7a357b24-a461-4657-9e56-a99bbd94136e', 'e595a82c-b6b1-4883-8059-99554c5bf58b', 'Azure Virtual Network Manager, which centrally manages hub-and-spoke or mesh peering topologies at scale and automates peering creation', TRUE, 3),
    ('ccf62935-8860-4f42-991f-dffcc5d8a8c0', 'e595a82c-b6b1-4883-8059-99554c5bf58b', 'Azure DNS private zones', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4830f94f-5591-4564-840b-87013d58ea01', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso deploys a new subnet and, without any custom configuration, notices that VMs in that subnet can already reach VMs in other subnets of the same virtual network and reach the internet. What is responsible for this default connectivity?',
        'Correct: Network traffic in Azure is automatically routed between subnets, virtual networks, and on-premises networks by system routes, which Azure assigns by default to every subnet — these include routes for the local virtual network''s address prefixes and a default 0.0.0.0/0 route to the internet. B) is incorrect since no UDRs were created by Contoso in this scenario. C) is not applicable without a configured hybrid connection using BGP. D) is incorrect; NSGs filter traffic, they do not provide the underlying routing path.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1e0c05ca-b907-40a0-9c24-854a60ff38cd', '4830f94f-5591-4564-840b-87013d58ea01', 'BGP routes learned from an on-premises network', FALSE, 1),
    ('f313457b-d417-4cf5-a48f-8323f33b1351', '4830f94f-5591-4564-840b-87013d58ea01', 'Network security group rules alone', FALSE, 2),
    ('36f5c094-4b27-44af-906c-fdb3e7fc6891', '4830f94f-5591-4564-840b-87013d58ea01', 'User-defined routes that Contoso must have created automatically', FALSE, 3),
    ('570a1ec8-1371-44d7-bae7-baa167698a9b', '4830f94f-5591-4564-840b-87013d58ea01', 'System routes, which Azure assigns by default to every subnet in a virtual network', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6180ce38-5427-4d9f-9bf4-606f1eb464dc', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso wants to force all outbound internet traffic from a spoke virtual network through a centralized firewall network virtual appliance in the hub, instead of using Azure''s default internet route. What should the network team configure?',
        'Correct: A user-defined route overrides Azure''s default system routes; to force outbound traffic through an NVA, you create a UDR for the relevant address prefix (such as 0.0.0.0/0) with the next hop type set to Virtual appliance and the NVA''s private IP address specified as the next hop address. B) is incorrect; DNS records do not control network path routing. C) is incorrect; NSGs filter traffic but don''t define next hop routing, and ''Internet'' is a route next hop type, not an NSG rule concept. D) is factually wrong — system routes can be overridden with UDRs, which is the entire purpose of this module.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('67d36497-8a72-480b-99d7-ad6ae3181d9b', '6180ce38-5427-4d9f-9bf4-606f1eb464dc', 'A DNS record pointing 0.0.0.0/0 to the NVA', FALSE, 1),
    ('cd28322b-8163-42d9-83a7-7b4257578e9b', '6180ce38-5427-4d9f-9bf4-606f1eb464dc', 'A network security group rule with next hop type ''Internet''', FALSE, 2),
    ('c76a849b-c348-4c4a-8217-c94613466d15', '6180ce38-5427-4d9f-9bf4-606f1eb464dc', 'A user-defined route (UDR) that overrides the default 0.0.0.0/0 system route, specifying the NVA''s private IP address as the next hop of type ''Virtual appliance''', TRUE, 3),
    ('ca35fbb6-e322-45af-a722-f39087e9fab4', '6180ce38-5427-4d9f-9bf4-606f1eb464dc', 'Nothing; system routes cannot be overridden under any circumstances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('428e51b8-fc86-4f14-8135-ce3ada2aec06', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s routing table has two available routes for a packet destined to 10.0.5.10: one with prefix 10.0.0.0/16 and another with prefix 10.0.5.0/24. Which route does Azure select, and why?',
        'Correct: When multiple routes are available, Azure selects the route offering the longest (most specific) prefix match; 10.0.5.0/24 is more specific than 10.0.0.0/16 for the destination 10.0.5.10, so it is selected. A) states the opposite of Azure''s actual selection logic. C) is incorrect; Azure does not load-balance a single flow''s routing decision across two overlapping routes. D) is incorrect; overlapping prefixes are valid and expected — the more specific one is simply preferred.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('df52b5d6-1edd-4b49-913c-3a60302f5d30', '428e51b8-fc86-4f14-8135-ce3ada2aec06', '10.0.0.0/16, because shorter prefixes are always preferred', FALSE, 1),
    ('b67268e2-9e33-4738-a503-e938456c1842', '428e51b8-fc86-4f14-8135-ce3ada2aec06', 'Azure load-balances the packet across both routes simultaneously', FALSE, 2),
    ('101089a4-57bd-44dd-8206-d24a16d69695', '428e51b8-fc86-4f14-8135-ce3ada2aec06', '10.0.5.0/24, because Azure selects the route offering the longest (most specific) prefix match', TRUE, 3),
    ('11393b8d-6564-4ef7-ad55-c4147a7fe711', '428e51b8-fc86-4f14-8135-ce3ada2aec06', 'Neither route is valid since they overlap', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9c33fe19-a064-41cc-8112-e3810a7456f0', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso has a user-defined route, a BGP-learned route, and a system route all defining the same address prefix for a subnet. Which route does Azure use?',
        'Correct: When multiple routes share the same address prefix, Azure selects the route based on type in this priority order: user-defined routes, then BGP routes, then system routes. A) and B) misstate the priority order. D) is incorrect; Azure resolves this automatically according to the documented precedence rules, without requiring manual intervention.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0e51966b-1fff-42be-849e-7e07a39bde64', '9c33fe19-a064-41cc-8112-e3810a7456f0', 'The user-defined route, since Azure prioritizes route types in this order: user-defined routes, then BGP routes, then system routes', TRUE, 1),
    ('8004abc4-16f2-4dbd-bc32-01f061d9b343', '9c33fe19-a064-41cc-8112-e3810a7456f0', 'The BGP route always takes precedence over both other types', FALSE, 2),
    ('5dbcc575-be2e-4817-9bed-bea5719c6b77', '9c33fe19-a064-41cc-8112-e3810a7456f0', 'The system route always takes precedence for consistency', FALSE, 3),
    ('5c856047-508d-4525-a2a2-5c1e731445a4', '9c33fe19-a064-41cc-8112-e3810a7456f0', 'Azure requires the administrator to manually select which route applies', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1d2c8b8b-48d9-470f-8ea4-55c174fd170c', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso deploys a third-party firewall network virtual appliance (NVA) between a perimeter subnet and internal subnets, and configures user-defined routes to send inter-subnet traffic through it. After deployment, no traffic passes through the NVA at all — it is silently dropped. What is the most likely misconfiguration?',
        'Correct: IP forwarding must be enabled on the network interfaces of a network virtual appliance so it can forward traffic accepted on one interface out through the appropriate interface toward the correct subnet; without it, the NVA will not route/forward traffic and packets destined elsewhere will be dropped. B), C), and D) do not address the described symptom — public IP SKU, peering type, and DNS support are unrelated to whether the appliance can forward Layer 3 traffic between its own interfaces.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('98caaf5c-26c7-43a0-88c3-ebaa59d7dd7a', '1d2c8b8b-48d9-470f-8ea4-55c174fd170c', 'The virtual network is using global peering instead of regional peering', FALSE, 1),
    ('8e0f06a4-2436-492a-903e-3c1b83c46cb7', '1d2c8b8b-48d9-470f-8ea4-55c174fd170c', 'The NVA was deployed using a Standard SKU public IP address', FALSE, 2),
    ('f115b639-a22b-4745-8c8e-5130cf1d84ec', '1d2c8b8b-48d9-470f-8ea4-55c174fd170c', 'IP forwarding was not enabled on the NVA''s network interface(s), which is required for the appliance to forward traffic between subnets', TRUE, 3),
    ('00786978-9861-41f8-955e-37d707a30943', '1d2c8b8b-48d9-470f-8ea4-55c174fd170c', 'The NVA''s operating system does not support DNS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('deb075aa-3429-452a-9edb-f49d0e581843', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso connects an on-premises datacenter to Azure over ExpressRoute and wants on-premises routes to be dynamically advertised to the Azure virtual network gateway, and vice versa, without manually maintaining static UDRs for every on-premises subnet. Which technology should they use?',
        'Correct: BGP is the standard protocol used to exchange routing information between two or more networks, and it''s commonly used to dynamically advertise on-premises routes to Azure over ExpressRoute (and can also be used with site-to-site VPN connections), removing the need to manually maintain static routes. B), C), and A) are unrelated to dynamic route exchange between networks — NSGs filter traffic, DNS alias records handle name resolution, and ASGs group VMs for security rule purposes.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d0255939-ad6c-488e-a716-07ac9ab149db', 'deb075aa-3429-452a-9edb-f49d0e581843', 'Application security groups', FALSE, 1),
    ('b4d7b49e-936e-4dae-b4ec-9a8c2dd9a4cd', 'deb075aa-3429-452a-9edb-f49d0e581843', 'Azure DNS alias records', FALSE, 2),
    ('099996ef-aa2c-4a0a-8ed4-087fb73ef82f', 'deb075aa-3429-452a-9edb-f49d0e581843', 'BGP (Border Gateway Protocol), the standard routing protocol used to exchange routing information dynamically between the on-premises gateway and the Azure virtual network gateway', TRUE, 3),
    ('9b3d81db-0aef-4812-bc6c-31f7dd25c0d3', 'deb075aa-3429-452a-9edb-f49d0e581843', 'Network security groups configured with routing tags', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('83c75f4c-4251-45ac-a638-b8c717f48a5c', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso needs high availability for a critical firewall NVA that inspects traffic across many different ports and protocols on an internal Standard load balancer. Which load-balancing rule configuration is specifically designed for this NVA high-availability and scaling scenario?',
        'Correct: A load-balancing rule configured with protocol - all and port - 0 is called a high availability (HA) ports rule; it allows a single rule to load-balance all TCP and UDP flows arriving on all ports of an internal Standard load balancer, which is specifically useful for high availability and scaling scenarios involving network virtual appliances. A) is too narrow, covering only a single port/protocol. C) addresses single-VM remote access, not NVA HA across all ports. B) is not an Azure Load Balancer construct.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5d221fb3-b574-46d2-bc0f-c14d9ce73564', '83c75f4c-4251-45ac-a638-b8c717f48a5c', 'A standard rule limited to TCP port 443 only', FALSE, 1),
    ('faadfe7d-a39c-4294-a422-7baad182c346', '83c75f4c-4251-45ac-a638-b8c717f48a5c', 'A high availability (HA) ports rule, configured with protocol=all and port=0, load-balancing all TCP and UDP flows across all ports with a single rule', TRUE, 2),
    ('906351a9-7795-45b9-a8a6-bcab1dce27fe', '83c75f4c-4251-45ac-a638-b8c717f48a5c', 'A DNS-based routing rule', FALSE, 3),
    ('15aa253c-a1d9-4dba-ad2f-539e3d6ae736', '83c75f4c-4251-45ac-a638-b8c717f48a5c', 'An inbound NAT rule mapping RDP to a single VM', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('04c88a63-46b0-4118-bb25-6cfbb1d164c9', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s architecture review flags that a critical firewall NVA is a single point of failure: if it goes down, dependent services lose connectivity entirely. Which statement best reflects the guidance about NVAs and high availability?',
        'so a high-availability architecture (e.g., paired NVAs behind an HA ports load balancer rule) should be included in the design — Correct: When traffic is routed through a network virtual appliance, that appliance becomes a critical part of the infrastructure — an NVA failure directly impacts the ability of dependent services to communicate, which is why designing for high availability (such as paired NVAs behind an HA ports load-balancing rule) is important. A), C), and D) all understate or misstate the real operational risk that an unavailable NVA introduces to routed traffic in Azure.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c428494c-5646-4525-9bdc-6bc9944999bc', '04c88a63-46b0-4118-bb25-6cfbb1d164c9', 'Only DNS-related failures matter for NVA-routed traffic; NVA failures have no impact on connectivity', FALSE, 1),
    ('20a38259-0b4d-4768-91ac-3bfe26523c5b', '04c88a63-46b0-4118-bb25-6cfbb1d164c9', 'NVA high availability is only a concern in on-premises deployments, not in Azure', FALSE, 2),
    ('6363f8d7-7de8-42a3-bec8-8775fe3e3b8d', '04c88a63-46b0-4118-bb25-6cfbb1d164c9', 'NVAs are inherently highly available by default and require no additional design consideration', FALSE, 3),
    ('e1e49daf-f7bf-484a-9e37-59c2d94c580c', '04c88a63-46b0-4118-bb25-6cfbb1d164c9', 'Because traffic routed through an NVA makes it a critical piece of infrastructure, NVA failures directly affect the ability of dependent services to communicate — so a high-availability architecture (e.g., paired NVAs behind an HA ports load balancer rule) should be included in the design', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bcfaab59-cc28-418a-bc96-7b32ac1cb817', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s e-commerce web tier is experiencing performance degradation because a single VM cannot handle all incoming customer traffic. The team wants to distribute internet traffic evenly across multiple VMs while keeping backend IPs private. What should they deploy?',
        'Correct: A public load balancer is designed to balance internet traffic to VMs; it maps the public IP address and port of incoming traffic to the private IP address and port of backend pool VMs, distributing load across multiple instances while keeping their private IPs hidden from clients. B) is incorrect; internal load balancers are never directly exposed to internet endpoints. C) does not provide health-aware, deterministic load distribution or failover the way a load balancer does. A) does not solve the scaling and resiliency problem as effectively as horizontal scaling with load balancing.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ebdcf4b4-509b-4b32-b38c-4692fff3da0b', 'bcfaab59-cc28-418a-bc96-7b32ac1cb817', 'A single larger VM instead of load balancing', FALSE, 1),
    ('65248a26-f964-42f6-ab27-74625ccfd169', 'bcfaab59-cc28-418a-bc96-7b32ac1cb817', 'An internal Azure Load Balancer only, since it can also accept direct internet traffic', FALSE, 2),
    ('9e078d98-f9fe-4ba8-85c3-5d30b2c54f42', 'bcfaab59-cc28-418a-bc96-7b32ac1cb817', 'A private DNS zone with round-robin A records', FALSE, 3),
    ('9f19ff3c-99fa-4076-be83-cf666b097ebe', 'bcfaab59-cc28-418a-bc96-7b32ac1cb817', 'A public Azure Load Balancer, which maps the public IP/port of incoming traffic to the private IP/port of backend VMs in the pool', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4593df4e-2e06-4eb6-876b-6f6eb337ae03', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso has a multi-tier application where the web tier (public-facing) needs to distribute requests to a set of internal analytics VMs that must never be exposed to the internet. Which load balancer type is appropriate for the analytics tier?',
        'Correct: An internal load balancer directs traffic to resources inside a virtual network; its front-end IP addresses and the virtual network are never directly exposed to an internet endpoint, making it the right choice for internal-only tiers like the analytics servers in this scenario. B) would expose the analytics tier directly to the internet, violating the requirement. C) does not provide load balancing or health-aware routing. D) is used for secure remote VM management, not load balancing traffic to a tier of servers.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('86c88191-aa61-44db-8f19-cf679e01c6f4', '4593df4e-2e06-4eb6-876b-6f6eb337ae03', 'A public load balancer with a public IP front-end', FALSE, 1),
    ('23370cf7-0ede-407e-a18d-a924bb7f7f91', '4593df4e-2e06-4eb6-876b-6f6eb337ae03', 'An internal load balancer, whose front-end IP addresses are never directly exposed to an internet endpoint, appropriate for distributing traffic to resources inside the virtual network', TRUE, 2),
    ('e6b2a18d-e2fc-4158-bb47-97970e6868cb', '4593df4e-2e06-4eb6-876b-6f6eb337ae03', 'Azure DNS with public A records', FALSE, 3),
    ('b0167614-e5fc-4d95-a909-8cdf88ca2b08', '4593df4e-2e06-4eb6-876b-6f6eb337ae03', 'A Bastion host', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bd3fc8d3-fc2b-403f-a7ca-42b85308192d', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s security team asks whether Azure Load Balancer can make routing decisions based on the content of an HTTP request, such as the URL path. What is the correct answer, and why?',
        'Correct: Azure Load Balancer functions at Layer 4 of the OSI model, distributing traffic based on properties like source/destination address, protocol (TCP/UDP), and port — it cannot apply different rules based on the content of the traffic (such as URL path), which requires a Layer 7 service like Application Gateway. A) and B) incorrectly attribute Layer 7 capabilities to Load Balancer; WAF policies are not a Load Balancer feature. D) is incorrect; Load Balancer can carry HTTP traffic, it simply cannot inspect or route based on its content.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('380c4f4b-1090-424b-bd71-d5478dc4298b', 'bd3fc8d3-fc2b-403f-a7ca-42b85308192d', 'Yes, but only if a WAF policy is attached to the load balancer', FALSE, 1),
    ('b30a4d10-700f-43c8-b1c3-2bb6084d3cf0', 'bd3fc8d3-fc2b-403f-a7ca-42b85308192d', 'No, because Load Balancer does not support HTTP traffic at all', FALSE, 2),
    ('b16f5105-876a-4221-b5d6-ea2852f4b1e0', 'bd3fc8d3-fc2b-403f-a7ca-42b85308192d', 'Yes, because Load Balancer inspects full HTTP payloads by default', FALSE, 3),
    ('6659aaed-0b37-4ebe-bb99-0e3fbd729320', 'bd3fc8d3-fc2b-403f-a7ca-42b85308192d', 'No, because Azure Load Balancer operates at Layer 4 (transport layer) of the OSI model and cannot apply different rules based on the content of internal traffic (Layer 7)', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5f77815c-171a-4ff5-816b-a7da2f095487', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso configures a load balancer with an HTTP health probe pointing at /health on each backend VM. One VM''s application starts returning HTTP 500 errors on that path, though the VM itself is still running. What happens to that VM''s existing, already-established client connections?',
        'Correct: A health probe failure doesn''t affect existing connections — an existing connection continues until the application ends the flow, an idle timeout occurs, or the virtual machine shuts down; the load balancer simply stops sending new connections to the unhealthy instance. A), C), and D) all describe behavior that does not match documented Load Balancer health probe semantics.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0d8bfd7a-bccc-423c-ad24-4dee8c28afc5', '5f77815c-171a-4ff5-816b-a7da2f095487', 'The VM''s public IP address is immediately deallocated', FALSE, 1),
    ('ab078d54-a52b-4d72-adc7-ecd044bf9d8d', '5f77815c-171a-4ff5-816b-a7da2f095487', 'They are immediately and forcibly terminated the moment the probe fails', FALSE, 2),
    ('5a83e1a0-dad1-477d-b376-9a8df74168b8', '5f77815c-171a-4ff5-816b-a7da2f095487', 'They are unaffected by the failed probe and continue until the application ends the flow, an idle timeout occurs, or the VM shuts down; only new connections stop being routed to that VM', TRUE, 3),
    ('fdd1a1e6-a637-4347-a3d3-6013a3c3e57a', '5f77815c-171a-4ff5-816b-a7da2f095487', 'The entire load balancer stops functioning for all backend VMs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('98c546a4-cf8c-4e86-b52a-261096e3ba9e', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s finance application stores session state locally on whichever backend VM initially handled a user''s login. Users report being logged out unexpectedly when the load balancer sends their subsequent requests to a different VM. Which Load Balancer setting should Contoso configure to address this (while planning a longer-term fix to remove local session state)?',
        'Correct: Session persistence (session affinity) controls whether successive requests from a client are routed to the same backend VM; configuring Client IP or Client IP and protocol affinity ensures the same client''s requests land on the same VM, addressing the local session state issue as an interim measure. B) removes an unrelated but important health-detection capability and does not address session stickiness. A) is unrelated to session behavior. D) addresses remote administrative access, not client traffic session handling.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5b99318d-ecb8-4c72-806b-9a0843f91fc9', '98c546a4-cf8c-4e86-b52a-261096e3ba9e', 'Session persistence set to Client IP (2-tuple) or Client IP and protocol (3-tuple), so successive requests from the same client are routed to the same backend VM', TRUE, 1),
    ('48393633-7125-4f8e-a511-a975662df99d', '98c546a4-cf8c-4e86-b52a-261096e3ba9e', 'Disabling all health probes', FALSE, 2),
    ('70ea5baf-3f87-4bb3-b708-ae76d7c72ad7', '98c546a4-cf8c-4e86-b52a-261096e3ba9e', 'Switching to a Basic SKU public IP address', FALSE, 3),
    ('c569ad65-4535-47a4-827a-004540c94142', '98c546a4-cf8c-4e86-b52a-261096e3ba9e', 'Adding an inbound NAT rule for RDP access', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('58c53767-9c2c-420b-9eb8-997e1ee92807', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso wants VMs in a backend pool, which only have private IP addresses, to be able to initiate outbound connections to a public software update server on the internet. Which Load Balancer feature enables this?',
        'Correct: An outbound rule configures SNAT for VMs or instances in the backend pool, enabling them to communicate outbound to the internet or other public endpoints even though they only have private IP addresses. B) determines backend health for inbound load balancing, not outbound connectivity. C) affects how inbound client requests are distributed, not outbound access. A) is used to allow specific inbound access (like RDP) to a single VM, not general outbound connectivity for the whole pool.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('54740991-bfd5-4bf2-90ca-689f32883454', '58c53767-9c2c-420b-9eb8-997e1ee92807', 'A health probe configured for HTTPS', FALSE, 1),
    ('ae32e104-07eb-414e-ad07-6a5114adcbd7', '58c53767-9c2c-420b-9eb8-997e1ee92807', 'An inbound NAT rule for RDP', FALSE, 2),
    ('1a603fd1-e127-4087-a15f-961bfeddb059', '58c53767-9c2c-420b-9eb8-997e1ee92807', 'An outbound rule, which configures source network address translation (SNAT) for the VMs in the backend pool so they can communicate outbound to the internet', TRUE, 3),
    ('970741a9-a957-4acb-abe1-fd79aedf6daf', '58c53767-9c2c-420b-9eb8-997e1ee92807', 'Session persistence set to None', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dc74386f-12b9-4a37-84db-65c2682826c3', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso needs a global, Layer 7 load balancing solution across multiple Azure regions that includes a web application firewall and TLS offload for a public-facing web app. Based on the module''s comparison of Azure load balancing services, which service should they choose instead of Azure Load Balancer?',
        'Correct: Azure Front Door is a global application delivery network offering Layer 7 capabilities including TLS/SSL offload, path-based routing, fast failover, a web application firewall, and caching, ideal for a web application load-balanced across multiple Azure regions. A) is incorrect; Azure Load Balancer is a Layer 4 service and does not provide WAF or global Layer 7 routing. C) provides secure remote VM access, not web application load balancing. D) is a monitoring/diagnostics toolset, not a load balancing service.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0deebd99-2c15-40c3-a627-f355c0e5e79e', 'dc74386f-12b9-4a37-84db-65c2682826c3', 'Azure Load Balancer, since it also provides WAF and global Layer 7 routing', FALSE, 1),
    ('6d194931-c89e-46e6-b60c-c657d5273cd4', 'dc74386f-12b9-4a37-84db-65c2682826c3', 'Azure Bastion', FALSE, 2),
    ('20fccf47-6acc-4150-bf33-c9dc9d0821f9', 'dc74386f-12b9-4a37-84db-65c2682826c3', 'Azure Front Door, which offers Layer 7 features such as TLS/SSL offload, path-based routing, fast failover, a web application firewall, and caching across global regions', TRUE, 3),
    ('e8ea0822-7ded-40a0-b287-bdee04672f42', 'dc74386f-12b9-4a37-84db-65c2682826c3', 'Azure Network Watcher', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d711a07c-3e8a-46c0-803b-b40b3daaa222', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso runs a small internal web application on a single IaaS VM that receives minimal traffic, and existing infrastructure already handles the current load comfortably. According to the guidance on when NOT to use Azure Load Balancer, what should Contoso conclude?',
        'Correct: Azure Load Balancer isn''t appropriate for a web application that doesn''t require load balancing and runs on a single IaaS VM instance, particularly when existing infrastructure already competently handles the current traffic load — deploying a backend pool and Load Balancer in that case adds unnecessary complexity. B), A), and D) all describe requirements that do not reflect actual Azure Load Balancer guidance; its use is driven by the need to distribute traffic across multiple instances, not by VM count thresholds, internal-facing status, or subnet count alone.', 51, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f250f73d-625a-4877-aa47-3515d42419aa', 'd711a07c-3e8a-46c0-803b-b40b3daaa222', 'A load balancer is required specifically because the application is internal-facing', FALSE, 1),
    ('75694a6c-315b-4a2c-94ac-8cbc7840f754', 'd711a07c-3e8a-46c0-803b-b40b3daaa222', 'Azure Load Balancer must always be deployed for every VM, regardless of traffic volume', FALSE, 2),
    ('508c3560-6ae5-4909-b0f2-614fde32cc3f', 'd711a07c-3e8a-46c0-803b-b40b3daaa222', 'Load Balancer is mandatory whenever more than one subnet exists in the virtual network', FALSE, 3),
    ('2b5a1f20-9e9a-447f-95e8-5399f9c17431', 'd711a07c-3e8a-46c0-803b-b40b3daaa222', 'Azure Load Balancer is not necessary in this scenario, since it is intended for distributing traffic across a pool of VMs, and this workload runs on a single VM without a scaling or high-traffic requirement', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ab0d72d6-e1ec-4143-b9f8-b5509c6021d2', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s e-commerce site needs to block common web application attacks like SQL injection and cross-site scripting before requests reach the web servers, in addition to load balancing HTTP traffic. Which Azure service, and which specific component, should they use?',
        'Correct: Application Gateway''s web application firewall (WAF) checks each request for many common threats based on OWASP recommendations, such as SQL injection and cross-site scripting, before it reaches the backend pool — combined with Application Gateway''s inherent Layer 7 HTTP load balancing. B), C), and A) are not designed to inspect or block application-layer web attacks; they serve unrelated functions (health checking, DNS resolution, and packet capture, respectively).', 52, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('930fb3ea-0f68-40b1-9809-307322711369', 'ab0d72d6-e1ec-4143-b9f8-b5509c6021d2', 'Azure Load Balancer, using health probes', FALSE, 1),
    ('eeb42bff-491a-4cd9-98c1-b7ac5c184c20', 'ab0d72d6-e1ec-4143-b9f8-b5509c6021d2', 'Azure Application Gateway, using its web application firewall (WAF) component, which evaluates requests against OWASP Core Rule Sets', TRUE, 2),
    ('c612f6f5-dda1-467e-b32a-1e6a0be194b6', 'ab0d72d6-e1ec-4143-b9f8-b5509c6021d2', 'Network Watcher, using Packet capture', FALSE, 3),
    ('dd35209f-0374-418a-82d5-1ac187656c5f', 'ab0d72d6-e1ec-4143-b9f8-b5509c6021d2', 'Azure DNS, using TXT records', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ea554573-ea31-4b9f-a38a-b4084f967952', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso hosts two separate web applications — contoso.com and fabrikam.com — and wants both served through a single Application Gateway instance, each routed to its own backend pool. Which Application Gateway feature enables this?',
        'Correct: Multi-site routing configures more than one web application on the same Application Gateway instance by registering multiple CNAMEs for the gateway''s IP address and using different listeners to wait for requests for each site, then routing each to the appropriate backend pool via rules — this directly matches the contoso.com/fabrikam.com scenario. A) is incorrect since path-based routing alone doesn''t distinguish requests by hostname. C) would not allow the gateway to route requests to the correct pool for each domain. B) is unnecessary; multi-site routing is specifically designed to avoid deploying separate gateway instances per domain.', 53, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dfc3dae0-04e0-4149-b692-ae0074d90dd4', 'ea554573-ea31-4b9f-a38a-b4084f967952', 'Path-based routing only, since hostnames are never used in routing decisions', FALSE, 1),
    ('e48fdc3b-be0f-45f3-acd1-f4b3e5051e16', 'ea554573-ea31-4b9f-a38a-b4084f967952', 'Two entirely separate Application Gateway instances are always mandatory for multiple domains', FALSE, 2),
    ('df45a573-fbf1-4c91-826c-43bf5c849d96', 'ea554573-ea31-4b9f-a38a-b4084f967952', 'A single Basic listener shared by both applications with no distinguishing configuration', FALSE, 3),
    ('f4f5cf1e-33c1-4ce5-979a-a7501b9a1ddb', 'ea554573-ea31-4b9f-a38a-b4084f967952', 'Multi-site routing, using a Multi-site listener that routes based on the hostname element of the URL to direct each domain''s requests to its corresponding backend pool', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d282cfcc-0dfb-43fe-8270-935bee40e11a', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso wants incoming requests for /video/\* to go to a backend pool of VMs optimized for video streaming, while requests for /images/\* go to a separate pool optimized for image delivery, all behind the same Application Gateway instance and hostname. Which feature should they configure?',
        'Correct: Path-based routing sends requests with different URL paths to different pools of backend servers — for example, /video/\* to a video-optimized pool and /images/\* to an image-serving pool — which is precisely the scenario described. B) addresses routing by hostname/domain, not by URL path under the same host. C) is incorrect; NSGs filter based on network-layer properties, not HTTP URL paths. D) is incorrect; DNS records resolve hostnames to IP addresses and cannot route based on URL path.', 54, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e77d350b-d411-4286-8bdb-76b27bfdbde5', 'd282cfcc-0dfb-43fe-8270-935bee40e11a', 'Path-based routing, which sends requests with different URL paths to different backend pools', TRUE, 1),
    ('320dc78a-c14c-4c75-b7da-8d37b105429b', 'd282cfcc-0dfb-43fe-8270-935bee40e11a', 'A network security group rule matching the URL path', FALSE, 2),
    ('f2f60968-5e78-4fb0-a035-aa493fabde92', 'd282cfcc-0dfb-43fe-8270-935bee40e11a', 'Multi-site routing only', FALSE, 3),
    ('041b19ef-7e75-42d4-9de8-0a2f5d6051d8', 'd282cfcc-0dfb-43fe-8270-935bee40e11a', 'An Azure DNS CNAME record for each path', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('78a0d593-66a1-4741-b552-c84462f6b379', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s compliance team requires full end-to-end encryption: traffic must be encrypted from the client to the gateway, and again from the gateway to each backend server, even though this adds CPU overhead on the backend servers. How does Application Gateway support this requirement?',
        'Correct: If end-to-end (full) encryption is required, Application Gateway can decrypt the traffic on the gateway using your private key, then re-encrypt it with the public key of the service running in the backend pool before forwarding it — satisfying full encryption from client to gateway and gateway to backend. B) contradicts documented Application Gateway capability; it does support re-encryption to the backend. C) is unnecessary and incorrect. D) is a fabricated limitation with no basis in the module content.', 55, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('28db88bb-c24f-4bae-bebf-8b915aacb935', '78a0d593-66a1-4741-b552-c84462f6b379', 'Application Gateway can decrypt traffic at the gateway using its private key, and then re-encrypt it using the public key of the service running in the backend pool, achieving end-to-end TLS/SSL encryption', TRUE, 1),
    ('742940ec-6f87-48de-b5c9-bc9ef6bb5f54', '78a0d593-66a1-4741-b552-c84462f6b379', 'Application Gateway automatically disables WAF whenever end-to-end encryption is enabled', FALSE, 2),
    ('f2a7174e-dd60-42ab-88c2-da61ce394604', '78a0d593-66a1-4741-b552-c84462f6b379', 'Application Gateway can only ever offload TLS and cannot re-encrypt traffic to the backend under any circumstances', FALSE, 3),
    ('15fb84a0-4d94-4adc-b10f-ce77a6dde13d', '78a0d593-66a1-4741-b552-c84462f6b379', 'End-to-end encryption requires bypassing Application Gateway entirely', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('285ace5d-2945-4ffa-8527-f26d7b842577', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s operations team is planning a rolling update of backend web servers behind Application Gateway and wants in-flight user requests to complete gracefully rather than being abruptly cut off when a server is taken out of the pool. Which Application Gateway feature addresses this?',
        'Correct: Connection draining allows for the graceful removal of backend pool members during planned service updates, ensuring in-flight requests are permitted to complete rather than being abruptly terminated. B) addresses routing based on URL structure, not rolling update behavior. C) is unrelated to graceful server removal. D) would actually reduce Application Gateway''s ability to detect and route around unhealthy servers, worsening — not solving — the described problem.', 56, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d8fc2dd4-46c3-4405-abf2-6fe2a88725e4', '285ace5d-2945-4ffa-8527-f26d7b842577', 'Disabling all health probes during the update', FALSE, 1),
    ('d4290c89-50c7-49ed-936e-d299cb233c61', '285ace5d-2945-4ffa-8527-f26d7b842577', 'Path-based routing', FALSE, 2),
    ('1724a12c-16bb-4fdc-85d9-2f63afea37ea', '285ace5d-2945-4ffa-8527-f26d7b842577', 'Connection draining, which allows for the graceful removal of backend pool members during planned service updates', TRUE, 3),
    ('9be30114-2b64-40f4-9653-caca59634d93', '285ace5d-2945-4ffa-8527-f26d7b842577', 'A public IP address change', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b916b76e-daec-4a7e-aa72-402f11317e6b', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s traffic grows unpredictably during flash sales, sometimes spiking 10x within minutes, and the team does not want to manually provision additional Application Gateway capacity ahead of each event. Which Application Gateway capability addresses this?',
        'Correct: Application Gateway supports autoscaling, adjusting capacity up or down in response to changing traffic load patterns, and this avoids the need to choose a deployment size or instance count during provisioning — directly addressing unpredictable spikes like flash sales. A) is exactly the manual, reactive approach Contoso wants to avoid. C) is incorrect; Azure Load Balancer operates at Layer 4, not Layer 7, and is a different product with different scaling behavior. D) does not address capacity and would reduce security during the very events when protection matters most.', 57, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cd263a43-3064-4165-bafa-20b9c8fc4b51', 'b916b76e-daec-4a7e-aa72-402f11317e6b', 'Manually resizing the gateway before every anticipated sale', FALSE, 1),
    ('7716cc5a-7406-4c2d-be98-00ab092a512c', 'b916b76e-daec-4a7e-aa72-402f11317e6b', 'Autoscaling, which adjusts Application Gateway capacity up or down automatically based on changing traffic load, without requiring a fixed deployment size or instance count to be chosen upfront', TRUE, 2),
    ('d7bb21bc-d17a-4997-b512-597ecafe41d0', 'b916b76e-daec-4a7e-aa72-402f11317e6b', 'Switching to Azure Load Balancer, which scales automatically at Layer 7', FALSE, 3),
    ('682ca895-9c71-4f78-99e4-e1b93ea9118e', 'b916b76e-daec-4a7e-aa72-402f11317e6b', 'Disabling the WAF during high-traffic events', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f6e765cc-11c8-479c-ae08-9e181760c8fa', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso is evaluating whether to use Azure Load Balancer or Azure Application Gateway for a customer-facing web app that requires a WAF and session affinity based on locally stored session data. Which factor from the module''s guidance should drive their decision toward Application Gateway?',
        'Correct: The module explicitly identifies WAF protection against threats like cross-site scripting and SQL injection, plus session affinity for applications relying on locally stored session state, as scenarios where Application Gateway is the appropriate choice over Azure Load Balancer, which operates at Layer 4 and cannot provide these Layer 7 capabilities. A) inverts the correct guidance. C) is factually incorrect; Azure Load Balancer does not include WAF functionality. D) is incorrect; Application Gateway explicitly supports session affinity.', 58, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6fd50b36-bdc0-4286-b0e9-5e61bd1c6cdb', 'f6e765cc-11c8-479c-ae08-9e181760c8fa', 'Application Gateway should be avoided whenever WAF functionality is required', FALSE, 1),
    ('b6a37dda-ccc5-4a15-9b06-993d7e0accba', 'f6e765cc-11c8-479c-ae08-9e181760c8fa', 'Session affinity is not supported by either service', FALSE, 2),
    ('f2cc508d-fd00-40e2-9d7a-61b10d368ebf', 'f6e765cc-11c8-479c-ae08-9e181760c8fa', 'The requirement for a web application firewall and session affinity based on server-stored state are explicitly cited as reasons to choose Application Gateway over Azure Load Balancer, which operates at Layer 4 and lacks these Layer 7 capabilities', TRUE, 3),
    ('e824118e-5181-4766-9f44-89229de92d46', 'f6e765cc-11c8-479c-ae08-9e181760c8fa', 'Azure Load Balancer natively includes a WAF, making the choice equivalent either way', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ab2fe092-921a-42bb-b98c-8c2378c425b1', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'A Contoso developer reports that a remote PowerShell session (over HTTPS, TCP port 5986) cannot be established between two IaaS VMs in the same virtual network, and the team suspects an NSG is blocking it. Which Network Watcher tool should they use first to pinpoint the exact rule responsible?',
        'Correct: IP flow verify lets you specify a local/remote port, protocol (TCP/UDP), and local/remote IP addresses to check whether a packet is allowed or denied to or from an address, and it reports which specific security rule allowed or denied the traffic — ideal for quickly pinpointing an NSG-caused blockage like this one. A) analyzes flow log data over time rather than testing a specific point-in-time flow. C) is unrelated to NSG rule evaluation. D) is designed for continuous, longer-term monitoring, not a fast, targeted single flow check.', 59, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('56976582-4fb3-405f-96d1-03d76471549e', 'ab2fe092-921a-42bb-b98c-8c2378c425b1', 'Connection Monitor, configured to run for the next 30 days', FALSE, 1),
    ('abb31cc2-8a5f-4bde-9580-b0c39a809600', 'ab2fe092-921a-42bb-b98c-8c2378c425b1', 'Traffic Analytics', FALSE, 2),
    ('df27b4a6-640f-461f-ad42-95b8be2c700a', 'ab2fe092-921a-42bb-b98c-8c2378c425b1', 'IP flow verify, specifying the source/destination IP addresses, TCP port 5986, and traffic direction, to determine whether the packet is allowed or denied and by which specific rule', TRUE, 3),
    ('2ce7b0e7-4b25-41dc-a411-f157aa0eb410', 'ab2fe092-921a-42bb-b98c-8c2378c425b1', 'Azure DNS zone records', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2663d6d6-4b65-47a1-bc5b-f11c7cc69832', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s network team wants to visually understand all resources in a complex virtual network spanning multiple subscriptions and resource groups, along with how those resources relate to each other, before starting a broader troubleshooting effort. Which Network Watcher tool is designed for this?',
        'Correct: The Topology tool provides a visualization of the entire network to understand its configuration, with an interactive interface for viewing resources and their relationships across multiple subscriptions, resource groups, and locations — well suited to an initial, exploratory understanding of a complex environment. B) captures raw packet data on a specific VM, not a topology overview. C) diagnoses VPN gateway/connection health specifically. A) logs raw traffic flow data rather than visualizing resource relationships.', 60, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('42ff0dcf-a14a-4980-b459-730073077720', '2663d6d6-4b65-47a1-bc5b-f11c7cc69832', 'Packet capture', FALSE, 1),
    ('06b6877b-4935-41b2-8363-0be9da7bcae4', '2663d6d6-4b65-47a1-bc5b-f11c7cc69832', 'Topology, which provides an interactive visualization of resources and their relationships across multiple subscriptions, resource groups, and locations', TRUE, 2),
    ('8b4f5cb1-38df-4f3a-b4bd-6c261cb35528', '2663d6d6-4b65-47a1-bc5b-f11c7cc69832', 'VPN troubleshoot', FALSE, 3),
    ('0db1781a-639b-4429-900e-7fb24e5f4465', '2663d6d6-4b65-47a1-bc5b-f11c7cc69832', 'Flow logs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2bfdb306-0a30-4fed-b347-4c17b9635f38', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso needs ongoing, long-term visibility into the connectivity and latency between an on-premises server and an Azure VM, alerting the team if connectivity degrades over the coming weeks. Which Network Watcher tool is purpose-built for this, and what does it require?',
        'Correct: Connection Monitor provides unified, end-to-end monitoring of connections over time for Azure and hybrid deployments, helping detect connectivity changes and measure latency; it requires installing monitoring agents (lightweight executables, or the Network Watcher Agent VM extension for Azure VMs) on the hosts being monitored. B) is designed for single point-in-time tests, not continuous monitoring. A) tests filtering rules at a point in time, not latency trends. D) reports next hop and route table information for a single packet, not historical latency data.', 61, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('68e09e9b-98be-4a02-9f6d-1a8395c56b6d', '2bfdb306-0a30-4fed-b347-4c17b9635f38', 'Connection troubleshoot, since it also monitors continuously by default', FALSE, 1),
    ('6c8425bb-c5e5-40ca-bceb-930efbd25a18', '2bfdb306-0a30-4fed-b347-4c17b9635f38', 'IP flow verify, run manually once per day', FALSE, 2),
    ('ce1e89b5-6cb9-421f-8960-8f568aea9a48', '2bfdb306-0a30-4fed-b347-4c17b9635f38', 'Next hop, since it tracks historical latency automatically', FALSE, 3),
    ('c3af8dfe-8dd9-4f4c-9f19-f1db8fc82806', '2bfdb306-0a30-4fed-b347-4c17b9635f38', 'Connection Monitor, which provides unified, end-to-end connection monitoring over time for Azure and hybrid endpoints, and requires monitoring agents to be installed on the hosts being monitored', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ae81d37c-ce5d-4ce8-a4b0-bc8c9b87855c', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s engineer runs the Next hop tool against a VM''s NIC for a specific destination IP address and the result returns ''None'' as the next hop type. What does this most likely indicate?',
        'Correct: The Next hop tool retrieves the next hop type and IP address for a packet from a specific VM/NIC; knowing this helps determine whether traffic is directed to its intended destination — a next hop of ''None'' (as seen with the reserved private address ranges under system routing rules, or due to a misconfigured UDR) generally means traffic to that destination is being dropped rather than delivered. B) is the opposite of what ''None'' typically indicates for reachability. C) is unrelated; the VM''s NIC still has an IP, the tool is reporting on routing for a specific destination. A) incorrectly conflates routing next hop information with DNS resolution, which Next hop does not test.', 62, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('35027407-4e1e-4fc8-bc9b-b754c4adc472', 'ae81d37c-ce5d-4ce8-a4b0-bc8c9b87855c', 'Traffic to that destination is likely being dropped, possibly due to misconfigured routing (for example, a route pointing traffic to an unintended, dead-end destination)', TRUE, 1),
    ('24673b7e-ba5e-40fd-bf4f-b8d6480ed904', 'ae81d37c-ce5d-4ce8-a4b0-bc8c9b87855c', 'The destination is definitely reachable and healthy', FALSE, 2),
    ('e3a8017b-8c6a-476e-aab4-eaec84763486', 'ae81d37c-ce5d-4ce8-a4b0-bc8c9b87855c', 'The VM has no assigned private IP address', FALSE, 3),
    ('048ce65c-c01b-439d-a781-692f57afcd2d', 'ae81d37c-ce5d-4ce8-a4b0-bc8c9b87855c', 'Next hop type ''None'' always indicates a DNS resolution failure', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f4a1c79b-edfc-412c-b37d-ed199c53e5e4', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s compliance auditors need to confirm that a specific virtual machine only accepts inbound traffic from a defined set of corporate IP ranges, taking into account both the subnet-level and NIC-level NSGs that apply to it. Which Network Watcher tool provides this consolidated view?',
        'Correct: Effective security rules lets you view the effective (aggregated) security rules applied to a network interface, showing rules from the associated subnet''s NSG, the NIC''s own NSG, and the combination of both — exactly what an auditor needs to confirm the actual enforced policy. A) records raw traffic rather than aggregating rule logic. C) shows resource relationships, not the specific enforced rule set. D) is scoped to VPN gateway/connection diagnostics, unrelated to NSG rule auditing.', 63, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a82c63ad-74ce-40c1-80c8-d15ab3987ed9', 'f4a1c79b-edfc-412c-b37d-ed199c53e5e4', 'Effective security rules, which aggregates and displays all security rules applied to the network interface, the subnet it resides in, and the combination of both', TRUE, 1),
    ('f75c194f-2f0d-4cc9-bdc0-d8185f62da26', 'f4a1c79b-edfc-412c-b37d-ed199c53e5e4', 'Topology only', FALSE, 2),
    ('46f8967f-8210-4568-9ad8-8d5c24b84f41', 'f4a1c79b-edfc-412c-b37d-ed199c53e5e4', 'VPN troubleshoot only', FALSE, 3),
    ('726fcba8-32f5-4216-88c7-ca9b9e3051b0', 'f4a1c79b-edfc-412c-b37d-ed199c53e5e4', 'Packet capture only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fe2b93de-5870-43d3-b053-36eb6b7009db', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s team needs to capture and inspect raw network packets to/from a specific VM to diagnose an obscure application-layer protocol issue that other tools can''t explain. Which Network Watcher tool should they use, and how is a capture session controlled?',
        'Correct: Packet capture is a VM extension started remotely by Network Watcher through the portal, PowerShell, Azure CLI, or the REST API; it lets administrators configure filters (based on 5-tuple criteria: protocol, local/remote IP, local/remote port) to scope exactly which traffic is captured for manual inspection, and stores the data locally or in a storage blob. A) does not capture packet-level data at all; it visualizes resource topology. C) evaluates NSG rules rather than packet content. D) is incorrect; flow logs record metadata about IP traffic flows, not full packet payload contents.', 64, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7b1e018b-6562-4405-8e6c-a8e76d1e8733', 'fe2b93de-5870-43d3-b053-36eb6b7009db', 'Effective security rules, since it inspects packet payloads', FALSE, 1),
    ('e45eb3cd-bd3b-439d-a2c5-53a053e89ba2', 'fe2b93de-5870-43d3-b053-36eb6b7009db', 'Topology, since it captures all packets automatically', FALSE, 2),
    ('79a727e7-6217-400f-9b1f-916a48de0a8c', 'fe2b93de-5870-43d3-b053-36eb6b7009db', 'Flow logs only, since they always contain full packet payloads', FALSE, 3),
    ('bfcc737a-8c0e-4e5b-8963-490416f368f4', 'fe2b93de-5870-43d3-b053-36eb6b7009db', 'Packet capture, a VM extension that can be started remotely via the portal, PowerShell, Azure CLI, or REST API, with 5-tuple filters to scope what traffic is recorded', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cb30d317-bb4b-427b-bdb9-b143d18ec5b7', 'c0a48db5-6118-42a8-b205-f0966839075e', 'SINGLE_CHOICE', 'Contoso''s application team reports intermittent connectivity issues to a PaaS-hosted Azure App Service (a web app, not an IaaS VM). They ask whether Network Watcher can diagnose the root cause. What is the correct guidance?',
        'Correct: Network Watcher is not designed or intended for PaaS monitoring or web analytics; it focuses on IaaS network resources such as VMs, virtual networks, application gateways, and load balancers. For PaaS connectivity issues, the recommended step is to check Azure status or the relevant service''s health dashboard rather than relying on Network Watcher''s IaaS-focused tools. B), C), and A) all incorrectly extend Network Watcher''s IaaS-centric tools and automatic scope to PaaS scenarios, which is not how the service is designed to operate.', 65, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d15ca30a-fe25-47eb-86b5-f0117c670d15', 'cb30d317-bb4b-427b-bdb9-b143d18ec5b7', 'Network Watcher''s Packet capture tool works identically for PaaS App Service and IaaS VMs, so it should be used directly', FALSE, 1),
    ('d2037686-e2fe-413f-9f93-aeb61e243cb4', 'cb30d317-bb4b-427b-bdb9-b143d18ec5b7', 'Network Watcher is primarily intended for IaaS resources on Azure virtual networks and is not designed to diagnose PaaS service or web analytics connectivity problems; the team should check the relevant service health/status dashboard instead', TRUE, 2),
    ('49dbb4d2-9853-4900-b9d6-6969518ac5fb', 'cb30d317-bb4b-427b-bdb9-b143d18ec5b7', 'Effective security rules will directly reveal the cause of PaaS connectivity issues', FALSE, 3),
    ('6d25263f-0ad2-4560-aa8b-615f5be3963d', 'cb30d317-bb4b-427b-bdb9-b143d18ec5b7', 'Network Watcher automatically monitors all PaaS services in a subscription by default', FALSE, 4);
