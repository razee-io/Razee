---

copyright:
  years: 2014, 2020
lastupdated: "2020-01-22"

keywords: kubernetes, iks, release notes

subcollection: containers

---

{:codeblock: .codeblock}
{:deprecated: .deprecated}
{:download: .download}
{:external: target="_blank" .external}
{:faq: data-hd-content-type='faq'}
{:gif: data-image-type='gif'}
{:help: data-hd-content-type='help'}
{:important: .important}
{:new_window: target="_blank"}
{:note: .note}
{:pre: .pre}
{:preview: .preview}
{:screen: .screen}
{:shortdesc: .shortdesc}
{:support: data-reuse='support'}
{:table: .aria-labeledby="caption"}
{:tip: .tip}
{:troubleshoot: data-hd-content-type='troubleshoot'}
{:tsCauses: .tsCauses}
{:tsResolve: .tsResolve}
{:tsSymptoms: .tsSymptoms}


# Release notes
{: #iks-release}

Use the release notes to learn about the latest changes to the {{site.data.keyword.containerlong}} documentation that are grouped by month.
{:shortdesc}

## January 2020
{: #jan20}

| Date | Description |
| ---- | ----------- |
| 22 January 2020 | **Kubernetes 1.15**: [Kubernetes 1.15](/docs/containers?topic=containers-cs_versions#version_types) is now the default version. |
| 21 January 2020 | **Default {{site.data.keyword.containerlong}} settings**: Review the [default settings](/docs/containers?topic=containers-service-settings) for Kubernetes components, such as the `kube-apiserver`, `kubelet`, or `kube-proxy`. |
| 20 January 2020 | <ul><li>**Helm version 3**: Updated [Adding services by using Helm charts](/docs/containers?topic=containers-helm) to include steps for installing Helm v3 in your cluster. Migrate to Helm v3 today for several advantages over Helm v2, such as the removal of the Helm server, Tiller.</li><li>**Ingress ALB changelog**: Updated the [`nginx-ingress` image build to 621](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li><li>**Version changelog**: Patch updates are available for Kubernetes [1.16.5_1522](/docs/containers?topic=containers-changelog#1165_1522), [1.15.8_1529](/docs/containers?topic=containers-changelog#1158_1529), [1.14.10_1545](/docs/containers?topic=containers-changelog#11410_1545), and [1.13.12_1548](/docs/containers?topic=containers-changelog#11312_1548).</li></ul> |
| 13 January 2020 | **{{site.data.keyword.blockstorageshort}}**: Added steps for [adding raw {{site.data.keyword.blockstorageshort}} to VPC worker nodes](/docs/containers?topic=containers-utilities#vpc_api_attach). |
| 06 January 2020 | **Ingress ALB changelog**: Updated the [`ingress-auth` image to build 373](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).|
| 03 January 2020 | **Version changelog**: Worker node patch updates are available for Kubernetes [1.16.3_1521](/docs/containers?topic=containers-changelog#1163_1521), [1.15.6_1528](/docs/containers?topic=containers-changelog#1156_1528), [1.14.9_1544](/docs/containers?topic=containers-changelog#1149_1544), and [1.13.12_1547](/docs/containers?topic=containers-changelog#11312_1547).|


## December 2019
{: #dec19}

| Date | Description |
| ---- | ----------- |
| 18 December 2019 | **Ingress ALB changelog**: Updated the [`nginx-ingress` image build to 615 and the `ingress-auth` image to build 372](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog). |
| 17 December 2019 | <ul><li>**Version changelog**: Master patch updates are available for Kubernetes [1.16.3_1520](/docs/containers?topic=containers-changelog#1163_1520), [1.15.6_1527](/docs/containers?topic=containers-changelog#1156_1527), [1.14.9_1543](/docs/containers?topic=containers-changelog#1149_1543), and [1.13.12_1546](/docs/containers?topic=containers-changelog#11312_1546).</li><li>**Adding classic infrastructure servers to gateway-enabled clusters**: [Adding classic IBM Cloud infrastructure server instances to your cluster network](/docs/containers?topic=containers-add_workers#gateway_vsi) is now generally available for classic gateway-enabled clusters.</li><li>**Assigning access**: Updated the steps to [assign access to your clusters through the {{site.data.keyword.cloud_notm}} IAM console](/docs/containers?topic=containers-users#add_users).</li></ul>|
| 12 December 2019 | **Setting up a service mesh with Istio**: Includes the following new pages:<ul><li>[About the managed Istio add-on](/docs/containers?topic=containers-istio-about)</li><li>[Setting up Istio](/docs/containers?topic=containers-istio)</li><li>[Managing apps in the service mesh](/docs/containers?topic=containers-istio-mesh)</li><li>[Observing Istio traffic](/docs/containers?topic=containers-istio-health)</li></ul>|
| 11 December 2019 | <ul><li>**CLI changelog**: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.4.64](/docs/containers?topic=containers-cs_cli_changelog).</li><li>**Configuring VPC subnets**: [Added information](/docs/containers?topic=containers-vpc-subnets) about configuring VPC subnets, public gateways, and network segmentation for your VPC clusters.</li><li>**Kubernetes version lifecyles**: Added information about [the release lifecycle of supported Kubernetes versions](/docs/containers?topic=containers-cs_versions#release_lifecycle).</li><li>**Managed Knative add-on**: Added information about [Istio version support](/docs/containers?topic=containers-serverless-apps-knative#kn_limitations).</li></ul>|
| 09 December 2019 | **Version changelog**: Worker node patch updates are available for Kubernetes [1.16.3_1519](/docs/containers?topic=containers-changelog#1163_1519_worker), [1.15.6_1526](/docs/containers?topic=containers-changelog#1156_1526_worker), [1.14.9_1542](/docs/containers?topic=containers-changelog#1149_1542_worker), and [1.13.12_1545](/docs/containers?topic=containers-changelog#11312_1545_worker). |
| 04 December 2019 | <ul><li>**Exposing apps with load balancers or Ingress ALBs**: Added quick start pages to help you get up and running with [load balancers](/docs/containers?topic=containers-loadbalancer-qs) and [Ingress ALBs](/docs/containers?topic=containers-ingress-qs).</li><li>**Kubernetes web terminal for VPC clusters**: To use the Kubernetes web terminal for VPC clusters, make sure to [configure access to external endpoints](/docs/containers?topic=containers-cs_cli_install#cli_web).</li><li>**Monitoring Istio**: Added [steps](/docs/containers?topic=containers-istio-health#istio_inspect) to launch the ControlZ component inspection and Envoy sidecar dashboards for the Istio managed add-on.</li><li>**Tuning network performance**: Added [steps](/docs/containers?topic=containers-kernel#calico-portmap) for disabling the `portmap` plugin for for the Calico container network interface (CNI).</li><li>**Use the internal KVDB in Portworx**: Automatically set up a key-value database (KVDB) during the Portworx installation to store your Portworx metadata. For more information, see [Using the Portworx KVDB](/docs/containers?topic=containers-portworx#portworx-kvdb).</li></ul>|
{: summary="The table shows release notes. Rows are to be read from the left to right, with the date in column one, the title of the feature in column two and a description in column three."}
{: caption="Documentation updates in December 2019"}

## November 2019
{: #nov19}

<table summary="The table shows release notes. Rows are to be read from the left to right, with the date in column one, the title of the feature in column two and a description in column three.">
<caption>Documentation updates in November 2019</caption>
<thead>
<th>Date</th>
<th>Description</th>
</thead>
<tbody>
<tr>
  <td>26 November 2019</td>
  <td><ul><li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.4.61](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>Cluster autoscaling for VPC clusters</strong>: You can [set up the cluster autoscaler](/docs/containers?topic=containers-ca#ca_helm) on clusters that run on the first generation of compute for Virtual Private Cloud (VPC).</li>
  <li><strong>New! Reservations and limits for PIDs</strong>: Worker nodes that run Kubernetes version 1.14 or later set [process ID (PID) reservations and limits that vary by flavor](/docs/containers?topic=containers-planning_worker_nodes#resource_limit_node), to help prevent malicious or runaway apps from consuming all available PIDs.</li>
  <li><strong>Version changelog</strong>: Worker node patch updates are available for Kubernetes [1.16.3_1518](/docs/containers?topic=containers-changelog#1163_1518_worker), [1.15.6_1525](/docs/containers?topic=containers-changelog#1156_1525_worker), [1.14.9_1541](/docs/containers?topic=containers-changelog#1149_1541_worker), and [1.13.12_1544](/docs/containers?topic=containers-changelog#11312_1544_worker).</li></ul></td>
</tr>
<tr>
<td>22 November 2019</td>
<td><ul>
<li><strong>Bring your own DNS for load balancers</strong>: Added steps for bringing your own custom domain for [NLBs](/docs/containers?topic=containers-loadbalancer_hostname#loadbalancer_hostname_dns) in classic clusters and [VPC load balancers](/docs/containers?topic=containers-vpc-lbaas#vpc_lb_dns) in VPC clusters.</li>
<li><strong>Gateway appliance firewalls</strong>: Updated the [required IP addresses and ports](/docs/containers?topic=containers-firewall#vyatta_firewall) that you must open in a public gateway device firewall</li>
<li><strong>Ingress ALB subdomain format</strong>: [Changes are made to the Ingress subdomain](/docs/containers?topic=containers-ingress-about#ingress-resource). New clusters are assigned an Ingress subdomain in the format `<cluster_name>.<globally_unique_account_HASH>-0000.<region>.containers.appdomain.cloud` and an Ingress secret in the format `<cluster_name>.<globally_unique_account_HASH>-0000`. Any existing clusters that use the `<cluster_name>.<region>.containers.mybluemix.net` subdomain are assigned a CNAME record that maps to a `<cluster_name>.<region_or_zone>.containers.appdomain.cloud` subdomain.</li>
</ul></td>
</tr>
<tr>
<td>21 November 2019</td>
<td><ul>
<li><strong>Ingress ALB changelog</strong>: Updated the [ALB `nginx-ingress` image to 597 and the `ingress-auth` image to build 353](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
<li><strong>Version changelog</strong>: Master patch updates are available for Kubernetes [1.16.3_1518](/docs/containers?topic=containers-changelog#1163_1518), [1.15.6_1525](/docs/containers?topic=containers-changelog#1156_1525), [1.14.9_1541](/docs/containers?topic=containers-changelog#1149_1541), and [1.13.12_1544](/docs/containers?topic=containers-changelog#11312_1544).</li>
</ul></td>
</tr>
<tr>
<td>19 November 2019</td>
<td><ul>
<li><strong>Istio managed add-on GA</strong>: The Istio managed add-on is generally available for Kubernetes version 1.16 clusters. In Kubernetes version 1.16 clusters, you can [install the Istio add-on](/docs/containers?topic=containers-istio#install_116) or [update your existing beta add-on to the latest version](/docs/containers?topic=containers-istio#istio_update).</li>
<li><strong>Fluentd component changes</strong>: The Fluentd component is created for your cluster only if you [create a logging configuration to forward logs to a syslog server](/docs/containers?topic=containers-health#configuring). If no logging configurations for syslog exist in your cluster, the Fluentd component is removed automatically. If you do not forward logs to syslog and want to ensure that the Fluentd component is removed from your cluster, [automatic updates to Fluentd must be enabled](/docs/containers?topic=containers-update#logging-up).</li>
<li><strong>Bringing your own Ingress controller in VPC clusters</strong>: Added [steps](/docs/containers?topic=containers-ingress-user_managed#user_managed_vpc) for exposing your Ingress controller by creating a VPC load balancer and subdomain.</li>
</ul></td>
</tr>
<tr>
<td>14 November 2019</td>
<td><strong>New! Diagnostics and Debug Tool add-on</strong>: The [{{site.data.keyword.containerlong_notm}} Diagnostics and Debug Tool](/docs/containers?topic=containers-cs_troubleshoot#debug_utility) is now available as a cluster add-on.</td>
</tr>
<tr>
<td>11 November 2019</td>
<td><ul>
<li><strong>Accessing your cluster</strong>: Added an [Accessing Kubernetes clusters page](/docs/containers?topic=containers-access_cluster).</li>
<li><strong>Exposing apps that are external to your cluster by using Ingress</strong>: Added information for how to use the [`proxy-external-service` Ingress annotation](/docs/containers?topic=containers-ingress#proxy-external) to include an app that is external to your cluster in Ingress application load balancing.</li>
<li><strong>Version changelog</strong>: Worker node patch updates are available for Kubernetes [1.16.2_1515](/docs/containers?topic=containers-changelog#1162_1515_worker), [1.15.5_1522](/docs/containers?topic=containers-changelog#1155_1522_worker), [1.14.8_1538](/docs/containers?topic=containers-changelog#1148_1538_worker), and [1.13.12_1541](/docs/containers?topic=containers-changelog#11312_1541_worker).</li>
</ul></td>
</tr>
<tr>
<td>07 November 2019</td>
<td><ul><li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.4.51](/docs/containers?topic=containers-cs_cli_changelog).</li>
<li><strong>Ingress ALB changelog</strong>: Updated the [ALB `ingress-auth` image to build 345](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li></ul></td>
</tr>
<tr>
<td>05 November 2019</td>
<td><strong>New! Adding classic infrastructure servers to gateway-enabled classic clusters (Beta)</strong>: If you have non-containerized workloads on a classic IBM Cloud infrastructure virtual server or bare metal server, you can connect those workloads to the workloads in your gateway-enabled classic cluster by [adding the server instance to your cluster network](/docs/containers?topic=containers-add_workers#gateway_vsi).</td>
</tr>
<tr>
<td>04 November 2019</td>
<td><ul><li><strong>New! Kubernetes version 1.16</strong>: You can now create clusters that run Kubernetes version 1.16. To update an existing cluster, see the [Version 1.16 preparation actions](/docs/containers?topic=containers-cs_versions#cs_v116).</li>
<li><strong>Deprecated: Kubernetes version 1.13</strong>: With the release of version 1.16, clusters that run version 1.13 are deprecated. Consider [updating to 1.14](/docs/containers?topic=containers-cs_versions#cs_v114) today.</li>
<li><strong>Unsupported: Kubernetes version 1.12</strong>: With the release of version 1.16, clusters that run version 1.12 are unsupported. To continue receiving important security updates and support, you must [update the cluster to a supported version](/docs/containers?topic=containers-cs_versions#prep-up) immediately.</li></ul></td>
</tr>
<tr>
<td>01 November 2019</td>
<td><strong>New! Keep your own key (KYOK) support (beta)</strong>: You can now [enable several key management service (KMS) providers](/docs/containers?topic=containers-encryption#kms), so that you can use your own root key to encrypt the secrets in your cluster.</td>
</tr>
</tbody>
</table>

## October 2019
{: #oct19}

<table summary="The table shows release notes. Rows are to be read from the left to right, with the date in column one, the title of the feature in column two and a description in column three.">
<caption>Documentation updates in October 2019</caption>
<thead>
<th>Date</th>
<th>Description</th>
</thead>
<tbody>
<tr>
<td>28 October 2019</td>
<td><ul>
<li><strong>New! Resource groups for VPC clusters</strong>: You can now [create Kubernetes clusters](/docs/containers?topic=containers-vpc_ks_tutorial) in different resource groups than the resource group of the Virtual Private Cloud (VPC).</li>
<li><strong>Version changelogs</strong>: Worker node patch updates are available for Kubernetes [1.15.5_1521](/docs/containers?topic=containers-changelog#1155_1521), [1.14.8_1537](/docs/containers?topic=containers-changelog#1148_1537), [1.13.12_1540](/docs/containers?topic=containers-changelog#11312_15409), [1.12.10_1570](/docs/containers?topic=containers-changelog#11210_1570), and OpenShift [3.11.153_1529_openshift](/docs/openshift?topic=openshift-openshift_changelog#311153_1528).</li></ul></td>
</tr><tr>
<td>24 October 2019</td>
  <td><ul>
    <li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.4.42](/docs/containers?topic=containers-cs_cli_changelog).</li>
    <li><strong>Scaling down file storage</strong>: Added steps for [scaling down the default file storage plug-in](/docs/containers?topic=containers-file_storage#file_scaledown_plugin) in classic clusters.</li>
    <li><strong>Ingress subdomain troubleshooting</strong>: Added troubleshooting steps for when [no Ingress subdomain exists after cluster creation](/docs/containers?topic=containers-cs_troubleshoot_network#ingress_subdomain)</li>
  </ul></td>
</tr>
<tr>
<td>23 October 2019</td>
  <td><ul>
    <li><strong>Ingress ALB changelog</strong>: Updated the ALB [`nginx-ingress` image to build 584 and `ingress-auth` image build to 344](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
    <li><strong>Ingress annotations</strong>: Added the [`proxy-ssl-verify-depth` and `proxy-ssl-name` optional parameters to the `ssl-services` annotation](/docs/containers?topic=containers-ingress_annotation#ssl-services).</li></ul></td>
</tr>
<tr>
  <td>22 October 2019</td>
  <td><strong>Version changelogs</strong>: Master patch updates are available for Kubernetes [1.15.5_1520](/docs/containers?topic=containers-changelog#1155_1520), [1.14.8_1536](/docs/containers?topic=containers-changelog#1148_1536), [1.13.12_1539](/docs/containers?topic=containers-changelog#11312_1539), and OpenShift [3.11.146_1528_openshift](/docs/openshift?topic=openshift-openshift_changelog#311146_1528).</td>
</tr>
<tr>
  <td>17 October 2019</td>
  <td><ul><li><strong>New! Cluster autoscaler</strong>: The cluster autoscaler is available for [private network-only clusters](/docs/containers?topic=containers-ca#ca_private_cluster). To get started, [update to the latest Helm chart version](/docs/containers?topic=containers-ca#ca_helm_up).</li>
  <li><strong>New DevOps tutorial</strong>: Learn how to [set up your own DevOps toolchain](/docs/containers?topic=containers-tutorial-byoc-kube) and configure continuous delivery pipeline stages to deploy your containerized app that is stored in GitHub to a cluster in {{site.data.keyword.containerlong_notm}}.</li></ul></td>
</tr>
<tr>
  <td>14 October 2019</td>
  <td><ul>
  <li><strong>Calico MTU</strong>: Added [steps](/docs/containers?topic=containers-kernel#calico-mtu) for changing the Calico plug-in maximum transmission unit (MTU) to meet the network throughput requirements of your environment.</li>
  <li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.4.38](/docs/containers?topic=containers-cs_cli_changelog).</li>
  </li>
  <li><strong>Creating DNS subdomains for VPC load balancers and private Ingress ALBs</strong>: Added steps for [registering a VPC load balancer hostname with a DNS subdomain](/docs/containers?topic=containers-vpc-lbaas#vpc_dns) and for [exposing apps to a private network](/docs/containers?topic=containers-ingress#ingress_expose_vpc_private) in VPC clusters.</li>
  <li><strong>Let's Encrypt rate limits for Ingress</strong>: Added [troubleshooting steps] for when no subdomain or secret is generated for the Ingress ALB when you create or delete clusters of the same name.</li>
  <li><strong>Version changelogs</strong>: Worker node patch updates are available for Kubernetes [1.15.4_1519](/docs/containers?topic=containers-changelog#1154_1519_worker), [1.14.7_1535](/docs/containers?topic=containers-changelog#1147_1535_worker), [1.13.11_1538](/docs/containers?topic=containers-changelog#11311_1538_worker), [1.12.10_1569](/docs/containers?topic=containers-changelog#11210_1569_worker), and OpenShift [3.11.146_1527_openshift](/docs/openshift?topic=openshift-openshift_changelog#311146_1527).</li>
  </ul></td>
</tr>
<tr>
  <td>03 October 2019</td>
  <td><ul>
  <li><strong>Ingress ALB changelog</strong>: Updated the ALB [`nginx-ingress` image to build 579 and `ingress-auth` image build to 341](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  <li><strong>DevOps toolchain</strong>: You can now use the **DevOps** tab on the cluster details page to configure your DevOps toolchain. For more information, see [Setting up a continuous delivery pipeline for a cluster](/docs/containers?topic=containers-app#continuous-delivery-pipeline).</li>
  <li><strong>Security for VPC clusters</strong>: Added information for how to achieve [network segmentation and privacy in VPC clusters](/docs/containers?topic=containers-security#network_segmentation_vpc).</li>
  </ul>
  </td>
</tr>
<tr>
  <td>01 October 2019</td>
  <td><ul>
    <li><strong>End of service of {{site.data.keyword.loganalysislong_notm}} and {{site.data.keyword.monitoringlong_notm}}</strong>: Removed steps for using {{site.data.keyword.loganalysislong_notm}} and {{site.data.keyword.monitoringlong_notm}} to work with cluster logs and metrics. You can collect logs and metrics for your cluster by setting up [{{site.data.keyword.la_full_notm}}](/docs/containers?topic=containers-health#logdna) and [{{site.data.keyword.mon_full_notm}}](/docs/services/Monitoring-with-Sysdig/tutorials?topic=Sysdig-kubernetes_cluster#kubernetes_cluster) instead.</li>
    <li><strong>New! Gateway-enabled classic clusters</strong>: Keep your compute workloads private and allow limited public connectivity to your classic cluster by enabling a gateway. You can enable a gateway only on standard, Kubernetes clusters during cluster creation.<br><br>
    When you enable a gateway on a classic cluster, the cluster is created with a `compute` worker pool of compute worker nodes that are connected to a private VLAN only, and a `gateway` worker pool of gateway worker nodes that are connected to public and private VLANs. Traffic into or out of the cluster is routed through the gateway worker nodes, which provide your cluster with limited public access. For more information, check out the following links:<ul>
      <li>[Using a gateway-enabled cluster](/docs/containers?topic=containers-plan_clusters#gateway)</li>
      <li>[Isolating networking workloads to edge nodes in classic gateway-enabled clusters](/docs/containers?topic=containers-edge#edge_gateway)</li>
      <li>Flow of traffic to apps when using an [NLB 1.0](/docs/containers?topic=containers-loadbalancer-about#v1_gateway), an [NLB 2.0](/docs/containers?topic=containers-loadbalancer-about#v2_gateway), or [Ingress ALBs](/docs/containers?topic=containers-ingress-about#classic-gateway)</li></ul>
    Ready to get started? [Create a standard classic cluster with a gateway in the CLI.](/docs/containers?topic=containers-clusters#gateway_cluster_cli)</li>
    <li><strong>Using the {{site.data.keyword.cos_full_notm}} plug-in in a VPC cluster</strong>: To work with the {{site.data.keyword.cos_full_notm}} plug-in in a VPC cluster, added steps for [creating a customized storage class](/docs/containers?topic=containers-object_storage#customized_storageclass_vpc) that uses the `direct` service endpoint of your {{site.data.keyword.cos_full_notm}} service instance.</li>
    <li><strong>Version changelogs</strong>: Patch updates are available for Kubernetes [1.15.4_1518](/docs/containers?topic=containers-changelog#1154_1518), [1.14.7_1534](/docs/containers?topic=containers-changelog#1147_1534), [1.13.11_1537](/docs/containers?topic=containers-changelog#11311_1537), and [1.12.10_1568](/docs/containers?topic=containers-changelog#11210_1568_worker).</li>
  </ul>
  </td>
</tr>
</tbody></table>

<br />


## September 2019
{: #sept19}

<table summary="The table shows release notes. Rows are to be read from the left to right, with the date in column one, the title of the feature in column two and a description in column three.">
<caption>Documentation updates in September 2019</caption>
<thead>
<th>Date</th>
<th>Description</th>
</thead>
<tbody>
<tr>
  <td>27 September 2019</td>
  <td><strong>{{site.data.keyword.cos_full_notm}} supported in VPC clusters</strong>: You can now provision {{site.data.keyword.cos_full_notm}} for your apps that run in a VPC cluster. For more information, see [Storing data on {{site.data.keyword.cos_full_notm}}](/docs/containers?topic=containers-object_storage).</td>
</tr>
<tr>
  <td>24 September 2019</td>
  <td><ul>
  <li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.4.31](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the ALB [`nginx-ingress` image to build 566](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  <li><strong>Managing cluster network traffic for VPC clusters</strong>: Includes the following new content:<ul>
    <li>[Opening required ports and IP addresses in your firewall for VPC clusters](/docs/containers?topic=containers-vpc-firewall)</li>
    <li>[Controlling traffic with VPC ACLs and network policies](/docs/containers?topic=containers-vpc-network-policy)</li>
    <li>[Setting up VPC VPN connectivity](/docs/containers?topic=containers-vpc-vpnaas)</li>
    <li>[Configuring CoreDNS for VPC clusters](/docs/containers?topic=containers-vpc_dns)</li></ul></li>
  <li><strong>Customizing PVC settings for VPC Block Storage</strong>: You can create a customized storage class or use a Kubernetes secret to create VPC Block Storage with the configuration that you want. For more information, see [Customizing the default settings](/docs/containers?topic=containers-vpc-block#vpc-customize-default).</li>
  </ul></td>
</tr>
<tr>
  <td>19 September 2019</td>
  <td><strong>Sending custom Ingress certificates to legacy clients</strong>: Added [steps](/docs/containers?topic=containers-ingress-settings#default_server_cert) for ensuring that your custom certificate, instead of the default IBM-provided certificate, is sent by the Ingress ALB to legacy clients that do not support SNI.</td>
</tr>
<tr>
  <td>16 September 2019</td>
  <td><ul><li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.4.23](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>{{site.data.keyword.at_full_notm}} events</strong>: Added information about [which {{site.data.keyword.at_short}} location your events are sent to](/docs/containers?topic=containers-at_events#at-ui) based on the {{site.data.keyword.containerlong_notm}} location where the cluster is located.</li>
  <li><strong>Version changelogs</strong>: Worker node patch updates are available for Kubernetes [1.15.3_1517](/docs/containers?topic=containers-changelog#1153_1517_worker), [1.14.6_1533](/docs/containers?topic=containers-changelog#1146_1533_worker), [1.13.10_1536](/docs/containers?topic=containers-changelog#11310_1536_worker), and [1.12.10_1567](/docs/containers?topic=containers-changelog#11210_1567_worker).</li></ul>
  </td>
</tr>
<tr>
  <td>13 September 2019</td>
  <td><ul>
    <li><strong>Entitled software</strong>: If you have licensed products from your [MyIBM.com ![External link icon](../icons/launch-glyph.svg "External link icon")](https://myibm.ibm.com) container software library, you can [set up your cluster to pull images from the entitled registry](/docs/containers?topic=containers-images#secret_entitled_software).</li>
  <li><strong>`script update` command</strong>: Added [steps for using the `script update` command](/docs/containers?topic=containers-cli-plugin-kubernetes-service-cli#script_update) to prepare your automation scripts for the release of version 1.0 of the {{site.data.keyword.containerlong_notm}} plug-in.</li></ul></td>
</tr>
<tr>
  <td>12 September 2019</td>
  <td><strong>Ingress ALB changelog</strong>: Updated the ALB [`nginx-ingress` image to build 552](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</td>
</tr>
<tr>
  <td>05 September 2019</td>
  <td><strong>Ingress ALB changelog</strong>: Updated the ALB [`ingress-auth` image to build 340](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</td>
</tr>
<tr>
  <td>04 September 2019</td>
  <td><ul><li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.4.3](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>IAM whitelisting</strong>: If you use an IAM whitelist, you must [whitelist the CIDRs of the {{site.data.keyword.containerlong_notm}} control plane](/docs/containers?topic=containers-firewall#iam_whitelist) for the zones in the region where your cluster is located so that {{site.data.keyword.containerlong_notm}} can create Ingress ALBs and `LoadBalancers` in your cluster.</li></ul></td>
</tr>
<tr>
  <td>03 September 2019</td>
  <td><ul><li><strong>New! {{site.data.keyword.containerlong_notm}} plug-in version `0.4`</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for multiple changes in the [release of version 0.4.1](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>Version changelog</strong>: Worker node patch updates are available for Kubernetes [1.15.3_1516](/docs/containers?topic=containers-changelog#1153_1516_worker), [1.14.6_1532](/docs/containers?topic=containers-changelog#1146_1532_worker), [1.13.10_1535](/docs/containers?topic=containers-changelog#11310_1535_worker), [1.12.10_1566](/docs/containers?topic=containers-changelog#11210_1566_worker), and OpenShift [3.11.135_1523](/docs/openshift?topic=openshift-openshift_changelog#311135_1523_worker).</li></ul></td>
</tr>
</tbody></table>

<br />


## August 2019
{: #aug19}

<table summary="The table shows release notes. Rows are to be read from the left to right, with the date in column one, the title of the feature in column two and a description in column three.">
<caption>Documentation updates in August 2019</caption>
<thead>
<th>Date</th>
<th>Description</th>
</thead>
<tbody>
<tr>
  <td>29 August 2019</td>
  <td><strong>Forwarding Kubernetes API audit logs to {{site.data.keyword.la_full_notm}}</strong>: Added steps to [create an audit webhook in your cluster](/docs/containers?topic=containers-health#webhook_logdna) to collect Kubernetes API audit logs from your cluster and forward them to {{site.data.keyword.la_full_notm}}.</td>
</tr>
<tr>
  <td>28 August 2019</td>
  <td><ul>
  <li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.3.112](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>Version changelogs</strong>: Updated the changelogs for [1.15.3_1515](/docs/containers?topic=containers-changelog#1153_1515), [1.14.6_1531](/docs/containers?topic=containers-changelog#1146_1531), [1.13.10_1534](/docs/containers?topic=containers-changelog#11310_1534), and [1.12.10_1565](/docs/containers?topic=containers-changelog#11210_1565) master fix pack updates.</li>
  </ul></td>
</tr>
<tr>
  <td>26 August 2019</td>
  <td><ul>
  <li><strong>Cluster autoscaler</strong>: With the latest version of the cluster autoscaler, you can [enable autoscaling for worker pools during the Helm chart installation](/docs/containers?topic=containers-ca#ca_helm) instead of modifying the config map after installation.</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the ALB [`nginx-ingress` image to build 524 and `ingress-auth` image to build 337](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li></ul></td>
</tr>
<tr>
  <td>23 August 2019</td>
  <td><ul>
  <li><strong>App networking in VPC</strong>: Updated the [Planning in-cluster and external networking for apps](/docs/containers?topic=containers-cs_network_planning) topic with information for planning app networking in a VPC cluster.</li>
  <li><strong>Istio in VPC</strong>: Updated the [managed Istio add-on](/docs/containers?topic=containers-istio) topic with information for using Istio in a VPC cluster.</li>
  <li><strong>Remove bound services from cluster</strong>: Added instructions for how to remove an {{site.data.keyword.cloud_notm}} service that you added to a cluster by using service binding. For more information, see [Removing a service from a cluster](/docs/containers?topic=containers-service-binding#unbind-service).</li></ul></td>
</tr>
<tr>
  <td>20 August 2019</td>
  <td><strong>Ingress ALB changelog</strong>: Updated the ALB [`nginx-ingress` image to build 519](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog) for a `custom-ports` bug fix.</td>
</tr>
<tr>
  <td>19 August 2019</td>
  <td><ul>
  <li><strong>New! Virtual Private Cloud</strong>: You can create standard Kubernetes clusters on classic infrastructure in the next generation of the {{site.data.keyword.cloud_notm}} platform, in your [Virtual Private Cloud](/docs/vpc-on-classic?topic=vpc-on-classic-about). VPC gives you the security of a private cloud environment with the dynamic scalability of a public cloud. Classic on VPC clusters are available for only standard, Kubernetes clusters and are not supported in free or OpenShift clusters.<br><br>
  With classic clusters in VPC, {{site.data.keyword.containerlong_notm}} introduces version 2 of the API, which supports multiple infrastructure providers for your clusters. Your cluster network setup also changes, from worker nodes that use public and private VLANs and the public service endpoint to worker nodes that are on a private subnet only and have the private service endpoint enabled. For more information, check out the following links:<ul>
    <li>[Overview of Classic and VPC infrastructure providers](/docs/containers?topic=containers-infrastructure_providers)</li>
    <li>[About the v2 API](/docs/containers?topic=containers-cs_api_install#api_about)</li>
    <li>[Comparison of Classic and VPC commands for the CLI](/docs/containers?topic=containers-cli-plugin-kubernetes-service-cli#cli_classic_vpc_about)</li>
    <li>[Understanding network basics of VPC clusters](/docs/containers?topic=containers-plan_clusters#vpc_basics)</li></ul>
  Ready to get started? Try out the [Creating a classic cluster in your VPC tutorial](/docs/containers?topic=containers-vpc_ks_tutorial).</li>
  <li><strong>Kubernetes 1.14</strong>: [Kubernetes 1.14](/docs/containers?topic=containers-cs_versions#version_types) is now the default version.</li>
  </ul>
  </td>
</tr>
<tr>
  <td>17 August 2019</td>
  <td><ul>
  <li><strong>{{site.data.keyword.at_full}}</strong>: The [{{site.data.keyword.at_full_notm}} service](/docs/containers?topic=containers-at_events) is now supported for you to view, manage, and audit user-initiated activities in your clusters.</li>
  <li><strong>Version changelogs</strong>: Updated the changelogs for [1.15.2_1514](/docs/containers?topic=containers-changelog#1152_1514), [1.14.5_1530](/docs/containers?topic=containers-changelog#1145_1530), [1.13.9_1533](/docs/containers?topic=containers-changelog#1139_1533), and [1.12.10_1564](/docs/containers?topic=containers-changelog#11210_1564) master fix pack updates.</li></ul></td>
</tr>
<tr>
  <td>15 August 2019</td>
  <td><ul>
  <li><strong>App deployments</strong>: Added steps for [copying deployments from one cluster to another](/docs/containers?topic=containers-app#copy_apps_cluster).</li>
  <li><strong>FAQs</strong>: Added an FAQ about [free clusters](/docs/containers?topic=containers-faqs#faq_free).</li>
  <li><strong>Istio</strong>: Added steps for [exposing Istio-managed apps with TLS termination](/docs/containers?topic=containers-istio-mesh#tls), [securing in-cluster traffic by enabling mTLS](/docs/containers?topic=containers-istio-mesh#mtls), and [Updating the Istio add-ons](/docs/containers?topic=containers-istio#istio_update).</li>
  <li><strong>Knative</strong>: Added instructions for how to [use volumes to access secrets and config maps](/docs/containers?topic=containers-serverless-apps-knative#knative-access-volume), [pull images from a private registry](/docs/containers?topic=containers-serverless-apps-knative#knative-private-registry), [scale apps based on CPU usage](/docs/containers?topic=containers-serverless-apps-knative#scale-cpu-vs-number-requests), [change the default container port](/docs/containers?topic=containers-serverless-apps-knative#knative-container-port), and [change the `scale-to-zero-grace-period`](/docs/containers?topic=containers-serverless-apps-knative#knative-idle-time).</li>
  <li><strong>Version changelogs</strong>: Updated the changelogs for [1.15.2_1513](/docs/containers?topic=containers-changelog#1152_1513), [1.14.5_1529](/docs/containers?topic=containers-changelog#1145_1529), [1.13.9_1532](/docs/containers?topic=containers-changelog#1139_1532), and [1.12.10_1563](/docs/containers?topic=containers-changelog#11210_1563) master fix pack updates.</li></ul></td>
</tr>
<tr>
  <td>12 August 2019</td>
  <td><ul>
  <li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.3.103](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the ALB `ingress-auth` image to build 335 for [`musl libc` vulnerabilities](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li></ul></td>
</tr>
<tr>
  <td>05 August 2019</td>
  <td><ul>
  <li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.3.99](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>New! `NodeLocal` DNS caching (beta)</strong>: For clusters that run Kubernetes 1.15 or later, you can set up improved cluster DNS performance with [`NodeLocal` DNS caching](/docs/containers?topic=containers-cluster_dns#dns_cache).</li>
  <li><strong>New! Version 1.15</strong>: You can create community Kubernetes clusters that run version 1.15. To update from a previous version, review the [1.15 changes](/docs/containers?topic=containers-cs_versions#cs_v115).</li>
  <li><strong>Deprecated: Version 1.12</strong>: Kubernetes version 1.12 is deprecated. Review the [changes across versions](/docs/containers?topic=containers-cs_versions), and update to a more recent version.</li>
  <li><strong>Version changelogs</strong>: Updated the changelogs for [1.14.4_1527](/docs/containers?topic=containers-changelog#1144_1527_worker), [1.13.8_1530](/docs/containers?topic=containers-changelog#1138_1530_worker), and [1.12.10_1561](/docs/containers?topic=containers-changelog#11210_1561_worker) worker node patch updates.</li></ul></td>
</tr>
</tbody></table>

## July 2019
{: #jul19}

<table summary="The table shows release notes. Rows are to be read from the left to right, with the date in column one, the title of the feature in column two and a description in column three.">
<caption>{{site.data.keyword.containerlong_notm}} documentation updates in July 2019</caption>
<thead>
<th>Date</th>
<th>Description</th>
</thead>
<tbody>
<tr>
  <td>30 July 2019</td>
  <td><ul>
  <li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.3.95](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the ALB `nginx-ingress` image to build 515 for the [ALB pod readiness check](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  <li><strong>Removing subnets from a cluster</strong>: Added steps for removing subnets [in an IBM Cloud infrastructure account](/docs/containers?topic=containers-subnets#remove-sl-subnets) or [in an on-premises network](/docs/containers?topic=containers-subnets#remove-user-subnets) from a cluster. </li>
  </ul></td>
</tr>
<tr>
  <td>23 July 2019</td>
  <td><strong>Fluentd changelog</strong>: Fixes [Alpine vulnerabilities](/docs/containers?topic=containers-cluster-add-ons-changelog#fluentd_changelog).</td>
</tr>
<tr>
  <td>22 July 2019</td>
  <td><ul>
    <li><strong>Version policy</strong>: Increased the [version deprecation](/docs/containers?topic=containers-cs_versions#version_types) period from 30 to 45 days.</li>
    <li><strong>Version changelogs</strong>: Updated the changelogs for [1.14.4_1526](/docs/containers?topic=containers-changelog#1144_1526_worker), [1.13.8_1529](/docs/containers?topic=containers-changelog#1138_1529_worker), and [1.12.10_1560](/docs/containers?topic=containers-changelog#11210_1560_worker) worker node patch updates.</li>
    <li><strong>Version changelog</strong>: [Version 1.11](/docs/containers?topic=containers-changelog#111_changelog) is unsupported.</li></ul>
  </td>
</tr>
<tr>
  <td>17 July 2019</td>
  <td><strong>Ingress ALB changelog</strong>: [Fixes `rbash` vulnerabilities](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).
  </td>
</tr>
<tr>
  <td>15 July 2019</td>
  <td><ul>
  <li><strong>Cluster and worker node ID</strong>: The ID format for clusters and worker nodes is changed. Existing clusters and worker nodes keep their existing IDs. If you have automation that relies on the previous format, update it for new clusters.<ul>
  <li>**Cluster ID**: In the regex format `{a-v0-9}[7]{a-z0-9}[2]{a-v0-9}[11]`</li>
  <li>**Worker node ID**: In the format `kube-<cluster_ID>-<cluster_name_truncated>-<resource_group_truncated>-<worker_ID>`</li></ul></li>
  <li><strong>Ingress ALB changelog</strong>: Updated the [ALB `nginx-ingress` image to build 497](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  <li><strong>Troubleshooting clusters</strong>: Added [troubleshooting steps](/docs/containers?topic=containers-cs_troubleshoot_clusters#cs_totp) for when you cannot manage clusters and worker nodes because the time-based one-time passcode (TOTP) option is enabled for your account.</li>
  <li><strong>Version changelogs</strong>: Updated the changelogs for [1.14.4_1526](/docs/containers?topic=containers-changelog#1144_1526), [1.13.8_1529](/docs/containers?topic=containers-changelog#1138_1529), and [1.12.10_1560](/docs/containers?topic=containers-changelog#11210_1560) master fix pack updates.</li></ul>
  </td>
</tr>
<tr>
  <td>08 July 2019</td>
  <td><ul>
  <li><strong>App networking</strong>: You can now find information about app networking with NLBs and Ingress ALBs in the following pages:
    <ul><li>[Basic and DSR load balancing with network load balancers (NLB)](/docs/containers?topic=containers-cs_sitemap#sitemap-nlb)</li>
    <li>[HTTPS load balancing with Ingress application load balancers (ALB)](/docs/containers?topic=containers-cs_sitemap#sitemap-ingress)</li></ul>
  </li>
  <li><strong>Version changelogs</strong>: Updated the changelogs for [1.14.3_1525](/docs/containers?topic=containers-changelog#1143_1525), [1.13.7_1528](/docs/containers?topic=containers-changelog#1137_1528), [1.12.9_1559](/docs/containers?topic=containers-changelog#1129_1559), and [1.11.10_1564](/docs/containers?topic=containers-changelog#11110_1564) worker node patch updates.</li></ul>
  </td>
</tr>
<tr>
  <td>02 July 2019</td>
  <td><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of version 0.3.58](/docs/containers?topic=containers-cs_cli_changelog).</td>
</tr>
<tr>
  <td>01 July 2019</td>
  <td><ul>
  <li><strong>Infrastructure permissions</strong>: Updated the [classic infrastructure roles](/docs/containers?topic=containers-access_reference#infra) required for common use cases.</li>
  <li><strong>Securing Istio-managed apps with {{site.data.keyword.appid_short_notm}}</strong>: Added information about the [App Identity and Access adapter](/docs/containers?topic=containers-istio-mesh#app-id).</li>
  <li><strong>strongSwan VPN service</strong>: If you install strongSwan in a multizone cluster and use the `enableSingleSourceIP=true` setting, you can now [set `local.subnet` to the `%zoneSubnet` variable and use the `local.zoneSubnet` to specify an IP address as a /32 subnet for each zone of the cluster](/docs/containers?topic=containers-vpn#strongswan_4).</li>
  </ul></td>
</tr>
</tbody></table>


## June 2019
{: #jun19}

<table summary="The table shows release notes. Rows are to be read from the left to right, with the date in column one, the title of the feature in column two and a description in column three.">
<caption>{{site.data.keyword.containerlong_notm}} documentation updates in June 2019</caption>
<thead>
<th>Date</th>
<th>Description</th>
</thead>
<tbody>
<tr>
  <td>24 June 2019</td>
  <td><ul>
  <li><strong>Calico network policies</strong>: Added a set of [public Calico policies](/docs/containers?topic=containers-network_policies#isolate_workers_public) and expanded the set of [private Calico policies](/docs/containers?topic=containers-network_policies#isolate_workers) to protect your cluster on public and private networks.</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the [ALB `nginx-ingress` image to build 477](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  <li><strong>Service limitations</strong>: Updated the [maximum number of pods per worker node limitation](/docs/containers?topic=containers-limitations#tech_limits). For worker nodes that run Kubernetes 1.13.7_1527, 1.14.3_1524, or later and that have more than 11 CPU cores, the worker nodes can support 10 pods per core, up to a limit of 250 pods per worker node.</li>
  <li><strong>Version changelogs</strong>: Added changelogs for [1.14.3_1524](/docs/containers?topic=containers-changelog#1143_1524), [1.13.7_1527](/docs/containers?topic=containers-changelog#1137_1527), [1.12.9_1558](/docs/containers?topic=containers-changelog#1129_1558), and [1.11.10_1563](/docs/containers?topic=containers-changelog#11110_1563) worker node patch updates.</li>
  </ul></td>
</tr>
<tr>
  <td>21 June 2019</td>
  <td>
  <strong>Accessing the Kubernetes master through the private service endpoint</strong>: Added steps for [editing the local Kubernetes configuration file](/docs/containers?topic=containers-access_cluster#access_private_se) when both the public and private service endpoints are enabled, but you want to access the Kubernetes master through the private service endpoint only.
  </td>
</tr>
<tr>
  <td>18 June 2019</td>
  <td><ul>
  <li><strong>CLI changelog</strong>: Updated the {{site.data.keyword.containerlong_notm}} CLI plug-in changelog page for the [release of versions 0.3.47 and 0.3.49](/docs/containers?topic=containers-cs_cli_changelog).</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the [ALB `nginx-ingress` image to build 473 and `ingress-auth` image to build 331](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  <li><strong>Managed add-on versions</strong>: Updated the version of the Istio managed add-on to 1.1.7 and the Knative managed add-on to 0.6.0.</li>
  <li><strong>Removing persistent storage</strong>: Updated the information for how you are billed when you [delete persistent storage](/docs/containers?topic=containers-cleanup).</li>
  <li><strong>Service bindings with private endpoint</strong>: [Added steps](/docs/containers?topic=containers-service-binding) for how to manually create service credentials with the private service endpoint when you bind the service to your cluster.</li>
  <li><strong>Version changelogs</strong>: Updated the changelogs for [1.14.3_1523](/docs/containers?topic=containers-changelog#1143_1523), [1.13.7_1526](/docs/containers?topic=containers-changelog#1137_1526), [1.12.9_1557](/docs/containers?topic=containers-changelog#1129_1557), and [1.11.10_1562](/docs/containers?topic=containers-changelog#11110_1562) patch updates.</li>
  </ul></td>
</tr>
<tr>
  <td>14 June 2019</td>
  <td><ul>
  <li><strong>`kubectl` troubleshooting</strong>: Added a [troubleshooting topic](/docs/containers?topic=containers-cs_troubleshoot_clusters#kubectl_fails) for when you have a `kubectl` client version that is 2 or more versions apart from the server version or the OpenShift version of `kubectl`, which does not work with community Kubernetes clusters.</li>
  <li><strong>Tutorials landing page</strong>: Replaced the related links page with a new [tutorials landing page](/docs/containers?topic=containers-tutorials-ov) for all tutorials that are specific to {{site.data.keyword.containershort_notm}}.</li>
  <li><strong>Tutorial to create a cluster and deploy an app</strong>: Combined the tutorials for creating clusters and deploying apps into one comprehensive [tutorial](/docs/containers?topic=containers-cs_cluster_tutorial).</li>
  <li><strong>Using existing subnets to create a cluster</strong>: To [reuse subnets from an unneeded cluster when you create a new cluster](/docs/containers?topic=containers-subnets#subnets_custom), the subnets must be user-managed subnets that you manually added from an on-premises network. All subnets that were automatically ordered during cluster creation are immediately deleted after you delete a cluster, and you cannot reuse these subnets to create a new cluster.</li>
  </ul></td>
</tr>
<tr>
  <td>12 June 2019</td>
  <td><strong>Aggregating cluster roles</strong>: Added steps for [extending users' existing permissions by aggregating cluster roles](/docs/containers?topic=containers-users#rbac_aggregate).</td>
</tr>
<tr>
  <td>07 June 2019</td>
  <td><ul>
  <li><strong>Access to the Kubernetes master through the private service endpoint</strong>: Added [steps](/docs/containers?topic=containers-access_cluster#access_private_se) to expose the private service endpoint through a private load balancer. After you complete these steps, your authorized cluster users can access the Kubernetes master from a VPN or {{site.data.keyword.cloud_notm}} Direct Link connection.</li>
  <li><strong>{{site.data.keyword.BluDirectLink}}</strong>: Added {{site.data.keyword.cloud_notm}} Direct Link to the [VPN connectivity](/docs/containers?topic=containers-vpn) and [hybrid cloud](/docs/containers?topic=containers-hybrid_iks_icp) pages as a way to create a direct, private connection between your remote network environments and {{site.data.keyword.containerlong_notm}} without routing over the public internet.</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the [ALB `ingress-auth` image to build 330](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  </ul></td>
</tr>
<tr>
  <td>06 June 2019</td>
  <td><ul>
  <li><strong>Fluentd changelog</strong>: Added a [Fluentd version changelog](/docs/containers?topic=containers-cluster-add-ons-changelog#fluentd_changelog).</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the [ALB `nginx-ingress` image to build 470](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  </ul></td>
</tr>
<tr>
  <td>05 June 2019</td>
  <td><strong>CLI reference</strong>: Updated the [CLI reference page](/docs/containers?topic=containers-cli-plugin-kubernetes-service-cli) to reflect multiple changes for the [release of version 0.3.34](/docs/containers?topic=containers-cs_cli_changelog) of the {{site.data.keyword.containerlong_notm}} CLI plug-in.</td>
</tr>
<tr>
  <td>04 June 2019</td>
  <td><strong>Version changelogs</strong>: Updated the changelogs for the [1.14.2_1521](/docs/containers?topic=containers-changelog#1142_1521), [1.13.6_1524](/docs/containers?topic=containers-changelog#1136_1524), [1.12.9_1555](/docs/containers?topic=containers-changelog#1129_1555), and [1.11.10_1561](/docs/containers?topic=containers-changelog#11110_1561) patch releases.
  </td>
</tr>
<tr>
  <td>03 June 2019</td>
  <td><ul>
  <li><strong>Bringing your own Ingress controller</strong>: Updated the [steps](/docs/containers?topic=containers-ingress-user_managed) to reflect changes to the default community controller and to require a health check for controller IP addresses in multizone clusters.</li>
  <li><strong>{{site.data.keyword.cos_full_notm}}</strong>: Updated the [steps](/docs/containers?topic=containers-object_storage#install_cos) to install the {{site.data.keyword.cos_full_notm}} plug-in with or without the Helm server, Tiller.</li>
  <li><strong>Ingress ALB changelog</strong>: Updated the [ALB `nginx-ingress` image to build 467](/docs/containers?topic=containers-cluster-add-ons-changelog#alb_changelog).</li>
  <li><strong>Kustomize</strong>: Added an example of [reusing Kubernetes configuration files across multiple environments with Kustomize](/docs/containers?topic=containers-app#kustomize).</li>
  <li><strong>Razee</strong>: Added [Razee ![External link icon](../icons/launch-glyph.svg "External link icon")](https://github.com/razee-io/Razee) to the supported integrations to visualize deployment information in the cluster and to automate the deployment of Kubernetes resources. </li></ul>
  </td>
</tr>
</tbody></table>


## May 2019
{: #may19}

<table summary="The table shows release notes. Rows are to be read from the left to right, with the date in column one, the title of the feature in column two and a description in column three.">
<caption>{{site.data.keyword.containerlong_notm}} documentation updates in May 2019</caption>
<thead>
<th>Date</th>
<th>Description</th>
</thead>
<tbody>
<tr>
  <td>30 May 2019</td>
  <td><ul>
  <li><strong>CLI reference</strong>: Updated the [CLI reference page](/docs/containers?topic=containers-cli-plugin-kubernetes-service-cli) to reflect multiple changes for the [release of version 0.3.33](/docs/containers?topic=containers-cs_cli_changelog) of the {{site.data.keyword.containerlong_notm}} CLI plug-in.</li>
  <li><strong>Troubleshooting storage</strong>: <ul>
  <li>Added a file and block storage troubleshooting topic for [PVC pending states](/docs/containers?topic=containers-cs_troubleshoot_storage#file_pvc_pending).</li>
  <li>Added a block storage troubleshooting topic for when [an app cannot access or write to PVC](/docs/containers?topic=containers-cs_troubleshoot_storage#block_app_failures).</li>
  </ul></li>
  </ul></td>
</tr>
<tr>
  <td>28 May 2019</td>
  <td><ul>
  <li><strong>Cluster add-ons changelog</strong>: Updated the [ALB `nginx-ingress` image to build 462](/docs/containers?topic=containers-cluster-add-ons-changelog).</li>
  <li><strong>Troubleshooting registry</strong>: Added a [troubleshooting topic](/docs/containers?topic=containers-cs_troubleshoot_clusters#ts_image_pull_create) for when your cluster cannot pull images from {{site.data.keyword.registryfull}} due to an error during cluster creation.
  </li>
  <li><strong>Troubleshooting storage</strong>: <ul>
  <li>Added a topic for [debugging persistent storage failures](/docs/containers?topic=containers-cs_troubleshoot_storage#debug_storage).</li>
  <li>Added a troubleshooting topic for [PVC creation failures due to missing permissions](/docs/containers?topic=containers-cs_troubleshoot_storage#missing_permissions).</li>
  </ul></li>
  </ul></td>
</tr>
<tr>
  <td>23 May 2019</td>
  <td><ul>
  <li><strong>CLI reference</strong>: Updated the [CLI reference page](/docs/containers?topic=containers-cli-plugin-kubernetes-service-cli) to reflect multiple changes for the [release of version 0.3.28](/docs/containers?topic=containers-cs_cli_changelog) of the {{site.data.keyword.containerlong_notm}} CLI plug-in.</li>
  <li><strong>Cluster add-ons changelog</strong>: Updated the [ALB `nginx-ingress` image to build 457](/docs/containers?topic=containers-cluster-add-ons-changelog).</li>
  <li><strong>Cluster and worker states</strong>: Updated the [Logging and monitoring page](/docs/containers?topic=containers-health#states) to add reference tables about cluster and worker node states.</li>
  <li><strong>Cluster planning and creation</strong>: You can now find information about cluster planning, creation, and removal and network planning in the following pages:
    <ul><li>[Planning your cluster network setup](/docs/containers?topic=containers-plan_clusters)</li>
    <li>[Planning your cluster for high availability](/docs/containers?topic=containers-ha_clusters)</li>
    <li>[Planning your worker node setup](/docs/containers?topic=containers-planning_worker_nodes)</li>
    <li>[Creating clusters](/docs/containers?topic=containers-clusters)</li>
    <li>[Adding worker nodes and zones to clusters](/docs/containers?topic=containers-add_workers)</li>
    <li>[Removing clusters](/docs/containers?topic=containers-remove)</li>
    <li>[Changing service endpoints or VLAN connections](/docs/containers?topic=containers-cs_network_cluster)</li></ul>
  </li>
  <li><strong>Cluster version updates</strong>: Updated the [unsupported versions policy](/docs/containers?topic=containers-cs_versions) to note that you cannot update clusters if the master version is three or more versions behind the oldest supported version. You can view if the cluster is **unsupported** by reviewing the **State** field when you list clusters.</li>
  <li><strong>Istio</strong>: Updated the [Istio page](/docs/containers?topic=containers-istio) to remove the limitation that Istio does not work in clusters that are connected to a private VLAN only. Added a step to the [Updating managed add-ons topic](/docs/containers?topic=containers-managed-addons#updating-managed-add-ons) to re-create Istio gateways that use TLS sections after the update of the Istio managed add-on is complete.</li>
  <li><strong>Popular topics</strong>: Replaced the popular topics with this release notes page for new features and updates that are specific to {{site.data.keyword.containershort_notm}}. For the latest information on {{site.data.keyword.cloud_notm}} products, check out the [Announcements](https://www.ibm.com/cloud/blog/announcements).</li>
  </ul></td>
</tr>
<tr>
  <td>20 May 2019</td>
  <td><strong>Version changelogs</strong>: Added [worker node fix pack changelogs](/docs/containers?topic=containers-changelog).</td>
</tr>
<tr>
  <td>16 May 2019</td>
  <td><ul>
  <li><strong>CLI reference</strong>: Updated the [CLI reference page](/docs/containers?topic=containers-cli-plugin-kubernetes-service-cli) to add COS endpoints for `logging collect` commands and to clarify that `cluster master refresh` restarts the Kubernetes master components.</li>
  <li><strong>Unsupported: Kubernetes version 1.10</strong>: [Kubernetes version 1.10](/docs/containers?topic=containers-cs_versions#cs_v114) is now unsupported.</li>
  </ul></td>
</tr>
<tr>
  <td>15 May 2019</td>
  <td><ul>
  <li><strong>Default Kubernetes version</strong>: The default Kubernetes version is now 1.13.6.</li>
  <li><strong>Service limits</strong>: Added a [service limitations topic](/docs/containers?topic=containers-limitations#tech_limits).</li>
  </ul></td>
</tr>
<tr>
  <td>13 May 2019</td>
  <td><ul>
  <li><strong>Version changelogs</strong>: Added that new patch updates are available for [1.14.1_1518](/docs/containers?topic=containers-changelog#1141_1518), [1.13.6_1521](/docs/containers?topic=containers-changelog#1136_1521), [1.12.8_1552](/docs/containers?topic=containers-changelog#1128_1552), [1.11.10_1558](/docs/containers?topic=containers-changelog#11110_1558), and [1.10.13_1558](/docs/containers?topic=containers-changelog#11013_1558).</li>
  <li><strong>Worker node flavors</strong>: Removed all [virtual machine worker node flavors](/docs/containers?topic=containers-planning_worker_nodes#vm) that are 48 or more cores per [cloud status ![External link icon](../icons/launch-glyph.svg "External link icon")](https://cloud.ibm.com/status?component=containers-kubernetes&selected=status). You can still provision [bare metal worker nodes](/docs/containers?topic=containers-planning_worker_nodes#bm) with 48 or more cores.</li></ul></td>
</tr>
<tr>
  <td>08 May 2019</td>
  <td><ul>
  <li><strong>API</strong>: Added a link to the [global API swagger docs ![External link icon](../icons/launch-glyph.svg "External link icon")](https://containers.cloud.ibm.com/global/swagger-global-api/#/).</li>
  <li><strong>Cloud Object Storage</strong>: [Added a troubleshooting guide for Cloud Object Storage](/docs/containers?topic=containers-cs_troubleshoot_storage#cos_pvc_pending) in your {{site.data.keyword.containerlong_notm}} clusters.</li>
  <li><strong>Kubernetes strategy</strong>: Added a topic about [What knowledge and technical skills are good to have before I move my apps to {{site.data.keyword.containerlong_notm}}?](/docs/containers?topic=containers-strategy#knowledge).</li>
  <li><strong>Kubernetes version 1.14</strong>: Added that the [Kubernetes 1.14 release](/docs/containers?topic=containers-cs_versions#cs_v114) is certified.</li>
  <li><strong>Reference topics</strong>: Updated information for various service binding, `logging`, and `nlb` operations in the [user access](/docs/containers?topic=containers-access_reference) and [CLI](/docs/containers?topic=containers-cli-plugin-kubernetes-service-cli) reference pages.</li></ul></td>
</tr>
<tr>
  <td>07 May 2019</td>
  <td><ul>
  <li><strong>Cluster DNS provider</strong>: [Explained the benefits of CoreDNS](/docs/containers?topic=containers-cluster_dns) now that clusters that run Kubernetes 1.14 and later support only CoreDNS.</li>
  <li><strong>Edge nodes</strong>: Added private load balancer support for [edge nodes](/docs/containers?topic=containers-edge).</li>
  <li><strong>Free clusters</strong>: Clarified where [free clusters](/docs/containers?topic=containers-regions-and-zones#regions_free) are supported.</li>
  <li><strong>New! Integrations</strong>: Added and restructure information about [{{site.data.keyword.cloud_notm}} services and third-party integrations](/docs/containers?topic=containers-ibm-3rd-party-integrations), [popular integrations](/docs/containers?topic=containers-supported_integrations), and [partnerships](/docs/containers?topic=containers-service-partners).</li>
  <li><strong>New! Kubernetes version 1.14</strong>: Create or update your clusters to [Kubernetes 1.14](/docs/containers?topic=containers-cs_versions#cs_v114).</li>
  <li><strong>Deprecated Kubernetes version 1.11</strong>: [Update](/docs/containers?topic=containers-update) any clusters that run [Kubernetes 1.11](/docs/containers?topic=containers-cs_versions#cs_v111) before they become unsupported.</li>
  <li><strong>Permissions</strong>: Added an FAQ, [What access policies do I give my cluster users?](/docs/containers?topic=containers-faqs#faq_access)</li>
  <li><strong>Worker pools</strong>: Added instructions for how to [apply labels to existing worker pools](/docs/containers?topic=containers-add_workers#worker_pool_labels).</li>
  <li><strong>Reference topics</strong>: To support new features such as Kubernetes 1.14, [changelog](/docs/containers?topic=containers-changelog#changelog) reference pages are updated.</li></ul></td>
</tr>
<tr>
  <td>01 May 2019</td>
  <td><strong>Assigning infrastructure access</strong>: Revised the [steps to assign IAM permissions for opening support cases](/docs/containers?topic=containers-users#infra_access).</td>
</tr>
</tbody></table>
