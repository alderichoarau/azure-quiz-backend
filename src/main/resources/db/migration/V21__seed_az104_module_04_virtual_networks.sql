INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('bae6185b-d92e-4bcd-823a-916ad28e1ebb', '00000000-0000-0000-0000-000000000002', 'module-04-virtual-networks', 'Module 4 - Configure and Manage Virtual Networks',
        NULL, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('723911b2-82a9-43aa-9fce-5c447230fc9f', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is an Azure virtual network (VNet)?',
        'An Azure virtual network is a logical isolation of the Azure cloud dedicated to your subscription. It lets you provision and manage virtual private networks (VPNs) in Azure.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('368ca80b-80a2-4289-b204-d53ea3817cc5', '723911b2-82a9-43aa-9fce-5c447230fc9f', 'A managed DNS zone', FALSE, 1),
    ('2c8b4d5d-8b1c-4303-8c39-2aa67a572dbd', '723911b2-82a9-43aa-9fce-5c447230fc9f', 'A logical isolation of Azure cloud resources dedicated to your subscription', TRUE, 2),
    ('ce86b815-f948-4664-8f48-a4609d36a7a7', '723911b2-82a9-43aa-9fce-5c447230fc9f', 'A physical network device in an Azure datacenter', FALSE, 3),
    ('420b01bb-a2ff-40a8-aa79-dfdf1a8a8014', '723911b2-82a9-43aa-9fce-5c447230fc9f', 'A type of Azure storage account', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('16f93c52-bbbd-4f92-ba1c-9b521944940a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Each Azure virtual network is defined by its own:',
        'Each virtual network has its own CIDR block and can be linked to other virtual networks and on-premises networks, as long as the CIDR blocks of the connecting networks do not overlap.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3416b32f-f84a-423b-bdda-de337924e504', '16f93c52-bbbd-4f92-ba1c-9b521944940a', 'Active Directory forest', FALSE, 1),
    ('7e5c2ebd-0cda-47c4-9e05-a15d2ff3ebcc', '16f93c52-bbbd-4f92-ba1c-9b521944940a', 'CIDR (Classless Inter-Domain Routing) block', TRUE, 2),
    ('576c89bc-7194-41d0-878c-cb491f8bb452', '16f93c52-bbbd-4f92-ba1c-9b521944940a', 'Network security group priority list', FALSE, 3),
    ('3e2c15ef-2f2f-4fa8-9ffb-d6b54bfe271e', '16f93c52-bbbd-4f92-ba1c-9b521944940a', 'Load balancer SKU', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4f9c4703-c5a2-4900-85d1-7e9c4c04e160', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which scenario is best suited to a virtual network that is dedicated purely to private cloud connectivity, with no cross-site configuration?',
        'When a cross-site configuration isn''t required, a virtual network alone lets services and VMs communicate directly and securely with each other in the cloud; endpoint connections can still be configured for resources that need internet communication.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5ad1fe11-4d94-446a-9251-c6623a608b07', '4f9c4703-c5a2-4900-85d1-7e9c4c04e160', 'An organization requiring ExpressRoute connectivity', FALSE, 1),
    ('6831489b-f0d8-4bce-aa56-cb37fef40000', '4f9c4703-c5a2-4900-85d1-7e9c4c04e160', 'An organization requiring hybrid connectivity to mainframe systems', FALSE, 2),
    ('6e97f8be-4975-4d38-9ff1-154f5f580dfc', '4f9c4703-c5a2-4900-85d1-7e9c4c04e160', 'An organization needing a site-to-site VPN to extend an on-premises datacenter', FALSE, 3),
    ('3a149579-7d35-48ec-9ac5-f8aa8e583c0d', '4f9c4703-c5a2-4900-85d1-7e9c4c04e160', 'An organization whose VMs and services only need to communicate securely with each other in the cloud', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f83d6245-aa9a-4e79-8ae4-434c2fa1694b', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which statement about Azure subnets is correct?',
        'Each subnet contains a range of IP addresses that fall within the virtual network address space. That range must be unique within the virtual network and cannot overlap with other subnets, and it is specified using CIDR notation.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9d7c9ccd-aa5a-479b-be5e-d055d35571db', 'f83d6245-aa9a-4e79-8ae4-434c2fa1694b', 'A virtual network can only ever contain a single subnet', FALSE, 1),
    ('3166535d-3589-44e9-8fcd-90d7c2f22cd5', 'f83d6245-aa9a-4e79-8ae4-434c2fa1694b', 'A subnet''s address range can overlap with another subnet''s range in the same virtual network', FALSE, 2),
    ('83c33615-d0f6-4d7f-9200-ecff7e25f1a4', 'f83d6245-aa9a-4e79-8ae4-434c2fa1694b', 'Subnets cannot be used to improve security or manageability', FALSE, 3),
    ('b2ce3bd5-39bc-4c36-90d4-d901e5bcf325', 'f83d6245-aa9a-4e79-8ae4-434c2fa1694b', 'A subnet''s address range must be unique within the virtual network''s address space and expressed in CIDR notation', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2750f789-26d0-431a-8877-c52f84206b5a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'For the address range 192.168.1.0/24, how many IP addresses does Azure reserve per subnet, and which addresses are they?',
        'Azure reserves five addresses in every subnet: the network address (192.168.1.0), the default gateway (192.168.1.1), two addresses mapped for Azure DNS (192.168.1.2 and 192.168.1.3), and the broadcast address (192.168.1.255).', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('02b4d46e-f7fc-42cd-85d6-5b20af29f6f1', '2750f789-26d0-431a-8877-c52f84206b5a', 'Five addresses: the first four and the last one', TRUE, 1),
    ('b107bdb6-c629-4da6-946c-c5303dc3970f', '2750f789-26d0-431a-8877-c52f84206b5a', 'Zero addresses; Azure does not reserve any addresses', FALSE, 2),
    ('e09b0b93-dc2e-4c50-92db-e958be519d74', '2750f789-26d0-431a-8877-c52f84206b5a', 'Two addresses: the first and the last', FALSE, 3),
    ('8baed92b-a5f2-4683-ad0c-6e5475eafe0a', '2750f789-26d0-431a-8877-c52f84206b5a', 'All addresses ending in .1 across every subnet in the VNet', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('57bfbe46-b9c0-4728-838b-d74eb531d607', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'A company wants traffic between resources in the same virtual network to always flow through a firewall appliance instead of using Azure''s default routing between subnets. What should they configure?',
        'By default, Azure routes traffic between all subnets in a virtual network. You can override this default routing so that traffic between subnets passes through a network virtual appliance, which requires deploying resources on different subnets and configuring custom routing.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6c2a930f-f151-47ad-a22a-6819fde1f9b1', '57bfbe46-b9c0-4728-838b-d74eb531d607', 'A network security group only', FALSE, 1),
    ('57060358-16c0-411e-a332-c40c06c7bdfb', '57bfbe46-b9c0-4728-838b-d74eb531d607', 'Default Azure routing between subnets, since it cannot be changed', FALSE, 2),
    ('a4cf8e3c-d5e3-4dfd-ad2c-b9e3b34908c3', '57bfbe46-b9c0-4728-838b-d74eb531d607', 'A public IP address on each subnet', FALSE, 3),
    ('29c762c2-697b-4145-8110-2c6d78296b58', '57bfbe46-b9c0-4728-838b-d74eb531d607', 'A network virtual appliance with custom (user-defined) routing overriding the default subnet-to-subnet routing', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0e2c6284-4ece-418d-a09f-dfcb20b568a0', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'How many network security groups can be directly associated with a single subnet?',
        'You can associate zero or one network security group with each subnet in a virtual network. The same NSG, or a different one, can be associated with each subnet.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('70776ad5-e694-44b9-855f-02c82e1d42f9', '0e2c6284-4ece-418d-a09f-dfcb20b568a0', 'Unlimited', FALSE, 1),
    ('5c1faf17-a479-4735-bb89-df5e90df70c7', '0e2c6284-4ece-418d-a09f-dfcb20b568a0', 'Exactly two', FALSE, 2),
    ('352a20f0-1fd4-42e8-944b-5e4aa963a89c', '0e2c6284-4ece-418d-a09f-dfcb20b568a0', 'Zero or one', TRUE, 3),
    ('5688f3d8-f922-483a-ba3c-e22797ac854b', '0e2c6284-4ece-418d-a09f-dfcb20b568a0', 'One per address prefix in the subnet', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('63778f84-fe48-4762-9bf9-145630f10664', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the purpose of Azure Private Link in the context of subnet design?',
        'Azure Private Link provides private connectivity from a virtual network to Azure PaaS services (or customer/partner services), simplifying the network architecture and removing data exposure to the public internet.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bff07d12-5084-4a0c-952f-5c194f5bfe07', '63778f84-fe48-4762-9bf9-145630f10664', 'It replaces the need for network security groups', FALSE, 1),
    ('14285799-c69b-41d6-917f-6edfb63d9474', '63778f84-fe48-4762-9bf9-145630f10664', 'It provides private connectivity between a virtual network and Azure PaaS services, removing exposure to the public internet', TRUE, 2),
    ('e49377f6-f8c1-4a68-8ab1-221ce3272721', '63778f84-fe48-4762-9bf9-145630f10664', 'It assigns public IP addresses automatically to all subnets', FALSE, 3),
    ('54af2aac-756d-4ebc-b234-3c8a36a74fc7', '63778f84-fe48-4762-9bf9-145630f10664', 'It merges two virtual networks into a single address space', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67ae4445-54e3-485d-b90a-6c1e9aed8c2c', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'When you create a new virtual network, which of the following is a requirement?',
        'To create a virtual network, you must define its IP address space and at least one subnet, whose address range must fall within — and be unique inside — the virtual network''s address space.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b1bba0f0-bdda-449b-be98-20b7a2f47609', '67ae4445-54e3-485d-b90a-6c1e9aed8c2c', 'You must attach a VPN gateway immediately', FALSE, 1),
    ('a998756b-d84e-4950-8678-954049405820', '67ae4445-54e3-485d-b90a-6c1e9aed8c2c', 'You must define the address space as both on-premises and cloud simultaneously', FALSE, 2),
    ('4040a8f3-86fa-4a6e-9363-5b01e1a4897f', '67ae4445-54e3-485d-b90a-6c1e9aed8c2c', 'The address space must already be in use elsewhere in your organization', FALSE, 3),
    ('b5bf1825-b56a-454a-8eb8-1ec0136c52d0', '67ae4445-54e3-485d-b90a-6c1e9aed8c2c', 'You must define at least one subnet', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8658e7ca-9157-4959-8e12-9214a303ba6a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which statement about a virtual network''s IP address space is correct?',
        'When planning a virtual network, you should use an IP address space that is not already in use elsewhere in your organization, and the address space must be either local or in the cloud, but not both.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ffcb2de5-4c55-4dc8-ae86-5138304a3f18', '8658e7ca-9157-4959-8e12-9214a303ba6a', 'It can simultaneously represent both an on-premises and a cloud address range', FALSE, 1),
    ('07e5cb3c-49fc-430f-8287-d6979018e619', '8658e7ca-9157-4959-8e12-9214a303ba6a', 'It must always use a /16 CIDR block', FALSE, 2),
    ('04af45e8-486c-48f2-8538-d13b3d5b55b6', '8658e7ca-9157-4959-8e12-9214a303ba6a', 'It should be an address space not already in use elsewhere in the organization', TRUE, 3),
    ('8609db36-5860-47af-ad6a-cc2ed768e095', '8658e7ca-9157-4959-8e12-9214a303ba6a', 'It cannot be changed once any subnet has been created', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('66994319-2526-428e-88f2-9e8874319a34', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the key difference between a private IP address and a public IP address in Azure?',
        'Private IP addresses enable communication within an Azure virtual network and your on-premises network when using a VPN gateway or ExpressRoute circuit. Public IP addresses enable communication with the internet, including with public Azure services.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('12bab50d-0a58-46c8-9973-aa32fa471a54', '66994319-2526-428e-88f2-9e8874319a34', 'Public IP addresses are always free while private IP addresses are billed', FALSE, 1),
    ('59660eeb-6693-4a15-ace8-1742b613d465', '66994319-2526-428e-88f2-9e8874319a34', 'Private IP addresses can only be assigned to load balancers', FALSE, 2),
    ('03f256ff-3c3a-4c91-8db6-3f9859ab6d8e', '66994319-2526-428e-88f2-9e8874319a34', 'Private IP addresses allow communication within a virtual network and on-premises network, while public IP addresses allow communication with the internet', TRUE, 3),
    ('518852c5-e516-4a8c-a1de-1efc62b8d776', '66994319-2526-428e-88f2-9e8874319a34', 'There is no functional difference between the two', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('94c3ddc8-23c0-44f5-b55e-36e942c4df56', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'For which of the following scenarios is a static IP address typically the better choice over a dynamic one?',
        'Static IP addresses are ideal for scenarios such as DNS name resolution (where an IP change requires updating host records), IP-based security models, TLS/SSL certificates tied to an IP address, firewall rules, and role-based VMs such as domain controllers and DNS servers.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9f2256ff-3424-4af2-a3f8-0874b258d8a4', '94c3ddc8-23c0-44f5-b55e-36e942c4df56', 'A VM with no assigned services', FALSE, 1),
    ('40395770-9b0f-47a9-8226-5b503ba3224a', '94c3ddc8-23c0-44f5-b55e-36e942c4df56', 'A domain controller or DNS server role-based virtual machine', TRUE, 2),
    ('c1a83f5a-6135-4b55-b60d-2055917afd32', '94c3ddc8-23c0-44f5-b55e-36e942c4df56', 'A short-lived test VM that is deleted daily', FALSE, 3),
    ('15f0d6e1-e285-4da7-a499-eb9cd57acc93', '94c3ddc8-23c0-44f5-b55e-36e942c4df56', 'Any VM that never communicates over the network', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d60f9802-3767-4c17-9937-1a371216b6d3', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which SKU rule must a public IP address follow when used with an Azure Load Balancer?',
        'A public IP address SKU must match the SKU of the load balancer it''s used with; the tier (regional or cross-region) must also correspond. IPv4 and IPv6 addresses are billed at the same rate.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b941abac-e43c-428f-bde3-44eca7bca441', 'd60f9802-3767-4c17-9937-1a371216b6d3', 'IPv6 addresses are billed differently from IPv4 addresses', FALSE, 1),
    ('85eaecee-fe7c-44f7-960c-e19ad0c45f14', 'd60f9802-3767-4c17-9937-1a371216b6d3', 'Public IP address SKUs are irrelevant to load balancers', FALSE, 2),
    ('69306b78-3738-4871-8be4-0fb56f63f555', 'd60f9802-3767-4c17-9937-1a371216b6d3', 'The public IP address must always use the Basic SKU', FALSE, 3),
    ('8e4f11d3-e9ad-4350-8d08-7e25b606d85a', 'd60f9802-3767-4c17-9937-1a371216b6d3', 'The public IP address SKU must match the SKU of the load balancer it is used with', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('94a5f9ac-8f2d-41eb-9e3c-7424e85f2179', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which top-level resource associates a public IP address using a ''gateway IP configuration''?',
        'According to the association table, virtual machines use a network interface configuration, public load balancers/Application Gateway/Azure Firewall/Route Server/API Management use a front-end configuration, Bastion hosts use a public IP configuration, and VPN/ExpressRoute/NAT gateways use a gateway IP configuration.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ea241be1-0c1b-4cbf-9d0b-fd2aa8343fa3', '94a5f9ac-8f2d-41eb-9e3c-7424e85f2179', 'A virtual machine', FALSE, 1),
    ('27436b01-26cd-4cb4-b984-2bf5dc9634f4', '94a5f9ac-8f2d-41eb-9e3c-7424e85f2179', 'A VPN, ExpressRoute, or NAT virtual network gateway', TRUE, 2),
    ('eb93b237-3f4d-4c09-ac23-14fea1d954a6', '94a5f9ac-8f2d-41eb-9e3c-7424e85f2179', 'A Bastion host', FALSE, 3),
    ('3595b249-8c6a-4d34-8073-c6175d60afd0', '94a5f9ac-8f2d-41eb-9e3c-7424e85f2179', 'A public load balancer', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cc524400-59fc-4f84-85e6-45700e82f7ee', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'By default, how does Azure allocate a private IP address to a new virtual machine?',
        'Dynamic allocation is the default method: Azure assigns the next available unassigned or unreserved IP address in the address range of the subnet where the resource is deployed. Static allocation instead lets you choose and assign any available address yourself.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9a514fdf-490e-4762-8123-005e59867417', 'cc524400-59fc-4f84-85e6-45700e82f7ee', 'Dynamically, assigning the next available unassigned or unreserved address in the subnet''s range', TRUE, 1),
    ('efa223cd-4956-4270-a098-a3a4ee4515e6', 'cc524400-59fc-4f84-85e6-45700e82f7ee', 'Statically, always starting at the first address in the subnet', FALSE, 2),
    ('da50c42d-cc02-4f28-85d3-1959bb1ebd09', 'cc524400-59fc-4f84-85e6-45700e82f7ee', 'It requires manual selection every time; there is no default', FALSE, 3),
    ('fab4eb59-30ca-43a7-99f5-005aa53ac069', 'cc524400-59fc-4f84-85e6-45700e82f7ee', 'Randomly, from any subnet in the virtual network regardless of the VM''s own subnet', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1c994fd5-07ad-4240-93d5-39d777caeb74', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the primary purpose of a network security group (NSG) in Azure?',
        'A network security group contains a list of security rules that allow or deny inbound and outbound network traffic, and it can be associated with subnets or network interfaces to limit traffic to resources in a virtual network.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('83ba6240-2b81-4aa0-9072-bab665f0047e', '1c994fd5-07ad-4240-93d5-39d777caeb74', 'To peer two virtual networks together', FALSE, 1),
    ('24a1f5fb-b1c8-47b2-80d8-3e374f1cbdc4', '1c994fd5-07ad-4240-93d5-39d777caeb74', 'To load-balance traffic across multiple virtual machines', FALSE, 2),
    ('8d211a02-c694-471e-85c6-cc757aabd32d', '1c994fd5-07ad-4240-93d5-39d777caeb74', 'To filter network traffic to and from Azure resources using a list of security rules that allow or deny traffic', TRUE, 3),
    ('7ffbeb1c-032b-4246-aba3-c5fc3610b8fd', '1c994fd5-07ad-4240-93d5-39d777caeb74', 'To provide DNS resolution for a virtual network', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('448af5a3-7302-4d4a-8740-382b9a44a479', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'To which resources can a network security group be associated?',
        'A network security group can be associated with a subnet or with a network interface, and the same NSG can be associated multiple times across different resources.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('79d69576-d7c4-4ac2-8130-499f0db777ad', '448af5a3-7302-4d4a-8740-382b9a44a479', 'To a subnet or to a network interface', TRUE, 1),
    ('2e9caddf-b421-4896-be78-6e14109db942', '448af5a3-7302-4d4a-8740-382b9a44a479', 'Only to a subnet', FALSE, 2),
    ('9add148a-b390-4a3f-89b4-a2ec9a985ce2', '448af5a3-7302-4d4a-8740-382b9a44a479', 'Only to a virtual network as a whole', FALSE, 3),
    ('87d57a6b-50bd-41d8-9bfd-213b65b5bd98', '448af5a3-7302-4d4a-8740-382b9a44a479', 'Only to a network interface', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('89dad85d-dc1b-4ae7-9590-57a8b12a7a8d', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is a subnet that uses an NSG to buffer resources from the internet commonly called?',
        'You can assign network security groups to a subnet to create a filtered, protected subnet — also called a perimeter network or DMZ — that acts as a buffer between resources in your virtual network and the internet.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('77695ac3-2628-44f3-9530-9d212b8f6af2', '89dad85d-dc1b-4ae7-9590-57a8b12a7a8d', 'A spoke subnet', FALSE, 1),
    ('7ce6ae16-2ba8-4fa3-bbf0-e4ee8fecf4fc', '89dad85d-dc1b-4ae7-9590-57a8b12a7a8d', 'A gateway subnet', FALSE, 2),
    ('a9ce5644-f337-4476-84ee-3c126516a148', '89dad85d-dc1b-4ae7-9590-57a8b12a7a8d', 'A perimeter or DMZ (demilitarized zone) subnet', TRUE, 3),
    ('3b628f5d-5549-4038-957e-4eb17b9d514d', '89dad85d-dc1b-4ae7-9590-57a8b12a7a8d', 'A hub subnet', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('73f89a2d-8576-4419-90eb-06807320d158', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is one of the default security rules Azure automatically creates in every new network security group?',
        'Azure creates several default security rules within each NSG for inbound and outbound traffic, examples of which include DenyAllInbound and AllowInternetOutbound.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4dfc817b-31be-45a7-adbd-4de55dd123e1', '73f89a2d-8576-4419-90eb-06807320d158', 'AllowAllFromAnySource', FALSE, 1),
    ('18d7537a-356f-4058-abe1-c69795ae7c24', '73f89a2d-8576-4419-90eb-06807320d158', 'AllowAllInbound', FALSE, 2),
    ('1e02f69d-debf-4214-9614-7590f5a69a69', '73f89a2d-8576-4419-90eb-06807320d158', 'DenyAllInbound', TRUE, 3),
    ('afab5483-c566-4df8-8a7e-01cf02836093', '73f89a2d-8576-4419-90eb-06807320d158', 'DenyInternetOutbound', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b8d69f38-0ee1-4260-8fe3-040be66889aa', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Can you delete the default security rules of a network security group?',
        'You cannot delete the default security rules, but you can override one by creating a new security rule with a higher priority setting (a lower numeric value) within the NSG.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('153310ba-f896-4a9b-b388-a29da4b59a69', 'b8d69f38-0ee1-4260-8fe3-040be66889aa', 'Yes, they can be deleted like any custom rule', FALSE, 1),
    ('6f4f390b-0f92-4e4a-96cd-c27a9c9497ff', 'b8d69f38-0ee1-4260-8fe3-040be66889aa', 'Only Global Administrators can delete them', FALSE, 2),
    ('738f20d6-29b0-47d0-be10-6f6f233c79c8', 'b8d69f38-0ee1-4260-8fe3-040be66889aa', 'They are automatically deleted after 90 days', FALSE, 3),
    ('c4a3aba6-99c4-4c27-9ae0-42211ed66242', 'b8d69f38-0ee1-4260-8fe3-040be66889aa', 'No, but you can override a default rule by creating another rule with a higher priority (lower priority number)', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('18ccc791-5257-4188-bede-6f8c96fdc770', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What value range is used for the priority setting of a network security group rule?',
        'A priority value between 100 and 4096 must be assigned to each security rule, and it must be unique among all security rules within the network security group. The lower the value, the higher the priority in processing order.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('21b514a4-fe40-45ea-a197-2e8b14aba71e', '18ccc791-5257-4188-bede-6f8c96fdc770', '1 to 1000000', FALSE, 1),
    ('51885220-86fe-4481-af49-f5495d98aa40', '18ccc791-5257-4188-bede-6f8c96fdc770', '100 to 4096', TRUE, 2),
    ('c15fdaf5-7497-4d88-a484-8f38f137d884', '18ccc791-5257-4188-bede-6f8c96fdc770', '0 to 65535', FALSE, 3),
    ('ba47eb2a-519e-4da8-b96f-100d74f4d30e', '18ccc791-5257-4188-bede-6f8c96fdc770', '1 to 10', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('771b8d1a-f8b1-464a-b506-1d4cc28071b5', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'By default, what do the default inbound security rules of an NSG allow?',
        'Azure defines three default inbound security rules that deny all inbound traffic except traffic originating from the virtual network and from Azure load balancers.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('19d10164-24fb-4af6-8211-8b081e664989', '771b8d1a-f8b1-464a-b506-1d4cc28071b5', 'Traffic only on TCP port 443', FALSE, 1),
    ('a94dcbc4-6a1d-4859-9b06-757ac28345e7', '771b8d1a-f8b1-464a-b506-1d4cc28071b5', 'All traffic from the internet', FALSE, 2),
    ('2d167944-9558-4ff8-8bde-a3a44a8db333', '771b8d1a-f8b1-464a-b506-1d4cc28071b5', 'No traffic at all, including from within the virtual network', FALSE, 3),
    ('c7f65d14-2137-427c-84bb-73e33e3361d7', '771b8d1a-f8b1-464a-b506-1d4cc28071b5', 'Traffic only from the virtual network and from Azure load balancers, denying everything else', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b9c880f1-c729-4950-8584-c98e4d7c0c51', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'For inbound traffic, in what order does Azure process the network security group rules that apply to a virtual machine?',
        'For inbound traffic, Azure processes the security rules of the network security group associated with the subnet first, then those associated with the network interface. For outbound traffic, the process is reversed.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('36f71718-f4c1-48e7-a330-8100cfe9816f', 'b9c880f1-c729-4950-8584-c98e4d7c0c51', 'Subnet NSG rules first, then network interface NSG rules', TRUE, 1),
    ('e2cbb32b-dea9-4402-8c4f-fbac66909eca', 'b9c880f1-c729-4950-8584-c98e4d7c0c51', 'Network interface NSG rules first, then subnet NSG rules', FALSE, 2),
    ('aa2a2f52-9929-4c78-897b-250c968aaca9', 'b9c880f1-c729-4950-8584-c98e4d7c0c51', 'Only the subnet NSG rules are ever evaluated', FALSE, 3),
    ('5d5ae0eb-9347-4743-83fd-e5960fb105c4', 'b9c880f1-c729-4950-8584-c98e4d7c0c51', 'Both are evaluated simultaneously with no defined order', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('99bfa06e-c7fb-48cd-aa4c-419f50422a66', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'According to good practice for rule priority numbering, why should you leave ''gaps'' such as 100, 200, 300 between priority values?',
        'Leaving gaps in the priority numbering (for example, 100, 200, 300) lets you add new rules later without needing to modify the priority of your existing rules.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('400bcdb3-0f09-4406-b1e6-8cd4bd504f7c', '99bfa06e-c7fb-48cd-aa4c-419f50422a66', 'Gaps automatically improve network throughput', FALSE, 1),
    ('be764fcf-46a1-4c4d-813c-56a595df75f2', '99bfa06e-c7fb-48cd-aa4c-419f50422a66', 'Gaps disable the default security rules', FALSE, 2),
    ('47477aae-9936-45d6-a309-ad201b65fbe4', '99bfa06e-c7fb-48cd-aa4c-419f50422a66', 'Gaps let you insert new rules later without having to renumber existing rules', TRUE, 3),
    ('25691d64-9ff3-4439-b8cb-358b8e05f28c', '99bfa06e-c7fb-48cd-aa4c-419f50422a66', 'Gaps are required by Azure and rules will fail validation without them', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0860cbc2-4be1-499e-aad2-b1f00c3847b5', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Azure tool lets you view the aggregated, effective security rules that actually apply to a virtual machine, subnet, or network interface?',
        'When multiple network security groups apply and it''s unclear which rules take effect, you can use the Effective Security Rules link in the Azure portal, which is backed by Network Watcher, to check the rules actually applied to your resources.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1d5273b2-9e64-48f0-a13d-202c0fa88ed9', '0860cbc2-4be1-499e-aad2-b1f00c3847b5', 'Azure Advisor', FALSE, 1),
    ('e4fa0fc2-5fdd-4497-89e5-00e9ccc3ff53', '0860cbc2-4be1-499e-aad2-b1f00c3847b5', 'Azure Cost Management', FALSE, 2),
    ('47d83ea9-9fb5-4b8b-aae7-912850a6ab23', '0860cbc2-4be1-499e-aad2-b1f00c3847b5', 'The Effective Security Rules link in the Azure portal (backed by Network Watcher)', TRUE, 3),
    ('8361fce2-bcd1-445d-a530-22867435f79f', '0860cbc2-4be1-499e-aad2-b1f00c3847b5', 'Azure Policy compliance dashboard', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6283ae5a-1357-405c-aadc-8ff0c86e1284', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which of the following is a valid value for the ''Source'' or ''Destination'' field of a network security rule?',
        'The source filter (and similarly the destination filter) can be any resource, an IP address range, an application security group, or a default tag.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('73de906d-bc7a-4ba5-af89-a0eb1fcc05dd', '6283ae5a-1357-405c-aadc-8ff0c86e1284', 'Only a specific IP address range', FALSE, 1),
    ('bb261353-88c3-4532-9088-979eb56413f3', '6283ae5a-1357-405c-aadc-8ff0c86e1284', 'Any, an IP address range, a service tag, or an application security group', TRUE, 2),
    ('50a9d537-66ee-4ef5-876c-b429c589057a', '6283ae5a-1357-405c-aadc-8ff0c86e1284', 'Only ''Any''', FALSE, 3),
    ('6447098a-2546-4b67-9a32-e2ab9d6708c1', '6283ae5a-1357-405c-aadc-8ff0c86e1284', 'A subscription ID', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ed2e3614-1497-4dd0-8bb5-42a20f944fd2', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the benefit of an ''augmented'' security rule in a network security group?',
        'Augmented security rules let a single NSG rule combine multiple IP addresses, multiple port ranges, and a mix of service tags, application security groups, and IP addresses in the source, destination, and service fields — reducing the total number of rules needed.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('66a67a8b-85de-4d83-86ea-e752d62e272a', 'ed2e3614-1497-4dd0-8bb5-42a20f944fd2', 'It allows multiple IP addresses, multiple ports, and service tags to be combined in a single rule, reducing the total number of rules needed', TRUE, 1),
    ('a8577ad4-9649-4069-a294-084af862cd1e', 'ed2e3614-1497-4dd0-8bb5-42a20f944fd2', 'It forces all traffic through a network virtual appliance', FALSE, 2),
    ('f89f93b9-cb0c-485b-9330-95f7110d9331', 'ed2e3614-1497-4dd0-8bb5-42a20f944fd2', 'It removes the need for a priority value', FALSE, 3),
    ('6b0ce8d1-734a-400d-b8de-fd403013519e', 'ed2e3614-1497-4dd0-8bb5-42a20f944fd2', 'It automatically encrypts all traffic', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9adef4cb-459d-4451-9a1e-aa7b84756406', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is an application security group (ASG) used for?',
        'Application security groups let you logically group virtual machines by workload (for example, web servers or application servers) and then use that group as the source or destination in NSG security rules, instead of using individual IP addresses.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d91d1698-ddab-4fc3-9f00-3ad1ea1c77a5', '9adef4cb-459d-4451-9a1e-aa7b84756406', 'To assign public IP addresses automatically', FALSE, 1),
    ('50bf54ba-e5ee-455a-84f2-98b3a9394f77', '9adef4cb-459d-4451-9a1e-aa7b84756406', 'To replace network security groups entirely', FALSE, 2),
    ('f1b96041-890c-4b74-be18-ea4c2cec5b3a', '9adef4cb-459d-4451-9a1e-aa7b84756406', 'To configure DNS records for an application', FALSE, 3),
    ('9e1f5ec9-7b69-497f-9463-0e382e809c9a', '9adef4cb-459d-4451-9a1e-aa7b84756406', 'To logically group virtual machines by workload and use that grouping as the source or destination in NSG rules', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ed47b1fc-e490-4949-9358-b6fd1fa4409e', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'In a scenario with web servers and application servers each placed in an application security group, which is a valid way to allow only the web tier to reach the app tier over SQL (port 1433), while denying HTTP/HTTPS to the app tier from anywhere?',
        'Combining a rule that allows the web-server ASG to reach the app-server ASG on the SQL port, with a rule that denies HTTP/HTTPS access to the app-server ASG from anywhere, ensures only web servers can reach the database tier, protecting it from external attacks.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('06aaea9a-a642-4461-8a48-bdc94f07d448', 'ed47b1fc-e490-4949-9358-b6fd1fa4409e', 'Assign a public IP address directly to each application server', FALSE, 1),
    ('65b52773-d636-448d-9fbe-75e33e328e2c', 'ed47b1fc-e490-4949-9358-b6fd1fa4409e', 'Delete the default DenyAllInbound rule', FALSE, 2),
    ('84448d64-40c2-477d-8987-580eb604f94a', 'ed47b1fc-e490-4949-9358-b6fd1fa4409e', 'Create a single rule that allows all traffic from the internet to both ASGs', FALSE, 3),
    ('c3264b4b-1fd6-446e-8e19-50d540ba519b', 'ed47b1fc-e490-4949-9358-b6fd1fa4409e', 'Create one rule allowing web-server ASG to app-server ASG on port 1433, and another rule with higher priority denying HTTP/HTTPS access to the app-server ASG from any source', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('97dba70a-02ea-48af-b5a8-9dc7a7a6c67d', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is one advantage of using application security groups instead of managing rules by individual IP address?',
        'With application security groups, you don''t need to maintain explicit IP addresses as your configuration changes over time — new security rules are automatically applied to all virtual machines in the specified application security group.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6db7c701-46b2-449c-a956-20dfc5ea45fa', '97dba70a-02ea-48af-b5a8-9dc7a7a6c67d', 'You no longer need to maintain IP addresses as the number of VMs changes, since new rules automatically apply to all VMs in the designated ASG', TRUE, 1),
    ('ca80742b-79ac-46a4-81f2-5656dfe9caa6', '97dba70a-02ea-48af-b5a8-9dc7a7a6c67d', 'ASGs only work with a single virtual network peering configuration', FALSE, 2),
    ('7bd79e25-e718-43e1-aabd-a7776c2235ab', '97dba70a-02ea-48af-b5a8-9dc7a7a6c67d', 'ASGs automatically assign static public IP addresses to every VM', FALSE, 3),
    ('f9ede160-a87f-446e-9773-d22dadab0b5e', '97dba70a-02ea-48af-b5a8-9dc7a7a6c67d', 'ASGs eliminate the need for any security rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a5c963ac-d0cd-4f97-9f4e-d69df1fb2d44', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the role of DNS (Domain Name System)?',
        'DNS is a protocol within the TCP/IP standard that plays a critical role in translating human-readable domain names into an IP address that computers and network devices use to identify and route requests.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7db5e337-8fb4-41c4-a52a-ee1f282e1e85', 'a5c963ac-d0cd-4f97-9f4e-d69df1fb2d44', 'It translates human-readable domain names, such as www.wideworldimports.com, into IP addresses', TRUE, 1),
    ('653924a9-90d4-4f31-a35e-faaa957c8c73', 'a5c963ac-d0cd-4f97-9f4e-d69df1fb2d44', 'It load-balances traffic between regions', FALSE, 2),
    ('3775bd59-17fc-4b37-b3b5-4ac7e0af4f04', 'a5c963ac-d0cd-4f97-9f4e-d69df1fb2d44', 'It encrypts network traffic between virtual machines', FALSE, 3),
    ('64dcff04-cd41-4099-8139-65e13469846f', 'a5c963ac-d0cd-4f97-9f4e-d69df1fb2d44', 'It manages virtual network peering', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cce19b98-3c91-4d3a-8892-4a05e7951b29', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Can you register a brand-new domain name (such as contoso.com) directly through Azure DNS?',
        'You cannot use Azure DNS to register a domain name — it must be registered with a third-party domain registrar. Azure DNS then hosts and manages that domain''s DNS zone and records.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('40072acb-d5ff-461b-9c61-03562735ab1f', 'cce19b98-3c91-4d3a-8892-4a05e7951b29', 'Only if you have a Microsoft Entra ID P2 license', FALSE, 1),
    ('29ccd772-bc62-4d57-94fd-c7f4c50a6bcd', 'cce19b98-3c91-4d3a-8892-4a05e7951b29', 'Yes, Azure DNS is also a domain registrar', FALSE, 2),
    ('21ddaf98-f992-44ed-af80-be10bff978c7', 'cce19b98-3c91-4d3a-8892-4a05e7951b29', 'Only for .com domains', FALSE, 3),
    ('bb2d2b71-c37e-4510-a4fb-bc07bcbf1e99', 'cce19b98-3c91-4d3a-8892-4a05e7951b29', 'No, you must register the domain with a third-party domain registrar; Azure DNS only hosts and manages the DNS records', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dabcf2c6-ac45-4770-ab8d-65776bab71c6', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which DNS record type maps a domain or host name directly to an IPv4 address, and is the most common record type?',
        'The A record is the host record and the most commonly used DNS record type; it maps a domain or host name to an IPv4 address (AAAA is used for IPv6).', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1b139837-c4e8-458f-a454-65892df081cc', 'dabcf2c6-ac45-4770-ab8d-65776bab71c6', 'MX', FALSE, 1),
    ('650bdeb7-f43e-41d4-ae03-cfe8407463ba', 'dabcf2c6-ac45-4770-ab8d-65776bab71c6', 'CNAME', FALSE, 2),
    ('90e59ab0-d929-4951-8254-5120f0d9e801', 'dabcf2c6-ac45-4770-ab8d-65776bab71c6', 'TXT', FALSE, 3),
    ('37c6b00e-05c7-40f3-a825-c24ef78cc1a9', 'dabcf2c6-ac45-4770-ab8d-65776bab71c6', 'A', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fc18791c-14fd-4d3d-a2dc-33b423e9f35f', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which DNS record type would you use so that both wideworldimports.com and www.wideworldimports.com resolve to the same address?',
        'CNAME is a canonical name record used to alias one domain name to another. If you have different domain names that should all resolve to the same website, you use a CNAME record.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b8535fe4-e0ad-4097-817e-cb99cf9f1821', 'fc18791c-14fd-4d3d-a2dc-33b423e9f35f', 'An NS record', FALSE, 1),
    ('eabab31c-5e78-47b0-a4e5-93a14fde4998', 'fc18791c-14fd-4d3d-a2dc-33b423e9f35f', 'A CNAME (canonical name) record', TRUE, 2),
    ('294b71b4-e84c-4ebd-87fc-be2409354563', 'fc18791c-14fd-4d3d-a2dc-33b423e9f35f', 'An SOA record', FALSE, 3),
    ('1a4d0e82-80d4-4cc9-8ba8-5328508ca3d8', 'fc18791c-14fd-4d3d-a2dc-33b423e9f35f', 'A TXT record', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f42e5b0c-32c6-49f9-af72-074d5c899f3f', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which DNS record type do Azure and Microsoft 365 typically use to verify domain ownership?',
        'The TXT record is used to associate arbitrary text strings with a domain name; Azure and Microsoft 365 use TXT records to verify domain ownership.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9b71d867-1170-4604-abf0-09b3f80a6201', 'f42e5b0c-32c6-49f9-af72-074d5c899f3f', 'An SRV record', FALSE, 1),
    ('213343d8-082e-4ad9-a4f4-8a78256dd735', 'f42e5b0c-32c6-49f9-af72-074d5c899f3f', 'An MX record', FALSE, 2),
    ('3f39cbbb-7128-40a6-942e-4e06479af755', 'f42e5b0c-32c6-49f9-af72-074d5c899f3f', 'A CNAME record', FALSE, 3),
    ('22fba694-7001-4732-a43b-3ea9f7267d5f', 'f42e5b0c-32c6-49f9-af72-074d5c899f3f', 'A TXT record', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8d5ab44d-b97e-49b3-ba2f-f2ffa81fbe1d', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which two record types are created automatically when you create a DNS zone in Azure, and cannot support record sets?',
        'The SOA (Start of Authority) and NS (name server) records are created automatically when you set up an Azure DNS zone. Of all record types, SOA and CNAME records cannot contain record sets (multiple values).', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('600c726c-c446-45dc-b936-adc55cb9ade2', '8d5ab44d-b97e-49b3-ba2f-f2ffa81fbe1d', 'SRV and CAA', FALSE, 1),
    ('d4e9d341-810e-41dd-a1b4-0da780ceea14', '8d5ab44d-b97e-49b3-ba2f-f2ffa81fbe1d', 'A and CNAME', FALSE, 2),
    ('289680fe-af9d-4fc3-8a4f-7abc225f60b2', '8d5ab44d-b97e-49b3-ba2f-f2ffa81fbe1d', 'MX and TXT', FALSE, 3),
    ('48496930-6e2e-4391-8801-ac4a6fd9a433', '8d5ab44d-b97e-49b3-ba2f-f2ffa81fbe1d', 'SOA and NS', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ba7be1a4-a7b2-478a-a388-1210f01a5f8a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'After creating a DNS zone for wideworldimports.com in Azure, what is the required next step to make Azure DNS authoritative for the domain?',
        'a process called domain delegation — After creating the zone, you retrieve the name server information from the Azure DNS zone''s NS record and update it at the domain registrar so it points to the Azure DNS name servers — this update is called domain delegation, and all four provided Azure DNS name servers must be used.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2f516c97-8fd2-463f-984c-bab9fba201da', 'ba7be1a4-a7b2-478a-a388-1210f01a5f8a', 'Immediately create a private DNS zone instead', FALSE, 1),
    ('289dcb03-9612-4224-b8fc-16c62715c2f3', 'ba7be1a4-a7b2-478a-a388-1210f01a5f8a', 'Delete the SOA record', FALSE, 2),
    ('41793ac0-6e12-4e55-916a-5f430a8b5f88', 'ba7be1a4-a7b2-478a-a388-1210f01a5f8a', 'Retrieve the Azure DNS name server (NS) information and update it at the third-party domain registrar — a process called domain delegation', TRUE, 3),
    ('f6ee8b2d-a78b-4aeb-a0b9-00692b67a6ce', 'ba7be1a4-a7b2-478a-a388-1210f01a5f8a', 'Configure a network security group on the DNS zone', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('76d55bb3-5c6f-4af6-ba42-1a61719c8d08', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which command-line tool and record type can you use to verify that domain delegation to Azure DNS succeeded?',
        'To verify delegation succeeded, you query the SOA record — which is automatically created when the zone is set up and represents your domain as the reference point for other DNS servers — for example using: nslookup -type=SOA wideworldimports.com.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2e5a8306-4adc-400c-8b3e-f3709398a259', '76d55bb3-5c6f-4af6-ba42-1a61719c8d08', 'ipconfig, checking the CNAME record', FALSE, 1),
    ('2fa8bc34-85ae-4688-8aba-60c8f928e08d', '76d55bb3-5c6f-4af6-ba42-1a61719c8d08', 'tracert, checking the MX record', FALSE, 2),
    ('80cd4abe-b822-4802-a395-cbf92f7247c3', '76d55bb3-5c6f-4af6-ba42-1a61719c8d08', 'nslookup, querying the SOA (Start of Authority) record', TRUE, 3),
    ('03dd78ac-fe3a-4be6-a9cc-01cf30c84e79', '76d55bb3-5c6f-4af6-ba42-1a61719c8d08', 'ping, checking the A record', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('99e75577-15ef-49a2-8970-cd0b5bed1bde', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What are the four pieces of information required to create an A record in Azure DNS?',
        'Each A record requires a Name (the custom subdomain, e.g., webserver1), a Type (A), a TTL (time to live, in seconds, for caching), and the IP address of the server the record should point to.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b491925d-f65e-42c8-b3ff-5cc77ec11ba1', '99e75577-15ef-49a2-8970-cd0b5bed1bde', 'Name, Type, TTL, and IP address', TRUE, 1),
    ('4375eaaa-97ca-4fc2-8bc3-2a0dc43b1b40', '99e75577-15ef-49a2-8970-cd0b5bed1bde', 'Subscription, resource group, region, and pricing tier', FALSE, 2),
    ('74b11dc5-e982-425b-ba0b-07506f30b6b3', '99e75577-15ef-49a2-8970-cd0b5bed1bde', 'Username, password, tenant ID, and client secret', FALSE, 3),
    ('cf25ad2e-04a8-4a9b-9c74-55abf0ab769f', '99e75577-15ef-49a2-8970-cd0b5bed1bde', 'Priority, weight, port, and target', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a80cfd2a-7867-4e15-a769-f147bd81fd86', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is a key benefit of using a private DNS zone in Azure?',
        'Private DNS zones are not visible on the internet and don''t require a domain registrar. They enable name resolution for VMs within a virtual network and between virtual networks, without needing to build a custom DNS solution.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('30b78230-6aca-4e98-8f2a-129bbd8f95a4', 'a80cfd2a-7867-4e15-a769-f147bd81fd86', 'It allows name resolution for virtual machines within a virtual network, and between peered virtual networks, without a custom DNS solution', TRUE, 1),
    ('9da51835-8ad7-453b-a491-75111ab958d5', 'a80cfd2a-7867-4e15-a769-f147bd81fd86', 'It provides free load balancing', FALSE, 2),
    ('8f7772b5-0d62-43ff-9023-90da95b2378c', 'a80cfd2a-7867-4e15-a769-f147bd81fd86', 'It publicly registers a domain name automatically', FALSE, 3),
    ('62452219-0e2b-4a8f-80e2-38c6ea1addea', 'a80cfd2a-7867-4e15-a769-f147bd81fd86', 'It removes the need for TLS/SSL certificates', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9cfa8b70-b0f3-49a6-9e01-a93d9b0887fd', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What must you do to enable name resolution for a virtual network using a private DNS zone?',
        'To link a private DNS zone to a virtual network, you create a virtual network link. You add a virtual network link record for each virtual network that requires private name resolution support.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c5f7fd41-40a4-4a08-85a1-5812a69a80b1', '9cfa8b70-b0f3-49a6-9e01-a93d9b0887fd', 'Configure a network security group on the private zone', FALSE, 1),
    ('28750749-b82f-4ccd-9f4a-c4d82fca55c4', '9cfa8b70-b0f3-49a6-9e01-a93d9b0887fd', 'Create a virtual network link between the private DNS zone and each virtual network that requires resolution', TRUE, 2),
    ('139b4948-63ee-442c-983c-d0b360f2df9f', '9cfa8b70-b0f3-49a6-9e01-a93d9b0887fd', 'Nothing — private DNS zones apply to all virtual networks in the subscription automatically', FALSE, 3),
    ('ecd97c11-9eb2-4eff-9e50-15920af5abdd', '9cfa8b70-b0f3-49a6-9e01-a93d9b0887fd', 'Delete the public DNS zone', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bb286dad-c68f-4996-9ba9-537ed5cc01ba', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the ''zone apex'' (or ''root apex'') of a domain such as wideworldimports.com?',
        'The zone apex, also called the root apex, represents the top-most level of your domain — in this case, wideworldimports.com — and is generally represented by the @ symbol in your DNS zone records.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('402ada6d-31d9-4ed3-9764-3dca5b979865', 'bb286dad-c68f-4996-9ba9-537ed5cc01ba', 'The name server (NS) record only', FALSE, 1),
    ('f61a0592-1071-4f76-9721-1f0456dc6087', 'bb286dad-c68f-4996-9ba9-537ed5cc01ba', 'Any subdomain, such as www.wideworldimports.com', FALSE, 2),
    ('f7293341-f1a1-40db-9483-8a22e494560b', 'bb286dad-c68f-4996-9ba9-537ed5cc01ba', 'An MX record used exclusively for email', FALSE, 3),
    ('b48465e0-760c-47be-b19f-6eb0175238a8', 'bb286dad-c68f-4996-9ba9-537ed5cc01ba', 'The top-most level of the domain, typically represented by the @ symbol in zone records', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d85059c1-e62d-4065-8f43-6fcd42830aa8', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Why can''t you use a CNAME record to point the zone apex (root domain) directly at an Azure Traffic Manager profile or Load Balancer?',
        'CNAME records that you might use for a Traffic Manager profile or a CDN endpoint are not supported at the zone apex. However, alias records are supported at the zone apex, which is why Azure provides them.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8979af54-dc62-4e5d-9458-0fe29591ddf5', 'd85059c1-e62d-4065-8f43-6fcd42830aa8', 'There is no such limitation; CNAME works fine at the apex', FALSE, 1),
    ('8c4d5559-7fc7-46db-8bf1-0dfb6d95ac7c', 'd85059c1-e62d-4065-8f43-6fcd42830aa8', 'CNAME records are not supported at the zone apex level', TRUE, 2),
    ('455a8a8d-a3de-47dc-9053-31441daf8d66', 'd85059c1-e62d-4065-8f43-6fcd42830aa8', 'CNAME records are too slow to resolve', FALSE, 3),
    ('99c07903-67c1-4d01-818d-2b1abe213d93', 'd85059c1-e62d-4065-8f43-6fcd42830aa8', 'CNAME records only work with IPv6', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1463d6de-3f77-48b8-9ba0-b09f40c684ed', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which of the following Azure resources can an Azure DNS alias record point to?',
        'Alias records can reference a Traffic Manager profile, Azure CDN endpoints, a public IP resource, or a Front Door profile, and are supported for the A, AAAA, and CNAME DNS record types.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('06445aac-3d07-445b-976d-3101af597e97', '1463d6de-3f77-48b8-9ba0-b09f40c684ed', 'Only virtual machines', FALSE, 1),
    ('244372cb-6209-4be0-934d-2ecd44c2d213', '1463d6de-3f77-48b8-9ba0-b09f40c684ed', 'Only network security groups', FALSE, 2),
    ('f07693a2-8965-4087-9b71-226a07efe634', '1463d6de-3f77-48b8-9ba0-b09f40c684ed', 'A Traffic Manager profile, a CDN endpoint, a public IP resource, or a Front Door profile', TRUE, 3),
    ('78f79568-2344-4abd-8aaa-067b3f6d326b', '1463d6de-3f77-48b8-9ba0-b09f40c684ed', 'Only storage account keys', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a5e34fc9-1a01-4381-bcbe-437aedff6408', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What key advantage does an alias record provide over a standard A record when the underlying resource''s IP address can change?',
        'Alias record sets track the lifecycle of the target resource: when the underlying resource''s IP address changes, the associated DNS records are automatically refreshed, preventing dangling references and letting the zone apex point to a load balancer whose IP could change.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c910b4ef-95ce-411a-bc55-6de70ad0e473', 'a5e34fc9-1a01-4381-bcbe-437aedff6408', 'It removes the need for a DNS zone entirely', FALSE, 1),
    ('630a91d0-b821-457c-a59c-57bb0ea7756c', 'a5e34fc9-1a01-4381-bcbe-437aedff6408', 'It prevents the resource from ever changing its IP address', FALSE, 2),
    ('309608d6-c638-4254-8aca-ab91b1f9de95', 'a5e34fc9-1a01-4381-bcbe-437aedff6408', 'It automatically updates the DNS record set whenever the underlying resource''s IP address changes, preventing dangling DNS records', TRUE, 3),
    ('2cc1c2bd-b79d-42e0-8063-6110ccaf2d86', 'a5e34fc9-1a01-4381-bcbe-437aedff6408', 'It only works for private DNS zones', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2c2aaea4-7973-4b55-b836-e1c073030732', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What does Azure virtual network peering allow you to do?',
        'Virtual network peering lets you connect two Azure virtual networks seamlessly. Once peered, the two virtual networks function as one for connectivity purposes, while remaining separately managed resources.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('01402562-1eaf-41f5-a37e-752ac6745456', '2c2aaea4-7973-4b55-b836-e1c073030732', 'Seamlessly connect two Azure virtual networks so they function as one for connectivity purposes', TRUE, 1),
    ('43083288-334c-4bb1-858b-8cb159df19d2', '2c2aaea4-7973-4b55-b836-e1c073030732', 'Automatically replicate storage accounts between regions', FALSE, 2),
    ('c260ef96-a5e1-4954-9584-3d9dc6739bce', '2c2aaea4-7973-4b55-b836-e1c073030732', 'Merge two Azure subscriptions into a single subscription', FALSE, 3),
    ('9e486953-9ed3-45aa-a561-127ff76b24c4', '2c2aaea4-7973-4b55-b836-e1c073030732', 'Convert a private IP address into a public one', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('88d74f41-1474-4a48-a9cb-d7b863267672', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the difference between regional and global virtual network peering?',
        'Regional virtual network peering connects Azure virtual networks that exist in the same region, while global virtual network peering connects Azure virtual networks that exist in different regions.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('86aeb6db-c99c-42b1-b4ad-b6eefc9a753e', '88d74f41-1474-4a48-a9cb-d7b863267672', 'Regional peering connects VNets in the same region; global peering connects VNets in different regions', TRUE, 1),
    ('fb794142-3cb3-442a-9432-a00017aa9d62', '88d74f41-1474-4a48-a9cb-d7b863267672', 'Global peering only works for Azure Government cloud', FALSE, 2),
    ('36b6a4b3-d03b-4425-adaa-6daf15855403', '88d74f41-1474-4a48-a9cb-d7b863267672', 'Regional peering is free and global peering is not', FALSE, 3),
    ('4a359fc0-aa50-4e94-bb35-31e201980a8b', '88d74f41-1474-4a48-a9cb-d7b863267672', 'There is no difference; the terms are interchangeable', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ca7573a9-8c7a-47f1-9eb0-e94a160bfd61', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which of the following is NOT allowed for global virtual network peering?',
        'Global virtual network peering across different Azure Government cloud regions is not allowed. It is allowed within any Azure public cloud regions or China cloud regions, and can be created across subscriptions and even across Microsoft Entra tenants.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d1682e47-6cc1-4a41-91cb-afd689328e37', 'ca7573a9-8c7a-47f1-9eb0-e94a160bfd61', 'Peering across any regions within the China cloud', FALSE, 1),
    ('82f07c39-8d25-469e-9346-0f1eb6eefb4c', 'ca7573a9-8c7a-47f1-9eb0-e94a160bfd61', 'Peering across subscriptions and tenants', FALSE, 2),
    ('9d40f4d6-6d44-4236-afc5-37afa5b77904', 'ca7573a9-8c7a-47f1-9eb0-e94a160bfd61', 'Peering across different regions within Azure Government cloud regions', TRUE, 3),
    ('7ddfc7a8-f997-4a02-8121-f62c5d6dcd0c', 'ca7573a9-8c7a-47f1-9eb0-e94a160bfd61', 'Peering across any regions within the Azure public cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d3196fe7-63c2-4338-9b9c-ea983a2c44f6', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which benefit is directly provided by virtual network peering because traffic stays on the Microsoft Azure backbone network?',
        'When you implement Azure virtual network peering, network traffic between the peered virtual networks is private and stays on the Microsoft backbone network — no encryption, public internet connection, or gateway is required for the virtual networks to communicate.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3ce91883-7173-46f8-9aca-52691075433c', 'd3196fe7-63c2-4338-9b9c-ea983a2c44f6', 'It requires a VPN gateway for encryption', FALSE, 1),
    ('2d9ea6d6-804b-4b48-829f-8f2529b75e0c', 'd3196fe7-63c2-4338-9b9c-ea983a2c44f6', 'It doubles the bandwidth of both virtual networks automatically', FALSE, 2),
    ('4385a5d7-c09e-45b7-916a-11c72c1110e2', 'd3196fe7-63c2-4338-9b9c-ea983a2c44f6', 'Traffic between peered virtual networks is private and doesn''t require encryption, a public internet connection, or a gateway', TRUE, 3),
    ('be80e59a-9622-4622-8e4a-99ae5895295b', 'd3196fe7-63c2-4338-9b9c-ea983a2c44f6', 'It requires configuring a network virtual appliance for all traffic', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ed961d71-cf53-40b6-b1ed-28c54ab313c0', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is a firm requirement for two virtual networks to be successfully peered?',
        'Peered virtual networks must have non-overlapping IP address spaces. Peering creation fails if the address ranges overlap.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fdee49ca-dcc1-4c82-bca1-02d0f6e3a25e', 'ed961d71-cf53-40b6-b1ed-28c54ab313c0', 'They must both have a VPN gateway configured', FALSE, 1),
    ('ec31531b-2997-4bfa-9874-d19ad3662c45', 'ed961d71-cf53-40b6-b1ed-28c54ab313c0', 'They must be in the same subscription', FALSE, 2),
    ('5df02a9a-0a61-43c6-b90b-e18676fc5b59', 'ed961d71-cf53-40b6-b1ed-28c54ab313c0', 'They must use the same resource group', FALSE, 3),
    ('b238ed40-b138-4588-85c5-ff41a772383b', 'ed961d71-cf53-40b6-b1ed-28c54ab313c0', 'They must have non-overlapping IP address spaces', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('249bccdb-4c02-4492-af9f-94b0db41d6b5', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'If you need to change the address range of a virtual network that is already peered, what must you do?',
        'If you want to change a peered virtual network''s address range, you must first remove the peering, update the address space, and then reconfigure the peering.', 51, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4818dc50-6d06-4d2b-b097-c8918ed4f5d9', '249bccdb-4c02-4492-af9f-94b0db41d6b5', 'Contact Microsoft Support, as this cannot be done directly', FALSE, 1),
    ('0cf014aa-043d-4d1f-b82e-0ff5f061df83', '249bccdb-4c02-4492-af9f-94b0db41d6b5', 'Delete and recreate the entire subscription', FALSE, 2),
    ('7b1e8f3a-da9b-4ad7-a4b7-ad92c9b59a69', '249bccdb-4c02-4492-af9f-94b0db41d6b5', 'First remove the peering, then update the address space, and then reconfigure the peering', TRUE, 3),
    ('4d91943b-f647-43bc-b392-2e9caf0c28ad', '249bccdb-4c02-4492-af9f-94b0db41d6b5', 'Nothing; address ranges can be changed freely while peered', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('eda05b5d-4732-43cc-83e8-dc2d31ea1a1a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which load balancer limitation applies to resources communicating across regionally peered virtual networks?',
        'Resources in a virtual network cannot communicate with Basic Internal Load Balancer IP addresses in peered virtual networks across regions. A Standard load balancer must be used for cross-region connections.', 52, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7f9921ef-3d0c-4875-8b53-7b7143b40e14', 'eda05b5d-4732-43cc-83e8-dc2d31ea1a1a', 'Resources cannot communicate with Basic internal load balancer IP addresses across regionally peered virtual networks; a Standard load balancer must be used for cross-region connections', TRUE, 1),
    ('63c2dd14-3185-4928-8284-49a50ae68d14', 'eda05b5d-4732-43cc-83e8-dc2d31ea1a1a', 'Load balancers cannot be used at all with peered virtual networks', FALSE, 2),
    ('327257cb-ff64-46a3-9225-a45b71d7b1f2', 'eda05b5d-4732-43cc-83e8-dc2d31ea1a1a', 'Standard load balancers are unsupported with peering', FALSE, 3),
    ('c073337e-7e04-419f-8553-dfff5e827099', 'eda05b5d-4732-43cc-83e8-dc2d31ea1a1a', 'Only public load balancers work with peering', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f46cd768-fe23-47f0-bc09-fbbd5d2995e1', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Does Azure''s built-in name resolution work automatically between peered virtual networks?',
        'Azure''s built-in name resolution doesn''t work across peered virtual networks. You must configure Azure private DNS zones, or custom DNS servers, to enable name resolution between them.', 53, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('040819c5-e5e7-48b6-8f68-63299fd7cf50', 'f46cd768-fe23-47f0-bc09-fbbd5d2995e1', 'Yes, with no additional configuration required', FALSE, 1),
    ('42dbcb86-ce51-4e92-a522-7df2c5701e99', 'f46cd768-fe23-47f0-bc09-fbbd5d2995e1', 'Only if both VNets are in the same resource group', FALSE, 2),
    ('3909d62c-bc73-4dc0-86e4-733e9688869d', 'f46cd768-fe23-47f0-bc09-fbbd5d2995e1', 'Only for global peering, not regional peering', FALSE, 3),
    ('9f95a67b-cd9d-49a1-8f58-5ae179daf84d', 'f46cd768-fe23-47f0-bc09-fbbd5d2995e1', 'No; Azure private DNS zones or custom DNS servers must be configured for name resolution between peered VNets', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7bc7c927-7955-46b4-80a4-16248d693c9b', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is ''gateway transit'' in the context of virtual network peering?',
        'Gateway transit allows a peered virtual network to use the remote virtual network''s VPN gateway (instead of deploying its own) to access resources such as on-premises networks via site-to-site VPN, other virtual networks, or point-to-site clients.', 54, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2c07ccf6-9605-419b-824c-9251c2babdf7', '7bc7c927-7955-46b4-80a4-16248d693c9b', 'A DNS record type', FALSE, 1),
    ('0d494b54-4a3d-427d-b76c-fd3daee9e044', '7bc7c927-7955-46b4-80a4-16248d693c9b', 'A feature that allows a peered virtual network to use the remote virtual network''s VPN gateway to reach other resources, instead of deploying its own gateway', TRUE, 2),
    ('e18bbb66-208a-4855-b2a0-cc3303127f8a', '7bc7c927-7955-46b4-80a4-16248d693c9b', 'A method for encrypting all traffic between two peered VNets', FALSE, 3),
    ('a33d5b92-7476-430a-8341-7472766df79c', '7bc7c927-7955-46b4-80a4-16248d693c9b', 'A billing category for peering', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fd32ef6e-c2df-440b-bff8-35e3acba4153', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'How many VPN gateways can a single virtual network have?',
        'A virtual network can have only one VPN gateway. Gateway transit lets peered virtual networks share that single gateway rather than each deploying their own.', 55, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a31f3d19-ba59-4dfa-9338-140a73cb5c50', 'fd32ef6e-c2df-440b-bff8-35e3acba4153', 'Up to four', FALSE, 1),
    ('fe2cb3e4-d792-43b3-ba46-dc9aa88365ca', 'fd32ef6e-c2df-440b-bff8-35e3acba4153', 'Unlimited', FALSE, 2),
    ('bf6e47f4-4cac-4715-8ec7-1289684112fd', 'fd32ef6e-c2df-440b-bff8-35e3acba4153', 'None; VPN gateways must be external to the virtual network', FALSE, 3),
    ('f530c245-a2d3-4050-9a55-6dbe278c3325', 'fd32ef6e-c2df-440b-bff8-35e3acba4153', 'Only one', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f47d62f5-c5ef-48e6-b665-385e6289f28c', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which of the following is one of the four key peering configuration settings shown in the Azure portal?',
        'The four key portal peering settings are: Traffic to remote virtual network, Traffic forwarded from remote virtual network, Virtual network gateway or Route Server (allow gateway transit), and Remote virtual network gateway or Route Server (use remote gateway).', 56, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6aed39af-3d5f-4ec9-a4ee-b289603b4841', 'f47d62f5-c5ef-48e6-b665-385e6289f28c', 'DNS server priority', FALSE, 1),
    ('bb91dcca-1c66-410d-bc6d-ee4a5028b205', 'f47d62f5-c5ef-48e6-b665-385e6289f28c', 'Storage account replication type', FALSE, 2),
    ('07bb8ef6-e960-4cd4-a320-08f3041e9422', 'f47d62f5-c5ef-48e6-b665-385e6289f28c', 'Backup retention period', FALSE, 3),
    ('8e603b9f-7a50-459a-8204-47a09369ab71', 'f47d62f5-c5ef-48e6-b665-385e6289f28c', 'Traffic to remote virtual network', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('babe6f5a-9039-4aa3-a9f7-824be5d80337', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'After creating virtual network peering from VNet A toward VNet B, what does the peering status show for VNet A before VNet B''s side is also configured?',
        'When you create the initial peering from the first virtual network toward the second (remote) virtual network, the peering status for the first virtual network shows Initiated. The peering is not properly established until both virtual networks show Connected.', 57, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3f794818-d383-47d5-82f8-5540c3bd2eed', 'babe6f5a-9039-4aa3-a9f7-824be5d80337', 'Failed', FALSE, 1),
    ('169d32e5-45ef-4144-bbbc-adf0d8421eb8', 'babe6f5a-9039-4aa3-a9f7-824be5d80337', 'Disabled', FALSE, 2),
    ('7a8f0b12-21f3-4451-b941-b0d98cf5d65f', 'babe6f5a-9039-4aa3-a9f7-824be5d80337', 'Initiated', TRUE, 3),
    ('531dd7df-57b0-4d03-988e-1c61181dacb1', 'babe6f5a-9039-4aa3-a9f7-824be5d80337', 'Connected', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('23aa66bb-eee3-4c55-afbe-018f84d34255', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Azure RBAC role must be assigned to a user account to configure virtual network peering?',
        'To implement virtual network peering, your Azure account must be assigned the Network Contributor role, or a custom role authorized to perform the necessary peering actions.', 58, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d2a5f94a-ffc4-45db-9d73-e70b95a7ce58', '23aa66bb-eee3-4c55-afbe-018f84d34255', 'Global Administrator', FALSE, 1),
    ('bee9fc6b-9584-4fc5-8e2d-b154fc92e2ad', '23aa66bb-eee3-4c55-afbe-018f84d34255', 'Network Contributor (or a custom role with equivalent permissions)', TRUE, 2),
    ('d8c767fa-6232-4861-93d2-d3a91d667540', '23aa66bb-eee3-4c55-afbe-018f84d34255', 'Reader', FALSE, 3),
    ('757923ff-b71f-49e1-9285-d62797c563c6', '23aa66bb-eee3-4c55-afbe-018f84d34255', 'Billing Administrator', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8b5f8ae3-1ab9-42a4-9120-7b9efbd19b7a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'In a hub-and-spoke topology, what does service chaining allow you to do?',
        'Service chaining directs traffic from a virtual network to a virtual appliance or gateway by configuring user-defined routes that point to virtual machines in peered virtual networks, or to virtual network gateways, as the next hop.', 59, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1ed5dc50-fa6a-42cf-b338-a1b0ccdfa3c0', '8b5f8ae3-1ab9-42a4-9120-7b9efbd19b7a', 'Bypass network security groups on the hub virtual network', FALSE, 1),
    ('a1e5bcdb-7715-42b2-a8e2-e4596b31b9ff', '8b5f8ae3-1ab9-42a4-9120-7b9efbd19b7a', 'Automatically make peering transitive between all connected virtual networks', FALSE, 2),
    ('5b593afa-6c74-4a45-abff-2c9796c39282', '8b5f8ae3-1ab9-42a4-9120-7b9efbd19b7a', 'Direct traffic from a spoke virtual network to a network virtual appliance or gateway in the hub virtual network by configuring user-defined routes', TRUE, 3),
    ('08f87122-addb-4381-a1fb-f14bc47ae016', '8b5f8ae3-1ab9-42a4-9120-7b9efbd19b7a', 'Remove the need for user-defined routes entirely', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f5762f66-f097-4455-8caf-88ac327e6a4c', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Suppose Virtual Network A is peered with Virtual Network B, and Virtual Network B is peered with Virtual Network C, but A and C are not directly peered. What is true about communication between A and C?',
        'Virtual network peering is not transitive. Peering functionality configured between B and C does not automatically enable communication features between A and C; extending connectivity requires mechanisms like a hub-and-spoke network, user-defined routes, or service chaining.', 60, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('93c9c4cd-1a1d-4e14-a650-33d3ae3fb191', 'f5762f66-f097-4455-8caf-88ac327e6a4c', 'A and C will automatically use B''s DNS servers to communicate', FALSE, 1),
    ('9253cd8a-abc3-4a66-ba29-9724b7901303', 'f5762f66-f097-4455-8caf-88ac327e6a4c', 'A and C can communicate automatically because peering is transitive', FALSE, 2),
    ('e3738cc5-00f4-4488-82f7-7ae26cc6982a', 'f5762f66-f097-4455-8caf-88ac327e6a4c', 'A and C cannot communicate automatically; virtual network peering is not transitive, so an additional mechanism (such as a hub-and-spoke design with UDRs, or direct peering) is required', TRUE, 3),
    ('549f37cc-6191-4bb9-8a24-1e2c74d8d3b0', 'f5762f66-f097-4455-8caf-88ac327e6a4c', 'A and C can only communicate if they are in the same region', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('00ecdfc5-bbba-4515-bebb-9d5b96ca6f84', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What controls the default automatic routing of network traffic between subnets, virtual networks, and on-premises networks in Azure?',
        'Network traffic in Azure is automatically routed between subnets, virtual networks, and on-premises networks by system routes, which are assigned by default to every subnet in a virtual network.', 61, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6d0d1c9c-2b37-4ca5-a2e2-dec5cae0c79c', '00ecdfc5-bbba-4515-bebb-9d5b96ca6f84', 'DNS records', FALSE, 1),
    ('0674b1cf-fb7b-42da-9511-885c2f47d090', '00ecdfc5-bbba-4515-bebb-9d5b96ca6f84', 'Network security groups', FALSE, 2),
    ('5ffc7d5e-ff0a-4c96-8028-5da605998590', '00ecdfc5-bbba-4515-bebb-9d5b96ca6f84', 'Application security groups', FALSE, 3),
    ('b38d8f3b-34e5-49c5-84e5-c0604c6fd14a', '00ecdfc5-bbba-4515-bebb-9d5b96ca6f84', 'System routes', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('69736a32-44dc-4309-8456-fb1dd8575771', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'For the default system route with address prefix 0.0.0.0/0, what is the next hop type?',
        'The default system route for the address prefix 0.0.0.0/0 routes any address range to the internet, unless you override Azure''s default route with a custom one.', 62, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c06dedcf-06f6-49a4-89cb-9c78a795fabe', '69736a32-44dc-4309-8456-fb1dd8575771', 'None', FALSE, 1),
    ('850b2a66-a2b6-4b1a-a205-618a7161f62a', '69736a32-44dc-4309-8456-fb1dd8575771', 'Virtual network gateway', FALSE, 2),
    ('67fb503f-7e99-414c-8fde-7be6dbccc482', '69736a32-44dc-4309-8456-fb1dd8575771', 'Internet', TRUE, 3),
    ('25d3befe-44db-4b3e-9f41-140ed4e30a29', '69736a32-44dc-4309-8456-fb1dd8575771', 'Virtual network', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('230e521e-6773-4039-ac6f-830d79970724', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What happens to traffic sent to a next hop type of ''None'' in a system route (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16)?',
        'For the private address ranges 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16, and the shared address space 100.64.0.0/10, the next hop type is None, meaning traffic routed there is dropped and not forwarded outside the subnet.', 63, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('00eb3116-8371-4784-abf0-4606ff2b4325', '230e521e-6773-4039-ac6f-830d79970724', 'It is duplicated and sent to every subnet', FALSE, 1),
    ('1651b58f-214e-47b4-af6c-2581488ccc65', '230e521e-6773-4039-ac6f-830d79970724', 'It is dropped and not forwarded outside the subnet', TRUE, 2),
    ('8c6fdcf9-0f15-41a4-bd1b-9958cfdc084c', '230e521e-6773-4039-ac6f-830d79970724', 'It is automatically routed to the internet', FALSE, 3),
    ('e7f9ce5e-e51b-420a-bd84-05af40672baf', '230e521e-6773-4039-ac6f-830d79970724', 'It is sent to Azure DNS for resolution', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('80cb3235-3c38-4e19-b4cd-02e633199c97', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which of the following Azure features, when enabled, causes Azure to automatically create additional system routes beyond the default set?',
        'Azure creates additional system routes if you enable virtual network peering, service chaining, a virtual network gateway, or a virtual network service endpoint.', 64, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a727bc20-0dc5-4fc5-8c15-c14e542f81af', '80cb3235-3c38-4e19-b4cd-02e633199c97', 'Virtual network peering, service chaining, virtual network gateways, and virtual network service endpoints', TRUE, 1),
    ('70c36072-0241-40c6-a743-e276721e864a', '80cb3235-3c38-4e19-b4cd-02e633199c97', 'Assigning an Azure Policy initiative', FALSE, 2),
    ('343c741d-e873-49ea-8a7f-9a7176d6c5dd', '80cb3235-3c38-4e19-b4cd-02e633199c97', 'Creating a resource group', FALSE, 3),
    ('e3d91c77-2910-4a80-9b75-a5f99d302adf', '80cb3235-3c38-4e19-b4cd-02e633199c97', 'Enabling a resource lock', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b45fb334-dbee-4f90-a497-b8dc4e53ab15', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is a user-defined route (UDR) primarily used for?',
        'for example, through a firewall or network virtual appliance — instead of routing directly between subnets — A user-defined route is intended to override Azure''s default system routes, or to add routes to a subnet''s route table, so that traffic flows through a firewall or network virtual appliance instead of directly between subnets.', 65, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('86ec0b9c-c011-4966-b028-ecf51b853770', 'b45fb334-dbee-4f90-a497-b8dc4e53ab15', 'To assign public IP addresses to resources', FALSE, 1),
    ('c5708c70-af39-4344-89a2-c5899413d220', 'b45fb334-dbee-4f90-a497-b8dc4e53ab15', 'To automatically scale virtual machines', FALSE, 2),
    ('eb51df55-788f-4b4c-8107-c7b5b61ef231', 'b45fb334-dbee-4f90-a497-b8dc4e53ab15', 'To override Azure''s default system routes and direct traffic — for example, through a firewall or network virtual appliance — instead of routing directly between subnets', TRUE, 3),
    ('5105df22-c229-40c4-950b-57e1ebbad020', 'b45fb334-dbee-4f90-a497-b8dc4e53ab15', 'To create DNS zones', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c6fb7ddd-7185-417e-b08f-7f29764aaeaa', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which of the following is NOT a valid next hop type you can specify when creating a user-defined route?',
        'With user-defined routes, you cannot specify the next hop type VirtualNetworkServiceEndpoint, which is used to indicate virtual network peering internally. Valid next hop types include Virtual appliance, Virtual network gateway, Virtual network, Internet, and None.', 66, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6670435e-ec2d-4c65-a73a-c6ffe5734d15', 'c6fb7ddd-7185-417e-b08f-7f29764aaeaa', 'Internet', FALSE, 1),
    ('2fd0eb40-8e09-4c6f-b932-a10b4d22ccc3', 'c6fb7ddd-7185-417e-b08f-7f29764aaeaa', 'Virtual network gateway', FALSE, 2),
    ('528dd6fc-b6af-43a8-aae4-8d6b8f9a234d', 'c6fb7ddd-7185-417e-b08f-7f29764aaeaa', 'Virtual appliance', FALSE, 3),
    ('3e58a571-6e50-43de-aaa7-e0502668a02b', 'c6fb7ddd-7185-417e-b08f-7f29764aaeaa', 'VirtualNetworkServiceEndpoint', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8cfb8916-fe10-4f40-a31f-8b2f4b15e714', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is a ''service tag'' used for in the context of user-defined routes?',
        'A service tag represents a group of IP address prefixes from a given Azure service. Microsoft manages the address prefixes and automatically updates the service tag as addresses change, reducing the complexity of frequent updates to user-defined routes.', 67, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5d49cab3-9e0f-4c43-a4f7-40754ff65417', '8cfb8916-fe10-4f40-a31f-8b2f4b15e714', 'It labels resources for billing purposes only', FALSE, 1),
    ('2f7a98fc-8d72-4dcb-9888-922982a96df2', '8cfb8916-fe10-4f40-a31f-8b2f4b15e714', 'It is a required field for network security groups only, not routes', FALSE, 2),
    ('5b722054-a00e-4571-9a58-2399aaa6b575', '8cfb8916-fe10-4f40-a31f-8b2f4b15e714', 'It replaces the need for a route table entirely', FALSE, 3),
    ('fbf949f8-2c30-4bc4-9c82-e8c31944ac95', '8cfb8916-fe10-4f40-a31f-8b2f4b15e714', 'It represents a group of IP address prefixes from a given Azure service, automatically maintained and updated by Microsoft, reducing the complexity of updating UDRs', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e34ce36a-dfd5-4b58-8ff6-4dbd0fe2618f', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the Border Gateway Protocol (BGP) typically used for in Azure networking?',
        'BGP is the standard routing protocol used to exchange routing information between two or more networks; it''s commonly used to advertise on-premises routes to Azure when connected via ExpressRoute, and can also be configured for site-to-site VPN connections.', 68, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7f5e14c6-1bca-45a7-93ac-199abd7380cf', 'e34ce36a-dfd5-4b58-8ff6-4dbd0fe2618f', 'To load-balance HTTP traffic at Layer 7', FALSE, 1),
    ('8509cb31-f070-4205-be89-fe46c1765535', 'e34ce36a-dfd5-4b58-8ff6-4dbd0fe2618f', 'To exchange routes between an on-premises network gateway and an Azure virtual network gateway, such as over ExpressRoute or a site-to-site VPN connection', TRUE, 2),
    ('7ab3709d-14dd-4152-907b-a6a2a0bd06a7', 'e34ce36a-dfd5-4b58-8ff6-4dbd0fe2618f', 'To encrypt data at rest in Azure Storage', FALSE, 3),
    ('baa38034-de69-44b0-be32-03deef797dc9', 'e34ce36a-dfd5-4b58-8ff6-4dbd0fe2618f', 'To resolve DNS names to IP addresses', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('25436ed0-4911-4eb6-b352-a9610a35a5ee', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'If two available routes exist with prefixes 10.0.0.0/16 and 10.0.0.0/24 for a packet destined to 10.0.0.2, which route does Azure select?',
        'When multiple routes are available, Azure selects the route with the longest (most specific) prefix match. In this case, 10.0.0.0/24 is more specific than 10.0.0.0/16, so Azure selects it.', 69, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a7371f74-7f40-4374-bbd6-18325b1201c7', '25436ed0-4911-4eb6-b352-a9610a35a5ee', '10.0.0.0/16, because it is the shorter prefix', FALSE, 1),
    ('a2208bc9-d345-4549-9f80-a464b10a5b16', '25436ed0-4911-4eb6-b352-a9610a35a5ee', 'Both routes are used simultaneously via load balancing', FALSE, 2),
    ('13baf2a6-7600-4771-9927-edc9b7bbd55c', '25436ed0-4911-4eb6-b352-a9610a35a5ee', '10.0.0.0/24, because it offers the longest (most specific) prefix match', TRUE, 3),
    ('c1a33c50-2448-4456-a8a4-37813669a7c5', '25436ed0-4911-4eb6-b352-a9610a35a5ee', 'Neither; Azure requires you to remove the ambiguity manually first', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5fee908c-37c3-4dfb-b7bf-a29bf86195d3', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'If a user-defined route, a BGP route, and a system route all exist with the same address prefix, which route does Azure prioritize?',
        'When multiple routes contain the same address prefix, Azure selects the route based on type, in this priority order: user-defined routes, then BGP routes, then system routes.', 70, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3c3096b0-9378-425a-b10e-855b683f96c8', '5fee908c-37c3-4dfb-b7bf-a29bf86195d3', 'Azure selects randomly among routes with the same prefix', FALSE, 1),
    ('1567935a-239b-417c-a920-3757bca6d58e', '5fee908c-37c3-4dfb-b7bf-a29bf86195d3', 'System routes, then BGP routes, then user-defined routes', FALSE, 2),
    ('c024464a-84f2-4a55-b553-fcc36295dcfb', '5fee908c-37c3-4dfb-b7bf-a29bf86195d3', 'BGP routes always take priority over everything else', FALSE, 3),
    ('242d9d56-380a-4ff9-a82f-3ff0c46d3823', '5fee908c-37c3-4dfb-b7bf-a29bf86195d3', 'User-defined routes, then BGP routes, then system routes', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e4ef1a2f-3bc3-4f07-8bb4-e0bb5f5b253f', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is a network virtual appliance (NVA)?',
        'A network virtual appliance is a virtual appliance made up of layers such as a firewall, WAN optimizer, application delivery controllers, routers, load balancers, IDS/IPS, or proxies, typically deployed from vendors on the Azure Marketplace such as Cisco, Check Point, Barracuda, or SonicWall.', 71, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5019b8e8-9c2d-420e-84bc-c744225b3712', 'e4ef1a2f-3bc3-4f07-8bb4-e0bb5f5b253f', 'A virtual machine that performs network functions such as firewall, WAN optimization, routing, or intrusion detection/prevention, often available from the Azure Marketplace', TRUE, 1),
    ('6595e2be-85c2-48f7-97d5-a53a8472e7d1', 'e4ef1a2f-3bc3-4f07-8bb4-e0bb5f5b253f', 'A physical server rack installed in the customer''s own datacenter', FALSE, 2),
    ('c31cec6b-f684-403d-9ab9-070042fa9c63', 'e4ef1a2f-3bc3-4f07-8bb4-e0bb5f5b253f', 'A DNS record type', FALSE, 3),
    ('f9ffa650-a18c-4e2f-a2fa-f6d5950fc0a4', 'e4ef1a2f-3bc3-4f07-8bb4-e0bb5f5b253f', 'A billing construct used only for network security groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('14ddc964-096a-4bc0-9a09-f50ca9942c6b', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'In a microsegmentation approach using a network virtual appliance as a firewall, what must be enabled on the NVA''s network interfaces to allow it to forward traffic between subnets?',
        'You enable IP forwarding on the network interfaces of the virtual appliance so that it can forward traffic accepted on one interface out through the appropriate interface toward the correct subnet.', 72, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('25fea4b9-85e8-49f8-9dcf-edf31110f676', '14ddc964-096a-4bc0-9a09-f50ca9942c6b', 'DNS forwarding', FALSE, 1),
    ('7345313e-5e7e-4140-95a2-389065889295', '14ddc964-096a-4bc0-9a09-f50ca9942c6b', 'IP forwarding', TRUE, 2),
    ('b60cd07a-bed8-466a-b794-1a0962dffa06', '14ddc964-096a-4bc0-9a09-f50ca9942c6b', 'Static routing exclusively', FALSE, 3),
    ('cf4b907c-16e3-4b5d-a5ec-001277b5d8a3', '14ddc964-096a-4bc0-9a09-f50ca9942c6b', 'Application security groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('87464ee0-99ef-4e44-a542-3e7eda6a7690', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'At which OSI model layer can a firewall network virtual appliance with application support inspect packets, according to the module?',
        'Microsegmentation allows the firewall to inspect all packets at Layer 4 of the OSI model, and for appliances that support application-level inspection, at Layer 7 as well.', 73, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9baad507-3159-4713-8e13-f09d1de8116f', '87464ee0-99ef-4e44-a542-3e7eda6a7690', 'Layer 4, and Layer 7 for appliances that support application inspection', TRUE, 1),
    ('d0722300-b251-441a-a03f-4f4a0fd647ad', '87464ee0-99ef-4e44-a542-3e7eda6a7690', 'Layer 3 only, never Layer 4 or above', FALSE, 2),
    ('e443f752-963f-4519-abd5-cc39e2662e39', '87464ee0-99ef-4e44-a542-3e7eda6a7690', 'Layer 1 only', FALSE, 3),
    ('4f18f52c-f211-4497-97d6-772ae81bf281', '87464ee0-99ef-4e44-a542-3e7eda6a7690', 'Layer 2 only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dbdec7ca-a540-4442-a2b6-c27c78f265d7', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'How many route tables can a single subnet be associated with?',
        'You can create multiple route tables in Azure, and each route table can be associated with one or more subnets, but any single subnet can be associated with only one route table.', 74, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6b8605b1-0e2b-4bc6-ba31-ea38d3157132', 'dbdec7ca-a540-4442-a2b6-c27c78f265d7', 'None; route tables cannot be associated with subnets', FALSE, 1),
    ('4812001e-30c1-48bd-96f2-3f055453379a', 'dbdec7ca-a540-4442-a2b6-c27c78f265d7', 'Up to two', FALSE, 2),
    ('82d5c215-2fb5-4155-81d9-b2a1f8dd9032', 'dbdec7ca-a540-4442-a2b6-c27c78f265d7', 'Only one', TRUE, 3),
    ('58693ff8-89f5-4c6b-a951-69e050af6698', 'dbdec7ca-a540-4442-a2b6-c27c78f265d7', 'Unlimited', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('909d38bd-a0d7-46d0-a686-46220d9bba86', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Why is high availability especially important when routing traffic through a network virtual appliance?',
        'When traffic is routed through a network virtual appliance, that appliance becomes a critical piece of infrastructure — any NVA failure directly affects your services'' ability to communicate, which is why a high-availability architecture is important for NVA deployments.', 75, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('28dc126e-ba2f-48cd-9f00-2b5df4e019a0', '909d38bd-a0d7-46d0-a686-46220d9bba86', 'If traffic is routed through an NVA, the NVA becomes a critical part of your infrastructure, and any NVA failure directly impacts your services'' ability to communicate', TRUE, 1),
    ('30374e16-5f74-4969-8bdf-067be6f15378', '909d38bd-a0d7-46d0-a686-46220d9bba86', 'NVAs are never a critical path in the network, so HA doesn''t matter', FALSE, 2),
    ('9309fdef-81a6-4b18-857e-18fc1748fda5', '909d38bd-a0d7-46d0-a686-46220d9bba86', 'HA is only relevant to Azure DNS, not NVAs', FALSE, 3),
    ('bb086248-da0b-4af6-8f9b-01e58eb443e6', '909d38bd-a0d7-46d0-a686-46220d9bba86', 'NVAs automatically include built-in HA with no configuration needed', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('75339516-0a17-494d-a04b-bc953c15688f', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What problem does Azure Load Balancer primarily solve?',
        'Load balancing distributes incoming traffic evenly across multiple computers, since a pool of machines with lower individual resource levels often responds to traffic more efficiently than a single higher-performing server.', 76, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a3eea5f1-52e7-40dc-8883-311bfcfd56a7', '75339516-0a17-494d-a04b-bc953c15688f', 'It encrypts data stored in Azure Storage accounts', FALSE, 1),
    ('4bed9af4-c796-4370-9e68-66a60a638d1b', '75339516-0a17-494d-a04b-bc953c15688f', 'It distributes incoming network traffic evenly across a group of virtual machines, so a single server does not become overwhelmed', TRUE, 2),
    ('aa58a40f-5eac-494d-874c-caa93647e903', '75339516-0a17-494d-a04b-bc953c15688f', 'It automatically applies network security group rules', FALSE, 3),
    ('3326fd88-44c4-483d-a65a-c06817a6d9fd', '75339516-0a17-494d-a04b-bc953c15688f', 'It manages DNS zones for a domain', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a0f20da2-9891-43c7-80d8-58087471bf9e', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the key difference between a public load balancer and an internal (private) load balancer in Azure?',
        'A public load balancer maps the public IP address and port of incoming traffic to the private IP address and port of backend VMs — useful for balancing web traffic from the internet. An internal load balancer directs traffic to resources inside a virtual network, and its front-end IPs are never directly exposed to an internet endpoint.', 77, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('220b5770-5530-4bef-a2d6-f7977014223c', 'a0f20da2-9891-43c7-80d8-58087471bf9e', 'An internal load balancer can only be used with Azure Government', FALSE, 1),
    ('e32cc84b-04da-43df-8f3a-fabd11d340b6', 'a0f20da2-9891-43c7-80d8-58087471bf9e', 'There is no functional difference', FALSE, 2),
    ('6e5d399d-6759-4be9-949d-21a8f49489e9', 'a0f20da2-9891-43c7-80d8-58087471bf9e', 'A public load balancer cannot use health probes', FALSE, 3),
    ('92ba2187-e97b-4db6-be48-77ba3de9deaf', 'a0f20da2-9891-43c7-80d8-58087471bf9e', 'A public load balancer balances internet traffic to VMs; an internal load balancer distributes traffic to resources inside a virtual network, never directly exposed to the internet', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e11212f1-7172-4bf2-95b7-c27960e59c15', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'At which layer of the OSI model does Azure Load Balancer operate?',
        'Azure Load Balancer operates at Layer 4 of the OSI model. It manages traffic based on properties like source and destination address, protocol type (TCP/UDP), and port number, but cannot make decisions based on the content of the traffic (Layer 7).', 78, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f8566a41-9ae1-4956-b510-5d988c959eae', 'e11212f1-7172-4bf2-95b7-c27960e59c15', 'Layer 7 (application layer)', FALSE, 1),
    ('422db9bc-30ae-4c2f-8724-5aa8d6a9f9bd', 'e11212f1-7172-4bf2-95b7-c27960e59c15', 'Layer 3 (network layer) only, never Layer 4', FALSE, 2),
    ('22f62158-f410-463e-8a08-672471014434', 'e11212f1-7172-4bf2-95b7-c27960e59c15', 'Layer 4 (transport layer)', TRUE, 3),
    ('3e3e81f0-272c-4fc2-9395-65cb33c85261', 'e11212f1-7172-4bf2-95b7-c27960e59c15', 'Layer 2 (data link layer)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('57371175-9f84-43e7-ac17-9e8215fb0964', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which combination of values makes up the ''5-tuple hash'' that Load Balancer uses to distribute traffic?',
        'Traffic is managed using a five-tuple hash consisting of source IP address, source port, destination IP address, destination port, and protocol type — used in combination with session affinity settings.', 79, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c267a9c9-c80b-4211-9fd0-bd7d076d1e31', '57371175-9f84-43e7-ac17-9e8215fb0964', 'Username, password, tenant, client ID, and secret', FALSE, 1),
    ('1ca9b785-6f6b-47aa-91f2-99873f316c6f', '57371175-9f84-43e7-ac17-9e8215fb0964', 'Source IP, source port, destination IP, destination port, and protocol type', TRUE, 2),
    ('d76d0e84-30df-4691-a895-a6dc8eebae9c', '57371175-9f84-43e7-ac17-9e8215fb0964', 'Region, subscription, resource group, VM name, and NIC ID', FALSE, 3),
    ('bd964df9-7ec5-4f0d-adbb-27b983ec385c', '57371175-9f84-43e7-ac17-9e8215fb0964', 'DNS name, TTL, record type, priority, and weight', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fc334a40-0f01-42be-ba22-d81620fc0d42', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the purpose of a health probe in Azure Load Balancer?',
        'A health probe determines the health status of instances in the backend pool, ensuring the load balancer only sends new connections to healthy instances. A health probe failure does not affect existing connections, only new ones.', 80, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6b3ee7b8-869a-4973-a30c-61a2e08d8e3b', 'fc334a40-0f01-42be-ba22-d81620fc0d42', 'It encrypts traffic between the load balancer and the backend pool', FALSE, 1),
    ('0c63600b-ee1a-4cd6-b32c-d70d1b9222cd', 'fc334a40-0f01-42be-ba22-d81620fc0d42', 'It automatically resizes virtual machines', FALSE, 2),
    ('6fdc4a25-1f5a-4091-9877-f7268accd3ae', 'fc334a40-0f01-42be-ba22-d81620fc0d42', 'It determines whether backend pool instances are healthy, so the load balancer stops sending new connections to unhealthy instances', TRUE, 3),
    ('d7006a3c-d348-4ff7-b839-f1d0b8613ca1', 'fc334a40-0f01-42be-ba22-d81620fc0d42', 'It creates DNS records for backend instances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e1469e8c-8582-419c-80bd-d753f94a5fc1', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which types of health probes can Azure Load Balancer be configured to use?',
        'Load Balancer allows you to configure custom TCP probes, and custom HTTP or HTTPS probes, for different endpoints; HTTP/HTTPS probes are considered healthy if they respond with HTTP 200 within the timeout period.', 81, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3d1de0f0-7ee6-43ba-a82c-a74023b3dfb4', 'e1469e8c-8582-419c-80bd-d753f94a5fc1', 'Only DNS-based probes', FALSE, 1),
    ('37f83c0c-4cf4-4658-9b99-85c050f28d08', 'e1469e8c-8582-419c-80bd-d753f94a5fc1', 'Only ICMP ping', FALSE, 2),
    ('627149e5-c5e7-4761-811e-e5f2b4a69331', 'e1469e8c-8582-419c-80bd-d753f94a5fc1', 'Only SNMP', FALSE, 3),
    ('3151a0b3-3bb3-4ce2-bb25-da315456be74', 'e1469e8c-8582-419c-80bd-d753f94a5fc1', 'TCP, HTTP, and HTTPS', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('30810bac-7401-449f-9abe-9c5d8577a395', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What does ''session persistence'' (also called session affinity) control in Azure Load Balancer?',
        'Session persistence specifies how traffic from a client should be handled; the default (None) allows any healthy VM to handle requests, while options like Client IP (2-tuple) or Client IP and protocol (3-tuple) route successive requests from the same client to the same backend instance.', 82, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('942966f3-014d-4f9d-8e27-62ccc3254700', '30810bac-7401-449f-9abe-9c5d8577a395', 'How many public IP addresses a load balancer can have', FALSE, 1),
    ('26022bac-2e8f-4fd1-a2d2-d0887e7ce6fd', '30810bac-7401-449f-9abe-9c5d8577a395', 'Whether the same client is always routed to the same backend VM for successive requests', TRUE, 2),
    ('1c569bf7-4766-4e5d-955a-9b56ec279083', '30810bac-7401-449f-9abe-9c5d8577a395', 'Whether traffic is encrypted', FALSE, 3),
    ('4d4cc290-897f-4bad-b541-76fb9bad6e17', '30810bac-7401-449f-9abe-9c5d8577a395', 'How long a DNS record remains cached', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6932c4d5-1226-4ddb-86de-d3e96ea1af5f', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is a ''high availability (HA) ports'' load balancing rule?',
        'A load-balancing rule configured with protocol - all and port - 0 is called a high availability (HA) ports rule. It allows a single rule to load-balance all TCP and UDP flows on all ports of an internal Standard load balancer, useful for NVA high availability and scaling scenarios.', 83, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f1e0a314-a67e-48fa-8be7-cbf833221dac', '6932c4d5-1226-4ddb-86de-d3e96ea1af5f', 'A rule that disables health probes', FALSE, 1),
    ('2718a0ad-04d4-4472-accf-4722c75f01d7', '6932c4d5-1226-4ddb-86de-d3e96ea1af5f', 'A rule exclusive to public Basic load balancers', FALSE, 2),
    ('5eb567c3-c40b-4834-a5ac-cfb89d0e25a8', '6932c4d5-1226-4ddb-86de-d3e96ea1af5f', 'A rule configured with protocol=all and port=0, which load-balances all TCP and UDP flows arriving on all ports of an internal Standard load balancer with a single rule', TRUE, 3),
    ('c1dea869-f9bf-4f35-8803-02f95809ce01', '6932c4d5-1226-4ddb-86de-d3e96ea1af5f', 'A rule that only balances port 443 traffic', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('18b8bf32-3c68-4db6-bb30-f02eb91aa354', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the purpose of an inbound NAT rule used together with a load balancer?',
        'You can use load-balancing rules in combination with NAT rules; for example, using NAT from the load balancer''s public address to TCP port 3389 on a specific VM, which allows remote desktop access from outside Azure.', 84, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cbb07d79-3a4a-434c-8587-06dce79cb981', '18b8bf32-3c68-4db6-bb30-f02eb91aa354', 'To assign a static private IP to the load balancer itself', FALSE, 1),
    ('9b133404-52ba-4966-a881-2c11abc87615', '18b8bf32-3c68-4db6-bb30-f02eb91aa354', 'To translate the public IP/port of the load balancer to a specific port on a specific backend VM, for example enabling RDP access to a single VM from outside Azure', TRUE, 2),
    ('62919d5e-c820-480f-ae7c-060ab80812ff', '18b8bf32-3c68-4db6-bb30-f02eb91aa354', 'To block all outbound internet access from the backend pool', FALSE, 3),
    ('ec85639e-5ccf-485f-9571-a756ba8198ca', '18b8bf32-3c68-4db6-bb30-f02eb91aa354', 'To create a new virtual network automatically', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('35a2c93d-32b1-4aa7-aad4-6609d0f1b5ed', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'According to the module, which alternative service provides Layer 7 features such as a web application firewall, path-based routing, and TLS offload, unlike Azure Load Balancer?',
        'Azure Application Gateway provides an application delivery controller as a service, offering various Layer 7 load-balancing capabilities including TLS offload and web application firewall — features Azure Load Balancer, a Layer 4 service, doesn''t provide.', 85, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('eabd753f-e2fb-4655-9766-3a53940f6309', '35a2c93d-32b1-4aa7-aad4-6609d0f1b5ed', 'Azure Bastion', FALSE, 1),
    ('c0be7306-14e0-4edb-b823-be79ecc288fd', '35a2c93d-32b1-4aa7-aad4-6609d0f1b5ed', 'Azure DNS', FALSE, 2),
    ('05cea133-bff6-4490-be99-0442ecfb230c', '35a2c93d-32b1-4aa7-aad4-6609d0f1b5ed', 'Azure Application Gateway', TRUE, 3),
    ('8db24165-5127-42fd-b866-7b60750d1184', '35a2c93d-32b1-4aa7-aad4-6609d0f1b5ed', 'Azure Network Watcher', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6241a22c-f7e6-46d3-8235-c2a829704f4e', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Azure load balancing service is DNS-based and therefore balances traffic only at the domain level, with slower failover than Azure Front Door?',
        'Azure Traffic Manager is a DNS-based traffic load balancer, so it can distribute traffic only at the domain level; because of DNS caching and systems that don''t respect TTLs, it can''t fail over as quickly as Azure Front Door.', 86, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c9070d0c-3715-4b1d-a1ca-6d3d907064e6', '6241a22c-f7e6-46d3-8235-c2a829704f4e', 'Azure Firewall', FALSE, 1),
    ('54b62b53-c70b-4cbe-b20a-583535ca315f', '6241a22c-f7e6-46d3-8235-c2a829704f4e', 'Azure Load Balancer', FALSE, 2),
    ('61610e85-f263-4fe0-8c89-c15ccf15b0d0', '6241a22c-f7e6-46d3-8235-c2a829704f4e', 'Azure Application Gateway', FALSE, 3),
    ('301f1ff4-5061-4c6c-8064-4d1271dd5f2c', '6241a22c-f7e6-46d3-8235-c2a829704f4e', 'Azure Traffic Manager', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f1903efe-01b3-453e-beb0-a7ddc1575d91', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'In what scenario is Azure Load Balancer NOT an appropriate choice?',
        'If an organization has applications that require web application firewall functionality, Azure Load Balancer would not be an appropriate solution, since it operates at Layer 4 and cannot inspect application-layer traffic content; Application Gateway with WAF would be needed instead.', 87, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4ef3bf4d-8c1b-410e-8ece-206f9734edfd', 'f1903efe-01b3-453e-beb0-a7ddc1575d91', 'A scenario requiring layer 4 load balancing across multiple VMs', FALSE, 1),
    ('85ed9a44-806d-4afe-8407-eeabe414641c', 'f1903efe-01b3-453e-beb0-a7ddc1575d91', 'A high-throughput application requiring millions of TCP/UDP flows with ultra-low latency', FALSE, 2),
    ('148c70de-3aec-48c7-8b9b-a1e95dba1815', 'f1903efe-01b3-453e-beb0-a7ddc1575d91', 'An application that requires a web application firewall to protect against SQL injection and cross-site scripting', TRUE, 3),
    ('d7a50566-9ac3-4521-befe-25bfc1af76a8', 'f1903efe-01b3-453e-beb0-a7ddc1575d91', 'A scenario requiring both inbound and outbound scenarios for TCP and UDP protocols', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b7b72d82-0816-4359-b5ca-06595d1199a1', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What happens to existing connections when a backend instance fails its health probe?',
        'A health probe failure doesn''t affect existing connections — the connection continues until the application ends the flow, an idle timeout occurs, or the virtual machine shuts down. Only new connections stop being routed to the unhealthy instance.', 88, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8b52d33d-2842-4356-b415-5eb68df453e7', 'b7b72d82-0816-4359-b5ca-06595d1199a1', 'The public IP address is immediately released', FALSE, 1),
    ('bfebc98b-d286-4a16-8024-09ce80526b5c', 'b7b72d82-0816-4359-b5ca-06595d1199a1', 'The entire load balancer is disabled', FALSE, 2),
    ('f6112192-cada-43fe-9b1f-0ae618591c1c', 'b7b72d82-0816-4359-b5ca-06595d1199a1', 'Existing connections are unaffected and continue until the application ends the flow, an idle timeout occurs, or the VM shuts down; only new connections stop being sent to that instance', TRUE, 3),
    ('fac78630-b6e8-41a3-a84f-af0ef284a786', 'b7b72d82-0816-4359-b5ca-06595d1199a1', 'Existing connections are immediately terminated', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5c20dd19-1abf-43b6-8dbd-5259da707908', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the purpose of an outbound rule on Azure Load Balancer?',
        'An outbound rule configures source network address translation (SNAT) for all VMs or instances identified by the backend pool, allowing those backend instances to communicate outbound to the internet or other public endpoints.', 89, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('64f8c691-d95f-4f6b-baca-8540ae3cfd98', '5c20dd19-1abf-43b6-8dbd-5259da707908', 'It blocks all traffic from reaching the backend pool', FALSE, 1),
    ('5bad7675-ee71-44d5-a92d-a902c8e939bd', '5c20dd19-1abf-43b6-8dbd-5259da707908', 'It configures source network address translation (SNAT) for VMs in the backend pool so they can initiate outbound connections to the internet', TRUE, 2),
    ('39176bc6-0364-43df-ad24-e46cab37ebbf', '5c20dd19-1abf-43b6-8dbd-5259da707908', 'It assigns static private IP addresses to the frontend', FALSE, 3),
    ('231ebcc3-cb44-495d-b5d5-5c177f552618', '5c20dd19-1abf-43b6-8dbd-5259da707908', 'It creates health probes automatically', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1229e1c9-8958-4200-957e-5140f7b6bc67', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Can a single Azure load balancer have multiple frontend IP configurations?',
        'Azure load balancers can have multiple frontend IP addresses, and you can configure different load-balancing rules for each frontend IP configuration. Multiple frontend configurations are supported only with IaaS virtual machines.', 90, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e8d41d08-c338-40c8-8388-20d10fb0ac59', '1229e1c9-8958-4200-957e-5140f7b6bc67', 'Only for internal load balancers, never public ones', FALSE, 1),
    ('499c37dc-7297-46e7-9c9b-fc68ad7e1332', '1229e1c9-8958-4200-957e-5140f7b6bc67', 'No, only one frontend IP is ever allowed', FALSE, 2),
    ('a8124b63-8784-46f3-89f0-2e3f8552a5dd', '1229e1c9-8958-4200-957e-5140f7b6bc67', 'Only if the load balancer uses the Basic SKU', FALSE, 3),
    ('de3ee6ac-0976-40ef-ad26-cd96a1574643', '1229e1c9-8958-4200-957e-5140f7b6bc67', 'Yes, Azure load balancers can have multiple frontend IP addresses, and you can configure different load-balancing rules per frontend IP', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4f6ba01e-e930-4e98-8d04-a5e419b6fd1b', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the primary function of Azure Application Gateway?',
        'Azure Application Gateway manages requests sent by client applications to web applications hosted on a pool of web servers, which can be Azure VMs, virtual machine scale sets, Azure App Service, or even on-premises servers.', 91, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('10ea3245-11ca-43ee-a0e1-dc5978944c7f', '4f6ba01e-e930-4e98-8d04-a5e419b6fd1b', 'It provides Layer 4 load balancing based only on source and destination IP address', FALSE, 1),
    ('ec98d756-626d-4b2d-a289-db64f4781d22', '4f6ba01e-e930-4e98-8d04-a5e419b6fd1b', 'It functions exclusively as a DNS resolver', FALSE, 2),
    ('8a7f73e3-f805-44ee-b063-80d5e31d7c8b', '4f6ba01e-e930-4e98-8d04-a5e419b6fd1b', 'It manages requests sent by client applications to web applications hosted on a pool of web servers, providing Layer 7 load balancing', TRUE, 3),
    ('0705c880-8714-4cda-8225-b19775aeed15', '4f6ba01e-e930-4e98-8d04-a5e419b6fd1b', 'It replaces the need for virtual networks', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0671db6c-bcc4-419d-b2d4-5f1c60746fa5', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which of the following capabilities does Application Gateway provide?',
        'Application Gateway provides features like HTTP traffic load balancing and a web application firewall, and it supports TLS/SSL encryption of traffic between users and the gateway, as well as between the gateway and backend application servers.', 92, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5df2857c-1586-49f4-925c-3d5beeb3a251', '0671db6c-bcc4-419d-b2d4-5f1c60746fa5', 'Storage account replication', FALSE, 1),
    ('4854174f-6145-48d1-9cb4-1f655c0ddf64', '0671db6c-bcc4-419d-b2d4-5f1c60746fa5', 'DNS zone hosting', FALSE, 2),
    ('b9fc5de6-52a6-4ed2-bb20-263927332319', '0671db6c-bcc4-419d-b2d4-5f1c60746fa5', 'HTTP load balancing, a web application firewall, and TLS/SSL encryption support', TRUE, 3),
    ('fd4d5c42-d54d-451b-8c7c-fe762296ff49', '0671db6c-bcc4-419d-b2d4-5f1c60746fa5', 'Virtual network peering management', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0e4fdd28-b159-4f46-ac52-b28f731b58b0', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What type of listener is required if Application Gateway must route requests based on the hostname in the URL, not just the path?',
        'A Basic listener routes a request based only on the path of the URL. A Multi-site listener can also route requests using the hostname element of the URL, which is needed to host multiple sites behind one Application Gateway instance.', 93, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0cfbac5c-0032-437d-ae2b-47b7062a8197', '0e4fdd28-b159-4f46-ac52-b28f731b58b0', 'A DNS listener', FALSE, 1),
    ('13063e30-2e50-4b14-9965-6bb33474fa72', '0e4fdd28-b159-4f46-ac52-b28f731b58b0', 'A TCP listener', FALSE, 2),
    ('350daecf-d6dd-4072-90ea-9e8ba5b3a9d7', '0e4fdd28-b159-4f46-ac52-b28f731b58b0', 'A Basic listener', FALSE, 3),
    ('cab73b6b-ba9a-45b9-8c39-3f11acc69bce', '0e4fdd28-b159-4f46-ac52-b28f731b58b0', 'A Multi-site listener', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('24a77272-3aaa-43f3-8de6-a08e119edbd6', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'At which OSI model layer does Application Gateway''s load-balancing operate, and how does that differ from Azure Load Balancer?',
        'Application Gateway''s round-robin load balancing works with Layer 7 OSI routing, balancing requests based on routing parameters (hostnames and paths) used by its rules. Azure Load Balancer, by contrast, works at Layer 4 and distributes traffic based on the target''s IP address.', 94, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f195d6b2-287a-4781-8c66-9ede219a7357', '24a77272-3aaa-43f3-8de6-a08e119edbd6', 'Layer 2, the data link layer', FALSE, 1),
    ('d7d7bae4-38b7-481b-9f78-60da03cbd917', '24a77272-3aaa-43f3-8de6-a08e119edbd6', 'Layer 4, same as Azure Load Balancer', FALSE, 2),
    ('436f8db7-c15c-46cc-94c5-a7abd43af438', '24a77272-3aaa-43f3-8de6-a08e119edbd6', 'Layer 3 only', FALSE, 3),
    ('96678460-0006-4d28-bf78-a14b2f6fe9c1', '24a77272-3aaa-43f3-8de6-a08e119edbd6', 'Layer 7, meaning it balances based on routing parameters like hostnames and paths, unlike Azure Load Balancer, which works at Layer 4 based on IP address', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1c022bb8-a8e6-4fb1-9c76-3e99860526f1', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What does the web application firewall (WAF) component of Application Gateway check incoming requests against?',
        'The WAF checks each request for many common threats based on OWASP recommendations, such as SQL injection, cross-site scripting, command injection, HTTP request smuggling, HTTP response splitting, remote file inclusion, and protocol violations/anomalies.', 95, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4557c852-39d5-44ad-abd2-4930831bf0c2', '1c022bb8-a8e6-4fb1-9c76-3e99860526f1', 'Whether the request originates from a specific Azure region', FALSE, 1),
    ('fd025dc1-22d2-47cf-bdce-b4421fb5e980', '1c022bb8-a8e6-4fb1-9c76-3e99860526f1', 'Common web threats based on OWASP Core Rule Sets, such as SQL injection, cross-site scripting, and HTTP protocol violations', TRUE, 2),
    ('1827c888-ae8e-4cf3-a9d9-a8fcac7bad3f', '1c022bb8-a8e6-4fb1-9c76-3e99860526f1', 'Only whether the client used HTTPS or HTTP', FALSE, 3),
    ('9a4bd2b1-1f74-4ccb-8b81-9b56b02251d8', '1c022bb8-a8e6-4fb1-9c76-3e99860526f1', 'DNS TTL values', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e7416870-0bf4-4a9d-9787-8a7088879576', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'In Application Gateway, what determines how a request''s hostname and path elements are interpreted and which backend pool a request is directed to?',
        'A routing rule binds a listener to the backend pools. The rule specifies how to interpret the hostname and path elements in a request''s URL and how to direct the request to the appropriate backend pool, and it is also associated with HTTP settings.', 96, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4e41c094-3641-4352-bef5-2668cb4ee28a', 'e7416870-0bf4-4a9d-9787-8a7088879576', 'A network security group rule', FALSE, 1),
    ('6fc91161-2a37-4b29-abc4-4de1c6e8fc13', 'e7416870-0bf4-4a9d-9787-8a7088879576', 'A DNS zone alias record', FALSE, 2),
    ('4da7af56-3db3-455d-b2f2-7e6ca687c9db', 'e7416870-0bf4-4a9d-9787-8a7088879576', 'A routing rule, which links a listener to backend pools', TRUE, 3),
    ('4f9490d4-a7ad-4fd8-b68c-ba28cf89a510', 'e7416870-0bf4-4a9d-9787-8a7088879576', 'An availability set', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9f69820d-3866-4c32-ae48-03a576faa68d', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is ''path-based routing'' in Application Gateway?',
        'for example /video/\* to a video-optimized pool and /images/\* to an image-serving pool — Path-based routing sends requests with different URL paths to different pools of backend servers — for example, requests with the path /video/\* could go to a backend pool optimized for video streaming, while /images/\* requests go to a pool that handles image retrieval.', 97, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('289f8cbf-497c-4264-942e-11abdcda9499', '9f69820d-3866-4c32-ae48-03a576faa68d', 'A method for configuring DNS zones', FALSE, 1),
    ('1f5f3a5c-8cb0-4572-b58d-1ad011f4441c', '9f69820d-3866-4c32-ae48-03a576faa68d', 'A feature exclusive to Azure Load Balancer, not Application Gateway', FALSE, 2),
    ('98912dd1-a32c-4794-8703-8b6e6d1c709a', '9f69820d-3866-4c32-ae48-03a576faa68d', 'Sending requests with different URL paths to different backend pools — for example /video/\* to a video-optimized pool and /images/\* to an image-serving pool', TRUE, 3),
    ('8fa8569c-69d8-4d39-80bc-10e843a6e1e5', '9f69820d-3866-4c32-ae48-03a576faa68d', 'Assigning static IP addresses based on file paths', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fbe11b74-3b55-49b4-84d4-4fd30bd5f5d1', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is ''multi-site routing'' in Application Gateway used for?',
        'Multi-site routing configures more than one web application on the same Application Gateway instance. You register multiple CNAMEs for the gateway''s IP address, and different listeners wait for requests for each site before routing them via a rule to the appropriate backend pool.', 98, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4ef03900-ae5a-46b9-bade-ec6dacce3896', 'fbe11b74-3b55-49b4-84d4-4fd30bd5f5d1', 'Load-balancing DNS queries across multiple name servers', FALSE, 1),
    ('c0cce697-4aa0-4ff0-ba9d-531c10ce2718', 'fbe11b74-3b55-49b4-84d4-4fd30bd5f5d1', 'Configuring several web applications on the same Application Gateway instance, using different listeners tied to different hostnames (CNAMEs) that route to different backend pools', TRUE, 2),
    ('64793241-0cc9-4bdb-81de-f056aebca12b', 'fbe11b74-3b55-49b4-84d4-4fd30bd5f5d1', 'Automatically encrypting traffic between two peered virtual networks', FALSE, 3),
    ('e5efb1c0-902f-4845-b519-68677a913343', 'fbe11b74-3b55-49b4-84d4-4fd30bd5f5d1', 'Splitting a single backend pool across two Azure regions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e2da0c54-2971-449d-b17c-e571a076a5ae', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Why might an organization use TLS/SSL termination at the Application Gateway level?',
        'Terminating the TLS/SSL connection at the gateway offloads that CPU-intensive workload from the backend servers, and you don''t need to install certificates or configure TLS/SSL on each individual server.', 99, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('06c4caad-b255-4ce3-887b-60801b455d57', 'e2da0c54-2971-449d-b17c-e571a076a5ae', 'To automatically create DNS records for each backend server', FALSE, 1),
    ('149b5fd8-55e5-4a22-9116-e40e57e7197e', 'e2da0c54-2971-449d-b17c-e571a076a5ae', 'To bypass the need for health probes', FALSE, 2),
    ('cdfa42fa-5e18-4330-8903-26151b2e5991', 'e2da0c54-2971-449d-b17c-e571a076a5ae', 'To offload the CPU-intensive work of TLS/SSL processing from the backend servers, and avoid installing/configuring certificates on every backend server', TRUE, 3),
    ('720f7d11-a82e-4353-a8f7-c8b7e2763841', 'e2da0c54-2971-449d-b17c-e571a076a5ae', 'Because TLS/SSL termination is mandatory and cannot be disabled', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('299e06ce-6c1e-40c1-9cf3-c16b4f4842fb', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is the purpose of health probes in Application Gateway?',
        'Health probes determine which servers are available for load balancing. Application Gateway sends a request to a server, and if it returns an HTTP status code between 200 and 399, the server is considered healthy; a default probe waits 30 seconds if no custom probe is configured.', 100, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3c7d483a-1b86-4ce1-9beb-f91ad97bd44c', '299e06ce-6c1e-40c1-9cf3-c16b4f4842fb', 'To automatically generate TLS certificates', FALSE, 1),
    ('664abbf3-b697-431c-ab2e-b8e22908a55f', '299e06ce-6c1e-40c1-9cf3-c16b4f4842fb', 'To encrypt data at rest', FALSE, 2),
    ('a5380039-f933-41eb-9379-4097d6181c66', '299e06ce-6c1e-40c1-9cf3-c16b4f4842fb', 'To determine which backend servers are available for load balancing, and prevent traffic from being routed to a server that has failed or is unavailable', TRUE, 3),
    ('31634669-e0b6-49fd-92c2-e7b371c5421d', '299e06ce-6c1e-40c1-9cf3-c16b4f4842fb', 'To measure DNS propagation time', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('01b469b6-59f2-4d5a-82a3-daf5bfaa883a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is a benefit of exposing a web application only through Application Gateway, rather than exposing backend servers directly to the internet?',
        'Exposing your application through Application Gateway means you expose only port 80 or 443 on the gateway, which then forwards traffic to backend pool servers. The web servers themselves aren''t directly accessible from the internet, reducing your infrastructure''s attack surface.', 101, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5a1f7d82-2a3e-4a1e-a42d-a4e6117dcc79', '01b469b6-59f2-4d5a-82a3-daf5bfaa883a', 'It reduces the attack surface, since only port 80 or 443 on the gateway is exposed, and the backend servers themselves are not directly accessible from the internet', TRUE, 1),
    ('7a7ca9cc-1e75-4cae-abc4-90bd8bfc6317', '01b469b6-59f2-4d5a-82a3-daf5bfaa883a', 'It eliminates the need for a virtual network', FALSE, 2),
    ('c1575d6c-5155-451b-976f-09064c3b422c', '01b469b6-59f2-4d5a-82a3-daf5bfaa883a', 'It automatically doubles compute capacity', FALSE, 3),
    ('17da2418-f128-4de8-8421-51891af60201', '01b469b6-59f2-4d5a-82a3-daf5bfaa883a', 'It removes the need for a resource group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('908380a2-b394-4d47-9345-3cb66ba67130', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which protocols does Application Gateway natively support, enabling full-duplex communication between client and server over a single TCP connection?',
        'Application Gateway natively supports WebSocket and HTTP/2 protocols, which enable full-duplex communication over a single TCP connection, reduce overhead compared to plain HTTP, and are designed to work over traditional HTTP ports 80 and 443.', 102, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f1b0f7c5-6ccd-4b1b-b8d2-2ee1540805b7', '908380a2-b394-4d47-9345-3cb66ba67130', 'WebSocket and HTTP/2', TRUE, 1),
    ('7d967253-f794-48cc-8371-4595563b935a', '908380a2-b394-4d47-9345-3cb66ba67130', 'SMTP and POP3', FALSE, 2),
    ('f396811c-ca55-4ab9-a821-9c441a762fed', '908380a2-b394-4d47-9345-3cb66ba67130', 'FTP and SFTP', FALSE, 3),
    ('e82c9bce-bd86-4385-8eed-28642eca22ce', '908380a2-b394-4d47-9345-3cb66ba67130', 'RDP and SSH', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8b8c6964-1cb5-471b-b09c-4113bf11821e', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'According to the module, in which scenario should you choose Application Gateway over Azure Load Balancer?',
        'Application Gateway is appropriate when you need a web application firewall to block threats like cross-site scripting and SQL injection, and when applications rely on user session state stored locally on individual backend servers, requiring session affinity.', 103, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d7197ecd-9c24-401b-a80e-9e67ddc92c32', '8b8c6964-1cb5-471b-b09c-4113bf11821e', 'When you need pure Layer 4, ultra-low-latency load balancing for millions of TCP/UDP flows with no content inspection', FALSE, 1),
    ('49d80487-1682-4562-b6a5-0fae857f2419', '8b8c6964-1cb5-471b-b09c-4113bf11821e', 'When you have a single VM with very low traffic that doesn''t need load balancing at all', FALSE, 2),
    ('00084efb-68cf-4445-8ba0-22f6cfe94a30', '8b8c6964-1cb5-471b-b09c-4113bf11821e', 'When you only need DNS-based global load balancing', FALSE, 3),
    ('f1951a2a-04f6-4081-a60d-1097d2a40eb4', '8b8c6964-1cb5-471b-b09c-4113bf11821e', 'When you need to protect a web application from SQL injection and cross-site scripting using a web application firewall, and require session affinity based on application-stored state', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('27bcef0f-a3d6-4681-85f3-5a0da536e8de', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Does Application Gateway support automatic scaling in response to changing traffic load?',
        'Application Gateway supports autoscaling, scaling up or down based on changing traffic load patterns. This also avoids the need to choose a deployment size or instance count at provisioning time.', 104, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3dd687f1-1c17-41e4-ab62-9558b1b4775f', '27bcef0f-a3d6-4681-85f3-5a0da536e8de', 'Yes, Application Gateway supports autoscaling, adjusting capacity up or down as traffic patterns change, without requiring you to choose a fixed deployment size or instance count upfront', TRUE, 1),
    ('e7eca17e-17d7-4e58-8af7-dc7a8bfa633e', '27bcef0f-a3d6-4681-85f3-5a0da536e8de', 'Only in Azure Government regions', FALSE, 2),
    ('27cb7858-a0cb-48dd-b0f6-49cb7cc75335', '27bcef0f-a3d6-4681-85f3-5a0da536e8de', 'Only for WAF-enabled configurations', FALSE, 3),
    ('9845ff36-1bcd-422c-a4ba-dec3682f1c22', '27bcef0f-a3d6-4681-85f3-5a0da536e8de', 'No, capacity must always be manually resized', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('85a69aae-764f-446c-8291-a171d78a003a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What does ''connection draining'' allow Application Gateway to do?',
        'Connection draining allows for the graceful removal of backend pool members during planned service updates, ensuring in-flight requests are permitted to complete rather than being abruptly terminated.', 105, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('75fbdf7b-4e7a-46e6-801d-1347b56bd31a', '85a69aae-764f-446c-8291-a171d78a003a', 'Force all clients to reconnect using HTTP instead of HTTPS', FALSE, 1),
    ('32a55e2e-fb6b-43d3-a916-cc0f2af6e5ed', '85a69aae-764f-446c-8291-a171d78a003a', 'Reset all TLS certificates', FALSE, 2),
    ('35dee434-f66b-4865-b581-47232126b777', '85a69aae-764f-446c-8291-a171d78a003a', 'Permanently delete a backend pool', FALSE, 3),
    ('5734b78d-3a3f-4db8-ab36-2a08fb529a15', '85a69aae-764f-446c-8291-a171d78a003a', 'Gracefully remove backend pool members during planned service updates, without abruptly cutting off in-flight requests', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('16a79ec8-0ae2-4e4d-97b2-30e82264e108', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What is Azure Network Watcher primarily designed to do?',
        'Network Watcher provides a suite of tools to monitor, diagnose, view metrics, and enable or disable logs for Azure IaaS (Infrastructure-as-a-Service) resources such as VMs, virtual networks, application gateways, and load balancers. It is not designed for PaaS monitoring or web analytics.', 106, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('df9f0406-4d5b-42c8-be97-bd5898e831ab', '16a79ec8-0ae2-4e4d-97b2-30e82264e108', 'Monitor and analyze PaaS services and web analytics', FALSE, 1),
    ('0ca63855-6d0e-404f-b3bb-1f83dbe6b310', '16a79ec8-0ae2-4e4d-97b2-30e82264e108', 'Register new domain names', FALSE, 2),
    ('bccde507-ba1b-4f4d-bcea-48dcfd515c2d', '16a79ec8-0ae2-4e4d-97b2-30e82264e108', 'Automatically remediate all network security group misconfigurations', FALSE, 3),
    ('6e8e7c1a-e6c8-482e-a043-78d18ad70d34', '16a79ec8-0ae2-4e4d-97b2-30e82264e108', 'Provide a suite of tools to monitor, diagnose, view metrics, and enable or disable logs for Azure IaaS network resources', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fa97f49d-cec0-42dc-a187-fd1802317875', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Network Watcher''s tools are grouped into which three categories?',
        'Network Watcher is made up of three main sets of tools and capabilities: Monitoring (Topology, Connection Monitor), Network diagnostic tools (such as IP flow verify, NSG diagnostics, Next hop, Effective security rules, Connection troubleshoot, Packet capture, VPN troubleshoot), and Traffic (Flow logs, Traffic Analytics).', 107, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dd92586a-d645-4038-85a4-f5c9ec819e1f', 'fa97f49d-cec0-42dc-a187-fd1802317875', 'Billing, Compliance, and Identity', FALSE, 1),
    ('6cdb3f0f-8a98-4a0c-87d7-9a7fac093e88', 'fa97f49d-cec0-42dc-a187-fd1802317875', 'Storage, Compute, and Networking', FALSE, 2),
    ('8603a35d-9be2-4c31-930c-d2dd54874e20', 'fa97f49d-cec0-42dc-a187-fd1802317875', 'Monitoring, Network diagnostic tools, and Traffic', TRUE, 3),
    ('eaed635a-1d3e-437a-ba90-c7287a640339', 'fa97f49d-cec0-42dc-a187-fd1802317875', 'Security, Governance, and Cost', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('03138d28-f338-441b-a40f-abb4065a3f3d', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Network Watcher monitoring tool provides an interactive, visual view of all resources in a virtual network and their relationships?',
        'The Topology tool provides a visualization of the entire network to understand the network configuration, with an interactive interface for viewing resources and their relationships across multiple subscriptions, resource groups, and locations.', 108, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('eb943a8c-64d0-4ad2-9750-7cd12b4046de', '03138d28-f338-441b-a40f-abb4065a3f3d', 'Packet capture', FALSE, 1),
    ('51922441-b861-44ed-b670-8a714d4ed73b', '03138d28-f338-441b-a40f-abb4065a3f3d', 'Flow logs', FALSE, 2),
    ('bd87a749-a170-4c9a-ad95-b154642a17d3', '03138d28-f338-441b-a40f-abb4065a3f3d', 'Topology', TRUE, 3),
    ('673b39fb-ef4d-46db-bde0-c24e9cc4c7a7', '03138d28-f338-441b-a40f-abb4065a3f3d', 'Connection troubleshoot', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aaea629e-306c-4489-9a64-37a05276bd0a', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Network Watcher tool provides continuous, end-to-end connectivity monitoring between Azure and hybrid endpoints over time, rather than a single point-in-time test?',
        'Connection Monitor provides unified, end-to-end connection monitoring for Azure and hybrid endpoints over time, helping you understand network performance and detect connectivity changes; it requires monitoring agents to be installed on the hosts being monitored.', 109, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ca49d05e-c3be-4b92-b0f1-b1e6a72a412f', 'aaea629e-306c-4489-9a64-37a05276bd0a', 'Next hop', FALSE, 1),
    ('f4dd5c8d-e76a-464d-8c0d-a3c808f1f81a', 'aaea629e-306c-4489-9a64-37a05276bd0a', 'IP flow verify', FALSE, 2),
    ('43cfca44-fd94-4e30-8813-3500d9aad82a', 'aaea629e-306c-4489-9a64-37a05276bd0a', 'VPN troubleshoot', FALSE, 3),
    ('bb1c9263-a34e-4c5c-b5b8-95f5fc65c06e', 'aaea629e-306c-4489-9a64-37a05276bd0a', 'Connection Monitor', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5274898b-62e9-4d31-afa3-4335e41eb08e', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Network Watcher diagnostic tool tells you whether a packet is allowed or denied to or from a specific IP address, and which security rule made that decision?',
        'IP flow verify lets you detect traffic filtering problems at a VM level. It checks whether a packet is allowed or denied to or from a given IPv4 or IPv6 address, and identifies which security rule allowed or denied the traffic.', 110, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e9fc4028-2792-4a44-9197-7350519a8dce', '5274898b-62e9-4d31-afa3-4335e41eb08e', 'IP flow verify', TRUE, 1),
    ('ee796c2f-3ee0-4da8-913b-ff436dffa4e8', '5274898b-62e9-4d31-afa3-4335e41eb08e', 'Topology', FALSE, 2),
    ('5d58bc9c-8ba4-4efe-abb2-604d94affa3d', '5274898b-62e9-4d31-afa3-4335e41eb08e', 'Traffic Analytics', FALSE, 3),
    ('7f9f6426-08fa-41a8-9695-a0a65d67ddd3', '5274898b-62e9-4d31-afa3-4335e41eb08e', 'Flow logs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('51bddf9a-1416-4deb-928e-38219babd1ee', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Network Watcher tool lets you determine whether traffic is being routed correctly toward its intended destination, and returns the associated route table?',
        'Next hop lets you detect routing problems: it retrieves the next hop type and IP address for a packet from a specific VM and NIC. Knowing the next hop helps determine whether traffic is being directed to the intended destination, and it also returns the associated route table (system or user-defined).', 111, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8ff05f19-37c6-4521-942f-083cb2fb4bb2', '51bddf9a-1416-4deb-928e-38219babd1ee', 'Connection Monitor', FALSE, 1),
    ('5fb694a6-56e7-4c7c-ade0-42f37753339d', '51bddf9a-1416-4deb-928e-38219babd1ee', 'NSG diagnostics', FALSE, 2),
    ('7c151ee2-8562-4d02-889f-d7ab254ff0fd', '51bddf9a-1416-4deb-928e-38219babd1ee', 'Packet capture', FALSE, 3),
    ('f79f6ddc-7508-4197-99e3-e75f73ac63ca', '51bddf9a-1416-4deb-928e-38219babd1ee', 'Next hop', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cb1d33c6-2c2b-4af7-8d00-878588eb7431', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Network Watcher tool aggregates all rules from all applicable network security groups on a resource, to determine why traffic is being allowed or denied?',
        'Since multiple network security groups can apply to a single IaaS resource, the Effective security rules tool lets you determine why certain traffic may be denied or allowed by taking into account all rules applied across all applicable network security groups.', 112, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c1cdf839-ff57-4b22-9a8c-c24548524fc5', 'cb1d33c6-2c2b-4af7-8d00-878588eb7431', 'Traffic Analytics', FALSE, 1),
    ('51bccbd2-6d92-428e-9f61-abb0bb63b183', 'cb1d33c6-2c2b-4af7-8d00-878588eb7431', 'Topology', FALSE, 2),
    ('0f697d91-ca08-4864-8b1e-1cefc438e8ab', 'cb1d33c6-2c2b-4af7-8d00-878588eb7431', 'Connection troubleshoot', FALSE, 3),
    ('6e7c1848-c796-4b00-be34-5823f03e90c2', 'cb1d33c6-2c2b-4af7-8d00-878588eb7431', 'Effective security rules', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('729d7364-c535-47e3-9b66-51ae64a588e4', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'How does ''Connection troubleshoot'' differ from ''Connection Monitor''?',
        'Connection troubleshoot lets you test a connection between a VM, scale set, application gateway, or Bastion host and a destination VM, FQDN, URI, or IPv4 address at a specific point in time — unlike Connection Monitor, which continuously monitors connectivity over time.', 113, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1331ca87-7c13-443c-bbfd-f5858103ce99', '729d7364-c535-47e3-9b66-51ae64a588e4', 'Connection troubleshoot tests a connection at a single point in time, while Connection Monitor observes connectivity continuously over time', TRUE, 1),
    ('ef9ce3ec-f60e-4df3-9045-5e489cb4c812', '729d7364-c535-47e3-9b66-51ae64a588e4', 'Connection Monitor is deprecated in favor of Connection troubleshoot', FALSE, 2),
    ('ea60e777-7fe6-4b88-8ae8-433b6024efc6', '729d7364-c535-47e3-9b66-51ae64a588e4', 'Connection troubleshoot only works for VPN gateways', FALSE, 3),
    ('e08e096f-27b9-4ba0-88e7-567485cc31b8', '729d7364-c535-47e3-9b66-51ae64a588e4', 'There is no functional difference between them', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('78509e2f-2470-46be-a274-5a0d3b04f6ca', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What does the Network Watcher ''Packet capture'' tool allow you to do?',
        'Packet capture lets you remotely create packet capture sessions to record all traffic to and from a virtual machine or virtual machine scale set, filterable using 5-tuple criteria, with captured data stored locally or in a storage blob.', 114, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('204ffac1-feb2-45dd-aca2-de2e0af8b7c7', '78509e2f-2470-46be-a274-5a0d3b04f6ca', 'Generate DNS zone records', FALSE, 1),
    ('3ccbc7c8-4640-48f5-af14-f8e47c2f519a', '78509e2f-2470-46be-a274-5a0d3b04f6ca', 'Automatically block malicious IP addresses', FALSE, 2),
    ('17116cef-9fb0-4242-9167-cb38240222b1', '78509e2f-2470-46be-a274-5a0d3b04f6ca', 'Remotely create packet capture sessions to record all network traffic to and from a VM or virtual machine scale set', TRUE, 3),
    ('38d2c597-f0d9-4741-a16d-023c96a1eb57', '78509e2f-2470-46be-a274-5a0d3b04f6ca', 'Configure NSG rule priorities automatically', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cddfe30a-3509-4871-82d4-772e898f6d12', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which type of error might the Connection troubleshoot tool report if a network security group is blocking the connection?',
        'If a connection fails, the Connection troubleshoot tool can report error types such as NetworkSecurityRule (a network security group blocked the connection), UserDefinedRoute (an incorrect route in a route table), DNSResolution, GuestFirewall, CPU, and Memory.', 115, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2326d856-fe3d-4644-96ba-7b22d21c6657', 'cddfe30a-3509-4871-82d4-772e898f6d12', 'DNSResolution', FALSE, 1),
    ('d09e23e5-172c-4bc0-9bea-4133e6b7f1cd', 'cddfe30a-3509-4871-82d4-772e898f6d12', 'NetworkSecurityRule', TRUE, 2),
    ('4b6a4354-4591-4b3f-bd6e-3f73a11a7e47', 'cddfe30a-3509-4871-82d4-772e898f6d12', 'Memory', FALSE, 3),
    ('dca38931-91da-4c0e-8535-51bcefa3a367', 'cddfe30a-3509-4871-82d4-772e898f6d12', 'GuestFirewall', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c2f278d8-d6c1-4129-9c4c-724d7cf6f8f5', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'What must be enabled on a subscription before you can use most of Network Watcher''s per-region tools?',
        'Network Watcher becomes automatically available whenever you create a virtual network in an Azure region within your subscription; you can access it directly in the Azure portal by searching for Network Watcher.', 116, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8c7e2ec1-b6d6-4860-8ed5-5bc2b3851aef', 'c2f278d8-d6c1-4129-9c4c-724d7cf6f8f5', 'A dedicated ExpressRoute circuit', FALSE, 1),
    ('164cfad0-1387-4cad-9406-e23d01e6b986', 'c2f278d8-d6c1-4129-9c4c-724d7cf6f8f5', 'A paid Azure Support plan', FALSE, 2),
    ('775f5da8-71b2-4113-9df0-0212ee44e017', 'c2f278d8-d6c1-4129-9c4c-724d7cf6f8f5', 'Network Watcher becomes automatically available in a region when you create a virtual network there; it does not require separate registration for basic use', TRUE, 3),
    ('d1d3fc32-9238-4b17-8e55-1d2b3590fc71', 'c2f278d8-d6c1-4129-9c4c-724d7cf6f8f5', 'Microsoft Entra ID P2 licensing', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('acb6c3aa-4a3a-4ad1-bf83-941dddc7e9ea', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which Network Watcher tools help you log and analyze traffic patterns flowing through a network security group or virtual network over time?',
        'Network Watcher''s traffic tools include Flow logs, which let you log information about IP traffic and store it in Azure Storage, and Traffic Analytics, which provides rich visualizations of the flow log data.', 117, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5ee6cbf9-227d-4392-9d2a-b14ff9ef443a', 'acb6c3aa-4a3a-4ad1-bf83-941dddc7e9ea', 'Flow logs and Traffic Analytics', TRUE, 1),
    ('28446e03-4873-4a6b-8f1d-aba46af878a2', 'acb6c3aa-4a3a-4ad1-bf83-941dddc7e9ea', 'IP flow verify and Next hop', FALSE, 2),
    ('5ee8f0f7-2324-489e-9ef5-727fa71e8e67', 'acb6c3aa-4a3a-4ad1-bf83-941dddc7e9ea', 'Topology and Connection Monitor', FALSE, 3),
    ('6ee28e49-dffc-4de3-b1b8-9a6a07cb9510', 'acb6c3aa-4a3a-4ad1-bf83-941dddc7e9ea', 'VPN troubleshoot and Packet capture', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('56a09dce-795d-4b1e-94dc-a12921ed9dae', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which scenario is a good fit for Azure Network Watcher''s tools, according to the module?',
        'Good use cases for Network Watcher''s tools include resolving IaaS VM connectivity problems, resolving VPN connection issues, and determining inter-region network latencies to decide where to place IaaS resources.', 118, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('13f3065c-54c8-497f-ab6d-04b1d9422d20', '56a09dce-795d-4b1e-94dc-a12921ed9dae', 'Registering and renewing a domain name', FALSE, 1),
    ('6f9eb3a6-0970-4ad4-a318-ced7e1087817', '56a09dce-795d-4b1e-94dc-a12921ed9dae', 'Diagnosing performance issues in an Azure App Service (PaaS) web application', FALSE, 2),
    ('8bf65fc9-2d5f-4ed6-8fc8-9e9789dc266d', '56a09dce-795d-4b1e-94dc-a12921ed9dae', 'Analyzing website visitor analytics for a marketing team', FALSE, 3),
    ('5052ff39-dfb4-4838-9d64-8bfafc02ee81', '56a09dce-795d-4b1e-94dc-a12921ed9dae', 'Troubleshooting connectivity issues with IaaS virtual machines, resolving VPN connection problems, and determining cross-region network latency', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('48337615-1b91-4158-b565-bec3f19bcf95', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Why is Network Watcher NOT an appropriate tool for diagnosing a problem with an Azure App Service (PaaS) application?',
        'Network Watcher is primarily used for IaaS resources on Azure virtual networks; you cannot use it to diagnose connectivity problems related to PaaS services or web analytics — for those, you should check Azure status or the relevant service health dashboard instead.', 119, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e775dc29-bb89-4d45-91dd-31dc4c42aa8d', '48337615-1b91-4158-b565-bec3f19bcf95', 'Network Watcher requires a physical network appliance to be installed', FALSE, 1),
    ('e0ba89c0-891e-42ea-acee-04460277502d', '48337615-1b91-4158-b565-bec3f19bcf95', 'Network Watcher only works with on-premises networks', FALSE, 2),
    ('859cc99f-6fa3-4cc3-8fe4-d4dccb3c48f6', '48337615-1b91-4158-b565-bec3f19bcf95', 'Network Watcher is primarily intended for IaaS resources on Azure virtual networks and cannot be used to diagnose PaaS service or web analytics connectivity problems', TRUE, 3),
    ('ae6edcac-d279-44ac-acb5-7984beeb849f', '48337615-1b91-4158-b565-bec3f19bcf95', 'App Service does not use IP addresses', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2e05984d-9b00-4ba8-a46a-0ada84775294', 'bae6185b-d92e-4bcd-823a-916ad28e1ebb', 'SINGLE_CHOICE', 'Which tool would you use to diagnose why a remote PowerShell session cannot be established between two VMs on the same virtual network due to a suspected NSG rule?',
        'IP flow verify lets you specify a local and remote port, protocol (TCP/UDP), and local/remote IP addresses to check the connection status and direction. For a blocked PowerShell session over HTTPS (TCP 5986), it identifies which network security group rule is responsible for dropping the traffic.', 120, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('68d555eb-e19b-4123-8b72-a8567260b617', '2e05984d-9b00-4ba8-a46a-0ada84775294', 'Traffic Analytics only', FALSE, 1),
    ('f61f5a81-1842-4f8b-92ff-59d7bb493c3f', '2e05984d-9b00-4ba8-a46a-0ada84775294', 'IP flow verify, specifying the source/destination IP addresses, TCP port 5986, and direction, to identify which rule is blocking the connection', TRUE, 2),
    ('63dd40c6-f233-42a0-b72e-12636e2e8fcf', '2e05984d-9b00-4ba8-a46a-0ada84775294', 'Application Gateway health probes', FALSE, 3),
    ('50c9bafa-14e3-49d6-acea-25fb5b896f0a', '2e05984d-9b00-4ba8-a46a-0ada84775294', 'Azure DNS zone records', FALSE, 4);
