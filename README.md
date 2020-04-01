![Razee logo](images/razee_icon.png)

[Razee](http://www.razee.io/) is an open-source project that was developed by IBM to automate and manage the deployment of Kubernetes resources across clusters, environments, and cloud providers, and to visualize deployment information for your resources so that you can monitor the rollout process and find deployment issues more quickly.

See the following links to get started with Razee:

- [Key Features](#key-features)
- [Architecture overview](#architecture-overview)
  - [RazeeDash components](#razeedash-components)
  - [RazeeDeploy components](#RazeeDeploy-components)
- [Prerequisites](#prerequisites)
- [Creating a cluster inventory and visualize deployment information with RazeeDash](#creating-a-cluster-inventory-and-visualizing-deployment-information-with-razeedash)
  - [Installing RazeeDash](#installing-razeedash)
  - [Installing Watch Keeper in every cluster that you want to monitor](#installing-watch-keeper-in-every-cluster-that-you-want-to-monitor)
  - [Visualizing deployment information in RazeeDash](#visualizing-deployment-information-in-razeedash)
- [Automating the deployment of Kubernetes resources across clusters and environments](#automating-the-deployment-of-kubernetes-resources-across-clusters-and-environments)
- [Templatizing, organizing, and controlling the deployment of your Kubernetes resources](#templatizing-organizing-and-controlling-the-deployment-of-your-kubernetes-rources)
  - [Automatically deploying Kubernetes resources from a source repository with RemoteResources](#automatically-deploying-kubernetes-resources-from-a-source-repository-with-remoteresources)
  - [Adding version control or replacing YAML file variables with MustacheTemplates](#adding-version-control-or-replacing-yaml-file-variables-with-mustachetemplates)
  - [Controlling deployments with FeatureFlagSetsLD](#controlling-deployments-with-featureflagsetsld)
  - [Bundling Kubernetes resources in a ManagedSet](#bundling-kubernetes-resources-in-a-managedset)
- [Stay connected](#stay-connected)
- [License](#license)

## Key features

Review the key features of Razee and how you can leverage them to manage Kubernetes resources deployment for your clusters.

1. **Cluster inventory management**: With RazeeDash and Watchkeeper, you can add
your clusters to the Razee inventory list and start monitoring the deployment
status of your Kubernetes resources by using intelligent filter and alerting
capabilities. For more information about the RazeeDash components, see [RazeeDash components](#razeedash-components). For information about how to set up RazeeDash and start gaining visibility into your cluster deployments, see [Creating a cluster inventory and visualize deployment information with RazeeDash](#creating-a-cluster-inventory-and-visualizing-deployment-information-with-razeedash).
2. **Continuous deployment across clusters and environments**: With RazeeDeployables, you can control and automate the rollout of your Kubernetes resources
across clusters and environments. To do that, you simply add all your clusters to
the Razee inventory list, and subscribe your clusters to the publication channel
that holds the version of the Kubernetes resource that you want to roll out. For more information about the RazeeDeployables components, see [RazeeDeployables components](#razeedeployables-components). For information about how to set up RazeeDeployables, create publication channels and manage the deployment of Kubernetes resources across clusters and environments, see [Automating the deployment of Kubernetes resources across clusters and environments](#automating-the-deployment-of-kubernetes-resources-across-clusters-and-environments).
3. **Templatizing of Kubernetes resources**: RazeeDeploy includes custom resource
definitions (CRDs) that can help you to dynamically create Kubernetes resources
based on feature flags or variables that you set and to group and automatically apply
these resources in your cluster. For more information about the RazeeDeploy components, see [RazeeDeploy components](#RazeeDeploy-components). For information about how to install RazeeDeploy, and leverage the custom resource definitions to templateize, organize, and control the deployment of Kubernetes resources in your cluster, see [Templatizing, organizing, and controlling the deployment of your Kubernetes resources with RazeeDeploy](#templatizing-organizing-and-controlling-the-deployment-of-your-kubernetes-rources-with-razeedeploy).

## Architecture overview

Razee consists of three modules, RazeeDash, RazeeDeployables, and RazeeDeploy, that are loosely coupled and that can be used independently. With RazeeDash, you can dynamically create a live inventory of your Kubernetes resources and use the powerful filter and alerting capabilities to visualize configuration information and troubleshoot issues in your deployment process more quickly. RazeeDeploy components are designed to simplify multi-cluster deployments by templatizing Kubernetes resources, grouping resources and clusters, and defining rules for these groupings so that you can create a flexible configuration that is enforced across clusters, environments, and clouds.

### RazeeDash and RazeeDeployables components

![RazeeDash and RazeeDeployables overview](images/razeedash_ov.png)

<table>
   <thead>
      <th>Component</th>
      <th>Description</th>
   </thead>
   <tbody>
      <tr>
         <td><a href="https://github.com/razee-io/watch-keeper">Watch Keeper</a></td>
         <td>Watch Keeper is responsible to retrieve configuration information for Kubernetes resources and to send this data to the RazeeDash API. To use Watch Keeper, simply install this component in your cluster and add the <code>razee/watch-resource</code> label to all resources that you want to monitor. After you add the label, Watch Keeper retrieves configuration information from the Kubernetes API server and immediately sends this data to the RazeeDash API. This process repeats once every hour. In addition, Watch Keeper adds a Kubernetes event watcher to your resource so that Watch Keeper is notified by Kubernetes when the configuration of your resource changes. </td>
      </tr>
      <tr>
         <td><a href="https://github.com/razee-io/razeedash-api">RazeeDash API</a></td>
         <td>RazeeDash API is a service that receives Kubernetes resource configurations and resource definitions from Watch Keeper. Data that is sent to the RazeeDash API is automatically stored in MongoDB.  </td>
      </tr>
      <tr>
         <td><a href="https://github.com/razee-io/razeedash">RazeeDash</a></td>
         <td>RazeeDash visualizes data that is retrieved by Watch Keeper and dynamically creates an inventory of your Kubernetes resources in your cluster. You can use the intelligent filter and alerting capabilities to analyze this data and quickly identify and resolve issues in your deployment process. </td>
      </tr>
     <tr>
         <td><a href="https://github.com/razee-io/ClusterSubscription">ClusterSubscription</a></td>
         <td>ClusterSubscription is a Razee deployment that monitors subscriptions in Razee to check if active subscriptions for a cluster exist. If a subscription is found, the associated version of the Kubernetes resource is pulled from Razee and automatically applied in the cluster. </td>
      </tr>
   </tbody>
</table>

### RazeeDeploy components

![RazeeDeploy](images/razeedeploy_ov.png)

<table>
   <thead>
      <th>Component</th>
      <th>Description</th>
   </thead>
   <tbody>
      <tr>
         <td><a href="https://github.com/razee-io/RazeeDeploy-core">RazeeDeploy Core</a></td>
         <td>RazeeDeploy Core is a Continuous Delivery tool that runs in your cluster and that you can use to set up the <code>CustomResourceDefinitions</code> (CRD), Kubernetes controllers, and dependencies for the RazeeDeploy components. </td>
      </tr>
      <tr>
         <td><a href="https://github.com/razee-io/RazeeDeploy-delta">RazeeDeploy Delta</a></td>
         <td>RazeeDeploy Delta is a component of RazeeDeploy Core that runs in your cluster and keeps the custom resource definitions and Kubernetes controllers of the RazeeDeploy components up-to-date. </td>
      </tr>
      <tr>
         <td><a href="https://github.com/razee-io/RemoteResource">RemoteResource</a>
        and <a href="https://github.com/razee-io/RemoteResourceS3">Remote Resource S3</a></td>
         <td>RemoteResource and RemoteResourceS3 are custom resource definitions and controllers that you can use to automatically deploy Kubernetes resources that are stored in a source repository. Rather than manually applying these YAML files in each cluster, environment, or across clouds every time an update is made, simply define the source repository in your remote resource and create the remote resource in your cluster. The remote resource controller automatically connects to your source repository, downloads the Kubernetes configuration file and applies the file to your cluster. </td>
      </tr>
      <tr>
         <td><a href="https://github.com/razee-io/MustacheTemplate">MustacheTemplate</a></td>
         <td>MustacheTemplate is a custom resource definition and controller to define environment variables that you can use to replace YAML file pieces in other Kubernetes YAML files. For example, use the environment variables of your mustache template to build the URL for your remote resource so that you can point to the app version that you want to deploy. </td>
      </tr>
      <tr>
         <td><a href="https://github.com/razee-io/FeatureFlagSetLD">FeatureFlagSetLD</a></td>
         <td>FeatureFlagSetLD is a custom resource definition and controller to automatically retrieve feature flag values from <a href="https://launchdarkly.com">Launch Darkly</a>. With feature flags, you can control what code is deployed to your cluster and manage multiple versions of Kubernetes resources across clusters, environments, or clouds. </td>
      </tr>
      <tr>
         <td><a href="https://github.com/razee-io/ManagedSet">ManagedSet</a></td>
         <td>ManagedSet is a custom resource definition and controller to group Kubernetes resources that you want to create and apply to the cluster at the same time.  </td>
      </tr>
      <tr>
         <td><a href="https://github.com/razee-io/Kubernetes-util">Kubernetes utilities</a></td>
        <td>Kubernetes utilities is an <code>npm</code> package that you can use to simplify the communication with Kubernetes. </td>
      </tr>
   </tbody>
</table>

## Prerequisites

To deploy Razee in your cluster, your cluster must meet the following requirements:

- Your cluster must run Kubernetes version 1.11 or later.
- Your cluster must have at least two worker nodes.
- Your cluster must be set up with public network access.

## Creating a cluster inventory and visualizing deployment information with RazeeDash

### Installing RazeeDash

1. Frist install [razeedeploy-delta](https://github.com/razee-io/razeedeploy-delta) in your custer by running:

    ```bash
    kubectl apply -f https://github.com/razee-io/Razee/releases/latest/download/razeedeploy.yaml
    ```

    Example output:

    ```bash
    namespace/razeedeploy created
    serviceaccount/razeedeploy-sa created
    clusterrole.rbac.authorization.k8s.io/razeedeploy-admin-cr configured
    clusterrolebinding.rbac.authorization.k8s.io/razeedeploy-rb configured
    job.batch/razeedeploy-job created

    kubectl get deploy -n razeedeploy
    NAME                        READY   UP-TO-DATE   AVAILABLE   AGE
    remoteresource-controller   1/1     1            1           56s
    ```

2. Install the RazeeDash components in your cluster. To store data that is sent to the RazeeDash API, you must set up a MongoDB instance. You can choose to set up RazeeDash and a single MongoDB instance by using the provided `razeedash-all-in-one.yaml` file or to set up RazeeDash with an existing MongoDB instance that runs in your cluster. **Note**: If you already have a running instance of RazeeDash in one of your clusters, and instead want to just add another cluster to your inventory list, you can skip this step and continue with installing the Watchkeeper component in your cluster.

    - **To install RazeeDash and a single MongoDB instance**:

        ```bash
        kubectl apply -f https://github.com/razee-io/Razee/releases/latest/download/razeedash-all-in-one.yaml
        ```

        Example output:

        ```bash
        persistentvolume/mongo-pv-volume created
        persistentvolumeclaim/mongo-pv-claim created
        deployment.apps/mongo created
        service/mongo created
        secret/razeedash-secret created
        remoteresource.deploy.razee.io/razeedash created
        service/razeedash-lb created
        service/razeedash-api-lb created
        ```

    - **To use an existing MongoDB instance**:

        Create the razeedash secret for the mongo_url.  Substitute in the command below
        with the actual username and password along with 3 host instances for mongo-0,
        mongo-1 and mongo-3 along with the correct ports.  Make sure the end of the
        mongo URL has `/razeedash?ssh=true`.

        Example :

        ```bash
        kubectl -n razee create secret generic razeedash-secret --from-literal "mongo_url=mongodb://username:password@mongo‑0:27017,mongo‑1:27017,mongo‑2:27017/razeedash?ssl=true"
        kubectl apply -f https://github.com/razee-io/Razee/releases/latest/download/razeedash.yaml
        ```

3. Wait for the `razeedash-api` deployment to complete. If you chose to create RazeeDash by using the provided `razeedash-all-in-one.yaml` file in the previous step, an instance of MongoDB is created in your cluster and connected to the RazeeDash API instance. The setup of MongoDB takes a few of minutes to complete and might lead to intermittent `MongoNetworkError` errors in your RazeeDash API deployment. When MongoDB is fully set up, Kubernetes automatically finishes the setup of your RazeeDash API instance.

    <!--Markdownlint-disable MD013-->
    ```bash
    kubectl logs deploy/razeedash-api -n razee
    ```

    Example output if MongoDB is not yet set up:

    ```bash
    > razeedash-api@0.0.1 start /usr/src
    > node app/index.js

    (node:16) UnhandledPromiseRejectionWarning: MongoNetworkError: getaddrinfo
    ENOTFOUND mongo
      at Socket.<anonymous> (/usr/src/node_modules/mongodb-core/lib/connection/connect.js:287:16)
      at Object.onceWrapper (events.js:284:20)
      at Socket.emit (events.js:196:13)
      at emitErrorNT (internal/streams/destroy.js:91:8)
      at emitErrorAndCloseNT (internal/streams/destroy.js:59:3)
      at processTicksAndRejections (internal/process/task_queues.js:84:9)
    (node:16) UnhandledPromiseRejectionWarning: Unhandled promise rejection. This error originated either by throwing inside of an async function without a catch block, or by rejecting a promise which was not handled with .catch(). (rejection id: 1)
    (node:16) [DEP0018] DeprecationWarning: Unhandled promise rejections are deprecated. In the future, promise rejections that are not handled will terminate the Node.js process with a non-zero exit code.
    ```

    Example output if RazeeDash API is fully set up:

    ```bash
    > razeedash-api@0.0.1 start /usr/src
    > node app/index.js

    {"name":"/","parseUA":false,"excludes":["req-headers","res-headers","referer","url","body","short-body"],"hostname":"razeedash-api-55fd67ddb9-cnbf4","pid":16,"level":30,"msg":"Created new collection deployments index deployments","time":"2019-05-22T03:15:11.526Z","v":0}
    {"name":"/","parseUA":false,"excludes":["req-headers","res-headers","referer","url","body","short-body"],"hostname":"razeedash-api-55fd67ddb9-cnbf4","pid":16,"level":30,"msg":"Created new collection resources index resources","time":"2019-05-22T03:15:11.528Z","v":0}
    {"name":"/","parseUA":false,"excludes":["req-headers","res-headers","referer","url","body","short-body"],"hostname":"razeedash-api-55fd67ddb9-cnbf4", "pid":16,"level":30,"msg":"Created new collection clusters index clusters","time":"2019-05-22T03:15:12.172Z","v":0}
    {"name":"/","parseUA":false,"excludes":["req-headers","res-headers","referer","url","body","short-body"],"hostname":"razeedash-api-55fd67ddb9-cnbf4","pid":16,"level":30,"msg":"Created new collection orgs index orgs","time":"2019-05-22T03:15:12.172Z","v":0}
    {"name":"/","parseUA":false,"excludes":["req-headers","res-headers","referer","url","body","short-body"],"hostname":"razeedash-api-55fd67ddb9-cnbf4","pid":16,"level":30,"msg":"Created new collection resourceStats index resourceStats","time":"2019-05-22T03:15:12.173Z","v":0}
    {"name":"/","parseUA":false,"excludes":["req-headers","res-headers","referer","url","body","short-body"],"hostname":"razeedash-api-55fd67ddb9-cnbf4","pid":16,"level":30,"msg":"Created new collection messages index messages","time":"2019-05-22T03:15:14.253Z","v":0}
    {"name":"razeedash-api","hostname":"razeedash-api-55fd67ddb9-cnbf4","pid":16,"level":30,"msg":"razeedash-api listening on port 3333","time":"2019-05-22T03:15:14.257Z","v":0}
    ```

4. Retrieve the external IP address of your `razeedash-lb` and `razeedash-api-lb` load balancer services that are automatically created during the RazeeDash API setup. `razeedash-lb` serves as the public endpoint for your RazeeDash instance, and `razeedash-api-lb` serves as the public endpoint for your RazeeDash API instance. By using the public IP addresses that were assigned, you can build the public URLs that you use to access the RazeeDash and the RazeeDash API components. To finish the setup of RazeeDash, the two URLs must be stored in the RazeeDash config map.
   Use the following Bash commands to retrieve the public IP addresses, build the public URLs, and store the URLs in the RazeeDash config map. You can also execute the Bash script [`bin/kc_create_razeedash_config.sh`](https://github.com/razee-io/Kube-cloud-scripts/blob/master/bin/kc_create_razeedash_config_map.sh). Note that you must include the trailing `/` at the end of the `root_url` and `razeedash_api_url` in your Razeedash config map.

   ```bash
   # Amazon EKS uses host names, IBM Cloud Kubernetes Service uses Ingress IP addresses. This handle both.
   RAZEEDASH_LB_IP=$(kubectl get service razeedash-lb -n razee -o jsonpath="{.status.loadBalancer.ingress[*].ip}")
   RAZEEDASH_API_LB_IP=$(kubectl get service razeedash-api-lb -n razee -o jsonpath="{.status.loadBalancer.ingress[*].ip}")
   RAZEEDASH_LB_HOSTNAME=$(kubectl get service razeedash-lb -n razee -o jsonpath="{.status.loadBalancer.ingress[*].hostname}")
   RAZEEDASH_API_LB_HOSTNAME=$(kubectl get service razeedash-api-lb -n razee -o jsonpath="{.status.loadBalancer.ingress[*].hostname}")
   RAZEEDASH_LB=${RAZEEDASH_LB_HOSTNAME} && [[ "${RAZEEDASH_LB_IP}" != "" ]] && RAZEEDASH_LB=${RAZEEDASH_LB_IP}
   RAZEEDASH_API_LB=${RAZEEDASH_API_LB_HOSTNAME} && [[ "${RAZEEDASH_API_LB_IP}" != "" ]] && RAZEEDASH_API_LB=${RAZEEDASH_API_LB_IP}
   kubectl create configmap razeedash-config -n razee \
     --from-literal=root_url=http://"${RAZEEDASH_LB}":8080/ \
     --from-literal=razeedash_api_url=http://"${RAZEEDASH_API_LB}":8081/
   ```
    <!--Markdownlint-enable MD013-->

5. Verify that all Razee components are deployed and show `1/1` in the **READY**
column of your CLI output.

   ```bash
   kubectl get deployments -n razee
   ```

   Example output:

   ```bash
   NAME                          READY   UP-TO-DATE   AVAILABLE   AGE
   featureflagsetld-controller   1/1     1            1           53m
   managedset-controller         1/1     1            1           53m
   mongo                         1/1     1            1           34m
   mustachetemplate-controller   1/1     1            1           53m
   razeedash                     1/1     1            1           25m
   razeedash-api                 1/1     1            1           25m
   razeedeploy-delta             1/1     1            1           53m
   remoteresource-controller     1/1     1            1           53m
   remoteresources3-controller   1/1     1            1           53m
   ```

6. Open the RazeeDash welcome screen.

   ```bash
   open http://"${RAZEEDASH_LB}":8080
   ```

7. Create an `OAuth` application for Razeedash in GitHub, GitHub Enterprise, or Bitbucket.
   1. From the Razeedash welcome screen, select the tile of the tool where you
    want to create the `OAuth` application.
   2. Follow the instructions in the pop-up window to create the `OAuth` application.
   3. Click **Save configuration**.
   4. From the Razeedash welcome screen, click **Sign in with <integration_tool>**.
   5. Follow the instructions in the pop-up window to grant Razeedash access to
    the integration tool that you chose.

      If you need to reset any of the `OAuth` credentials then you can start over
      by opening a mongo shell to your instance and running
      `db.meteor_accounts_loginServiceConfiguration.remove({})`.

### Installing Watch Keeper in every cluster that you want to monitor

1. Install Watch Keeper in every cluster that you want to monitor. The cluster
 where you install Watch Keeper can be a different cluster than the one where
  you installed RazeeDash.
    1. From the RazeeDash console, click **Register**.
    2. Click **Manage**.
    3. Copy the **Install Razee Agent** `kubectl` command.
    4. Run the command in the cluster that you want to monitor to create the
     Watch Keeper components. If you install Watch Keeper in the same cluster
      where you installed Razeedash, you see messages that some of the Watch
       Keeper components already exist in your cluster. You can ignore these messages.

       ```bash
       kubectl create -f http://<razeedash-api-lb_external_IP>:8081/api/install/cluster?orgKey=orgApiKey-<org_api_key>
       ```

       Example output for a cluster where Razeedash is installed:

       ```bash
       deployment.apps/remoteresource-controller created
       configmap/watch-keeper-config created
       secret/watch-keeper-secret created
       remoteresource.deploy.razee.io/watch-keeper-rr created
       Error from server (AlreadyExists): error when creating
        "http://4e0ef59e-us-south.lb.appdomain.cloud:8081/api/install/cluster?
        orgKey=orgApiKey-d52b52fc-38ae-4da0-b187-6e097e5bfe5c": namespaces
         "razee" already exists
       Error from server (AlreadyExists): customresourcedefinitions.
       apiextensions.k8s.io "remoteresources.deploy.razee.io" already exists
       Error from server (AlreadyExists): error when creating
        "http://4e0ef59e-us-south.lb.appdomain.cloud:8081/api/install/cluster?
        orgKey=orgApiKey-d52b52fc-38ae-4da0-b187-6e097e5bfe5c": namespaces
         "razee" already exists
       Error from server (AlreadyExists): error when creating
        "http://4e0ef59e-us-south.lb.appdomain.cloud:8081/api/install/cluster?
        orgKey=orgApiKey-d52b52fc-38ae-4da0-b187-6e097e5bfe5c": serviceaccounts
         "razeedeploy-sa" already exists
       Error from server (AlreadyExists): error when creating
        "http://4e0ef59e-us-south.lb.appdomain.cloud:8081/api/install/cluster?
        orgKey=orgApiKey-d52b52fc-38ae-4da0-b187-6e097e5bfe5c": clusterroles.
        rbac.authorization.k8s.io "razeedeploy-admin-cr" already exists
       Error from server (AlreadyExists): error when creating
        "http://4e0ef59e-us-south.lb.appdomain.cloud:8081/api/install/cluster?
        orgKey=orgApiKey-d52b52fc-38ae-4da0-b187-6e097e5bfe5c":
        clusterrolebindings.rbac.authorization.k8s.io "razeedeploy-rb" already exists
       Error from server (AlreadyExists): error when creating
        "http://4e0ef59e-us-south.lb.appdomain.cloud:8081/api/install/cluster?
        orgKey=orgApiKey-d52b52fc-38ae-4da0-b187-6e097e5bfe5c": configmaps
         "razeedeploy-delta-resource-uris" already exists
       Error from server (AlreadyExists): error when creating
        "http://4e0ef59e-us-south.lb.appdomain.cloud:8081/api/install/cluster?
        orgKey=orgApiKey-d52b52fc-38ae-4da0-b187-6e097e5bfe5c": deployments.apps
         "razeedeploy-delta" already exists
       ````

       Example output for a cluster where RazeeDash is not installed:

       ```bash
       configmap/watch-keeper-config created
       secret/watch-keeper-secret created
       clusterrole.rbac.authorization.k8s.io/cluster-reader created
       serviceaccount/watch-keeper-sa created
       clusterrolebinding.rbac.authorization.k8s.io/watch-keeper-rb created
       networkpolicy.networking.k8s.io/watch-keeper-deny-ingress created
       deployment.apps/watch-keeper created
       Error from server (AlreadyExists): namespaces "razee" already exists
       ```

    5. Wait for the Watch Keeper deployment to finish.

       ```bash
       kubectl get deployment -n razee | grep watch-keeper
       ```

       Example output:

       ```bash
       watch-keeper                  1/1     1            1           2m5s
       ```

2. From the RazeeDash console, click **RazeeDash** to open the RazeeDash
 details page and verify that you can see deployment information for your Watch
  Keeper pod.

### Visualizing deployment information in RazeeDash

With Watch Keeper set up in your cluster, you can retrieve deployment
 information for other Kubernetes resources that you want to monitor. Data is
  automatically sent to the Razeedash API and you can access, monitor, and
   analyze this data with Razeedash.

1. Decide what information you want Watch Keeper to retrieve by choosing among
 the following information detail levels:

    - `lite`: Retrieves the `metadata` and `status` section of your Kubernetes
     resource configuration.
    - `detail`: Retrieves all configuration data of a Kubernetes resource, but
     leaves out environment variables and the `data` section of config maps and secrets.
    - `debug`: Retrieves all configuration data of a Kubernetes resource,
     including environment variables and the `data`.
    section of config maps and secrets. This information might include
     sensitive information so use this option with care.

2. Add the `razee/watch-resource` label to the **labels** section of all
 Kubernetes resources that you want to monitor and specify the information
  detail level. For example, if you want to monitor a Kubernetes deployment, use
   the following command. After you add the label to your resource, Watch Keeper
    automatically scans your resource and sends data to the Razeedash API.
Then, your resource is scanned once every hour. In addition, Watch Keeper adds a
 Kubernetes event watcher to your resource so that Watch Keeper is notified by
  Kubernetes when the configuration of your resource changes.

   ```bash
   kubectl edit deployment <deployment_name>
   ```

   Example YAML file:

   ```yaml
   apiVersion: extensions/v1beta1
   kind: Deployment
   metadata:
     annotations:
       deployment.kubernetes.io/revision: "1"
       kubectl.kubernetes.io/last-applied-configuration: |
      {"apiVersion":"apps/v1","kind":"Deployment","metadata":{"annotations":{},"labels":{"app":"myapp"},"name":"expandpvc","namespace":"default"},"spec":{"selector":{"matchLabels":{"app":"myapp"}},"template":{"metadata":{"labels":{"app":"myapp"}},"spec":{"containers":[{"image":"nginx","name":"expandpvc","volumeMounts":[{"mountPath":"/test","name":"myvol"}]}],"volumes":[{"name":"myvol","persistentVolumeClaim":{"claimName":"expandpvc"}}]}}}}
     creationTimestamp: "2019-04-30T15:31:24Z"
     generation: 1
     labels:
       app: myapp
       razee/watch-resource: "lite"
   ...
   ```

   For more info on labeling resources and namespaces, see [docs here](https://github.com/razee-io/Watch-keeper/#collecting-resources)

3. Verify that your Kubernetes resource is displayed in RazeeDash.
   1. Open RazeeDash. **Tip**: To find the public IP address that is assigned to
    your RazeeDash service, run `kubectl get service razeedash-lb -n razee`.

      ```bash
      open http://"${RAZEEDASH_LB}":8080
      ```

   2. Click **Sign in with GitHub**.
   3. Select the GitHub organization that you connected RazeeDash to. The
    Razeedash console opens automatically.
   4. Verify that you can access deployment information about your Kubernetes
    resource in Razeedash.

4. Optional: Configure Razeedash to display the cluster name instead of the
cluster ID. By default, all Kubernetes resources that you watch in a cluster
are listed with their cluster ID in the Razeedash console. You can change this
setting and instead display the cluster name or any other string to help you
find the Kubernetes resources of a cluster more quickly.
   1. In your cluster, create a Kubernetes configmap that looks similar to the
    following. Enter the name that you want to display in Razeedash in the
     `data.name` section. In the following example, you change the cluster ID to
      `razee-1`.

      Example configmap:

      ```yaml
      apiVersion: v1
      data:
        name: razee-1
      kind: ConfigMap
      metadata:
        labels:
          razee/cluster-metadata: "true"
          razee/watch-resource: debug
        name: razee1-cluster-metadata
        namespace: default
      ```

   2. Apply the configmap in your cluster.

      ```bash
      kubectl apply -f configmap.yaml
      ```

   3. Wait a few minutes for Razeedash to update the cluster ID and display the
    name that you chose in your configmap.

## Automating the deployment of Kubernetes resources across clusters and environments

Integrate Razee into your existing CI/CD pipeline and easily control the rollout
of Kubernetes resources across multiple clusters and cloud environments by using
RazeeDeployables. RazeeDeployables consists of two components, the Razee channel
and the Razee subscription.

**What is a Razee channel?**</br>
A Razee channel is a component in RazeeDash that let's you upload new versions
of a Kubernetes resource from any source repository or your local machine
directly to Razee by using the Razee API. The channel keeps track of the
different versions, but the versions are not yet applied to your clusters. To
apply the versions, you must create Razee subscriptions and specify the version
that you want to apply.

**What is a Razee subscription?**</br>
A Razee subscription is based on a Razee channel and specifies which version of the
Kubernetes resource that you uploaded to the channel is applied to the cluster
based on a set of tags that are present in the cluster. To specify the tags in your
cluster, you use the `clustersubscription` configmap that you create in your cluster
as part of the Razee Deployables installation. For example, you might
have a development cluster and want to apply all Kubernetes resources that you created
for your test environment. To do that, you first push the appropriate Kubernetes
resource version to Razee by using a Razee channel. Then, you create a
Razee subscription that points to the channel, select the right Kubernetes resource
version, and add the `dev` tag to your subscription. Now you just need to add the
same tag to your `clustersubscription` configmap. Razee uses the configmap to
connect to your Razee instance, look up the `dev` subscriptions and apply the
version of your Kubernetes resource that the subsciption points to.

**Is there a limitation what Kubernetes resources I can upload to Razee?**</br>
You can upload any Kubernetes resource that you want to apply in your cluster to
your Razee publication channel. This includes the custom resource definitions that
are included in the RazeeDeploy module.

**To use the RazeeDeployables module**:

1. Make sure that you installed RazeeDash and added your clusters to the Razee
inventory list.

2. Install the RazeeDeployables module.

   ```bash
   https://github.com/razee-io/ClusterSubscription/releases/latest/download/resource.yaml
   ```

   Example output:

   ```bash
   deployment.apps/clustersubscription created
   ```

3. Create the RazeeDeployables configmap. The configmap holds the credentials to
access your RazeeDash deployment and the tags that you want to monitor in your cluster.

   1. Create a configuration file for your RazeeDeployables configmap.

      ```bash
      apiVersion: v1
      kind: ConfigMap
      metadata:
       name: clustersubscription
       namespace: razee
      data:
       RAZEE_ORG_KEY: "<razee_org_key>"
       RAZEE_TAGS: "<tags>"
       RAZEE_API: "<razee_api>"
      ```

      <table>
      <thead>
      <th colspan=2>Understanding the YAML file components</th>
      </thead>
      <tbody>
      <tr>
      <td><code>data.RAZEE_ORG_KEY/code></td>
      <td>Enter the Razee organization key. To retrieve this value, follow these
      steps: <ol><li>From the Razeedash console, click the Razee icon in the upper
      left corner. The <strong>Select an org</strong> screen opens. </li>
      <li>Find your Razee organization, and click <strong>Manage</strong>.</li>
      <li>Copy the <strong>Api Key</strong> value.</li></ol></td>
      </tr>
      <tr>
      <td><code>data.RAZEE_TAGS</code></td>
      <td>Enter a list of tags that you want to apply to the cluster. If you want
      to enter multiple tags, separate them with a comma. Razee uses these tags to
      look up any active Razee subscriptions. If subscriptions are found, Razee
      automatically applies all associated Kubernetes resources to the cluster.
      Note that you set up Razee subscriptions in a later step of these instructions.</td>
      </tr>
      <tr>
      <td><code>data.RAZEE_API</code></td>
      <td>Enter the URL to the Razee API that you want to connect to. To retrieve
      this value, follow these steps: <ol><li>From the Razeedash console, click
      the Razee icon in the upper left corner. The <strong>Select an org</strong>
      screen opens. </li><li>Find your Razee organization, and click <strong>Manage</strong>.
      </li><li>In the <strong>Install Razee Agent</strong> field, you can find
      the Razee API as part of the kubectl command that is displayed to you.
      The Razee API follows a format that is similar to the following:
      <code>https://&lt;razee_org&gt;.us-east.containers.appdomain.cloud</code>.
       </li></ol></td>
      </tr>
      </tbody>
      </table>
   2. Create the configmap in your cluster.

      ```bash
      kubectl apply -f configmap.yaml
      ```

   3. Repeat these steps in every cluster that you want to include where you want
  to roll out changes.

4. In your preferred web browser, open the Deployables console in RazeeDash.

   ```bash
   <razeedash_url>/deployables
   ```

5. Create a publication channel.
   1. From the **Channels** card, click **Add**.
   2. Enter a name for your channel and click **Save**. You can choose any name
for your channel that you want, but make sure to give it a descriptive
name so that you can find the channel more easily afterwards.

6. Upload a version of your Kubernetes resource from your source repository or
local machine to the channel. To upload a file, you must use the Razee API. You
can call the API directly as shown in the following example, or you can also
include the upload as part of your existing automation. For example, you might
have a GitHub source repository and use Travis to automatically check your files
when you commit a change. You can extend the Travis script to push the new
version of your resource to Razee after all checks have passed.

   ```bash
   curl \
       --url "<razee_api_url>/api/v1/channels/<razee_channel>/version" \
       --header "content-type: text/yaml" \
       --header "razee-org-key: <razee_org_key>" \
       --header "resource-name: <resource_version>" \
       --header "x-api-key: <razee_apikey>" \
       --header "x-user-id: <razee_userID>" \
       --data-binary @./resource.yaml
   ```

   Example output:

   ```bash
   {"status":"success","version":{"uuid":"bc29119c-5b72-4fc8-9eee-a4dd5be9e1e3","name":"myversion","location":"s3"}}
   ```

   <table>
   <caption>Understanding the API request</caption>
   <thead>
   <th colspan=2>Understanding the API request</th>
   </thead>
       <tbody>
       <tr>
       <td><code>&lt;razee_api_key&gt;</code></td>
       <td>Enter the URL to your Razee API deployment. To retrieve this value,
         follow these steps:
       <ol><li>From the RazeeDash console, click the Razee icon in the upper
       left corner. The <strong>Select an org</strong> screen opens. </li>
       <li>Find your Razee organization, and click <strong>Manage</strong>.</li>
       <li>Copy the <strong>Api Key</strong> value.</li></ol></td>
       </tr>
       <tr>
       <td><code>&lt;razee_channel&gt;</code></td>
       <td>Enter the name of the Razee publication channel that you
         created earlier.</td>
       </tr>
       <tr>
       <td><code>&lt;razee_org_key&gt;</code></td>
       <td>Enter the Razee organization key. To retrieve this value, follow these
      steps: <ol><li>From the Razeedash console, click the Razee icon in the
      upper left corner. The <strong>Select an org</strong> screen opens. </li>
      <li>Find your Razee organization, and click <strong>Manage</strong>.</li>
      <li>Copy the <strong>Api Key</strong> value.</li></ol></td>
       </tr>
       <tr>
       <td><code>&lt;resource_version&gt;</code></td>
       <td>Enter a name for the version of the Kubernetes resource that you want
      to upload from your source repository or local machine. </td>
       </tr>
       <tr>
       <td><code>&lt;razee_apikey&gt;</code></td>
       <td>Enter the API key to authenticate with Razeedash. To retrieve this
      value, follow these steps: <ol><li>From the Razeedash console, click the
      arrow icon in the upper right corner. Then, select <strong>Profile</strong>.
      </li><li>Copy the <strong>API key</strong> value. If no API key exists,
      click <strong>Generate</strong> to generate one.</li></ol></td>
       </tr>
       <tr>
       <td><code>&lt;razee_userID&gt;</code></td>
       <td>Enter your Razee user ID. To retrieve this value, follow these steps:
      <ol><li>From the Razeedash console, click the arrow icon in the upper
      right corner. Then, select <strong>Profile</strong>. </li>
      <li>Copy the <strong>User ID</strong> value. </li></ol></td>
       </tr>
       <tr>
       <td><code>resource.yaml</code></td>
       <td>Enter the full path to the Kubernetes resource YAML file that you want
       to upload to Razee. Make sure to include the <code>@</code> sign before the
       URL. You can upload any Kubernetes resource YAML file to Razee, but make
       sure that the YAML file has the correct format to avoid errors later when
       the file is applied to your Kubernetes cluster by using the Razee subscription.</td>
       </tr>
       </tbody>
       </table>
7. After your initial version of your Kubernetes resource is uploaded to Razee,
create a Razee subscription to apply the version in your cluster based on the tags
that you defined in your RazeeDeployables configmap.
   1. From the RazeeDeployables console, in the **Subscriptions** card, click **Add**.
   2. Enter a name for your subscription. You can enter any name, but make sure
    to enter a descriptive name so that you can find the subscription more
    easily afterwards.
   3. Enter the same tag that you specified in the RazeeDeployables configmap that
   you created earlier.
   4. Select the publication channel that you created earlier.
   5. Select the version of the Kubernetes resource that you uploaded to Razee earlier.
   6. Click **Save** to save your changes. After you save your subscription,
   Razee automatically pulls the version of the Kubernetes resource that you
   uploaded to Razee and applies the file in your cluster.
8. Verify that the Kubernetes resource was applied in your cluster.
   **Tip**: If you find that your resource was not applied in your cluster, verify
  that your YAML file has the correct format. Then, check the logs of the
  `clustersubscription-*` and `remoteresource-controller-*` pods in the `razee` namespace.

## Templatizing, organizing, and controlling the deployment of your Kubernetes resources

With RazeeDeploy, you can use custom resource definitions in Razee to templatize
and organize your Kubernetes resources so that you can control and automate the
deployment of these resources to your cluster based on feature flags that you set.

**Note**: You can use the RazeeDeploy components independently from the
RazeeDash or RazeeDeployables components. However, if you want to visualize the
deployment of your Kubernetes resources, you must set up RazeeDash to create a
cluster inventory list.

1. Install RazeeDeploy in your cluster. RazeeDeploy automatically creates the
Kubernetes `CustomResourceDefinitions` (CRD) and controllers for each
RazeeDeploy component, the `razee` namespace, service account, and RBAC roles
and role bindings in your cluster.

   ```bash
   kubectl apply -f https://github.com/razee-io/RazeeDeploy-delta/releases/latest/download/resource.yaml
   ```

   Example output:

   ```bash
   namespace/razee created
   serviceaccount/razeedeploy-sa created
   clusterrole.rbac.authorization.k8s.io/razeedeploy-admin-cr created
   clusterrolebinding.rbac.authorization.k8s.io/razeedeploy-rb created
   configmap/razeedeploy-delta-resource-uris created
   deployment.apps/razeedeploy-delta created
   ```

2. Verify that the RazeeDeploy components are deployed successfully. You must
see one pod per component and each pod must be in a `Running` state before you
proceed with the next step.

   ```bash
   kubectl get pods -n razee
   ```

   Example output:

   ```bash
   NAME                                           READY   STATUS    RESTARTS   AGE
   featureflagsetld-controller-8d86b95bf-lrpln    1/1     Running   0          76s
   managedset-controller-74876947db-bhrjt         1/1     Running   0          75s
   mustachetemplate-controller-674fdd9498-ntlgs   1/1     Running   0          74s
   razeedeploy-delta-6d7859b7cc-rd57f             1/1     Running   0          104s
   remoteresource-controller-756bdbf544-t87sz     1/1     Running   0          72s
   remoteresources3-controller-59b5c454bd-r2pr9   1/1     Running   0          71s
   ```

3. Choose how to templatize, organize, and control the deployment of your
Kubernetes resources with the RazeeDeploy custom resource definitions.
   - Automatically deploying Kubernetes resources from a source repository with RemoteResources
   - Adding version control or replacing YAML file variables with MustacheTemplates
   - Controlling deployments with FeatureFlagSetsLD
   - Bundling Kubernetes resourcs with ManagedSets

### Automatically deploying Kubernetes resources from a source repository with RemoteResources

RemoteResource and RemoteResourceS3 are RazeeDeploy components that you can use
to automatically deploy single Kubernetes resources that are stored in a source
repository. Simply define the source repository in your remote resource and
create the remote resource in your cluster. The remote resource controller
automatically connects to your source repository, downloads the Kubernetes
configuration file, and applies the file to your cluster. This process
repeats about every two minutes. All you have to do is to keep your source
file up-to-date and let your cluster auto-deploy it.

**Tip:** Use RemoteResource to specify a URL to your source repository and
 RemoteResourceS3 to connect to a Cloud Object Storage instance.

1. Create a configuration file for your remote resource and include the
information of the source repository where your YAML file is stored. You can
create one remote resource for your cluster, or you can use one remote resource
per Kubernetes namespace if, for example, you use namespaces to separate teams
or environments. If the YAML file that is stored in your source repository does
not specify a namespace, the resource is automatically deployed in the same
namespace as your remote resource.

   ```yaml
   apiVersion: "deploy.razee.io/v1alpha1"
   kind: RemoteResource
   metadata:
     name: <remote_resource_name>
     namespace: <namespace>
   spec:
     requests:
       - options:
           url: https://<source_repo_url>/<file_name1>
           headers:
             <header_key1>: <header_value1>
             <header_key2>: <header_value2>
       - options:
           url: https://<source_repo_url>/<file_name2>
   ```

   <table>
   <caption>Understanding the YAML file components</caption>
   <thead>
   <th colspan=2>Understanding the YAML file components</th>
   </thead>
   <tbody>
      <tr>
         <td><code>metadata.name</code></td>
         <td>Enter a name for your Razee remote resource. </td>
      </tr>
      <tr>
         <td><code>metadata.namespace</code></td>
         <td>Enter the namespace where you want to deploy your remote resource.
         You can deploy your remote resource to any namespace in your cluster.
         If the YAML file in your source repository that you link to does not
         define a namespace, the Kubernetes resource is deployed to the same
         namespace as your remote resource.</td>
      </tr>
      <tr>
         <td><code>spec.requests.options.url</code></td>
         <td>Enter the URLs to the YAML files that you want to deploy in your
         cluster. Each URL must be included as a separate entry in
         <code>spec.requests.options</code> and can point to one file only, not
         a collection of files. Depending on the type of source repository that
         you use, you can include credentials in your URL to authenticate with
         the source repository. If credentials must be passed in as header
         information, add these headers in <code>spec.requests.options.headers
         </code>. For example to use a file that is stored in a public GitHub
        repository, use
        <code>https://raw.githubusercontent.com/myorg/myrepo/master/deployment.yaml</code>.
        </td>
      </tr>
      <tr>
         <td><code>spec.requests.options.headers</code></td>
         <td>Enter any header information, such as credentials, that you want
         the remote resource to pass along when connecting to your source
         repository. You must enter a key and a value for each header that you
         want to add. </td>
      </tr>
   </tbody>
   </table>

2. Create your remote resource in the cluster.

   ```bash
   kubectl apply -f remoteresource.yaml
   ```

3. Verify that the remote resource is created successfully. After the remote
resource is created, the remote resource establishes a connection to the source
repository, downloads the specified file, and applies the file to the cluster.
This process repeats about every 2 minutes. If an error occurs, you can review
the error message in the **Status** section of your CLI output.

    ```bash
    kubectl describe remoteresource <remote_resource_name> -n <namespace>
    ```

    Example output:
    <!--Markdownlint-disable MD013-->

    ```bash
    Name:         myremoteresource
    Namespace:    razee
    Labels:       <none>
    Annotations:  kubectl.kubernetes.io/last-applied-configuration:
                  {"apiVersion":"deploy.razee.io/v1alpha1","kind":"RemoteResource","metadata":{"annotations":{},"name":"myremoteresource","namespace":"...
    API Version:  deploy.razee.io/v1alpha1
    Kind:         RemoteResource
    Metadata:
      Creation Timestamp:  2019-05-14T18:47:26Z
      Finalizers:
        children.downloads.deploy.razee.io
      Generation:        1
      Resource Version:  37572078
      Self Link:         /apis/deploy.razee.io/v1alpha1/namespaces/razee/remoteresourcess3/myremoteresource
      UID:               b81caa1f-7678-11e9-8e55-26f9979820ea
    Spec:
      Requests:
        Options:
          URL:  https://mysourcerepo.com/app.yaml
    Status:
      Children:
        /Apis/Apps/V1/Namespaces/Razee/Deployments/Perfpvc: deploy.Razee.Io/Reconcile: true
    Events: <none>
    ```
    <!--Markdownlint-enable MD013-->

4. Verify that the Kubernetes resource is created or updated. For example, to
verify a deployment, run the following command.

   ```bash
   kubectl describe deployment <deployment_name> -n <namespace>
   ```

5. Change the configuration of your YAML file in your source repository.
For example, if you have a deployment, you can change or add a label to the
`metadata` section of your YAML file.

6. Wait about 2 minutes for the remote resource to get restarted by Kubernetes,
download the latest version of your Kubernetes resource and apply the change to
your resource. Then, verify that the change is rolled out successfully.

   ```bash
   kubectl describe deployment <deployment_name> -n <namespace>
   ```

7. Optional: To remove a Kubernetes resource, you can either remove the source
repository's URL from the remote resource, or remove the remote resource entirely.

### Adding version control or replacing YAML file variables with MustacheTemplates

When you develop an app, you must manage multiple versions of an app. For
example, you might have an app that is considered stable and that runs in your
production environment. At the same time, you work on a new version for your app
that adds new features or enhances existing features. To keep your app versions
separate, you might include the app version in your file name, or use different
image tags and labels for Kubernetes resources that belong to the same app,
team, or environment.

With MustacheTemplates, you can define environment variables and use Kubernetes
config maps, secrets, or feature flags to determine the value of each
environment variable. Then, you can replace variables in your YAML files with
the value of your environment variable. For example, substitute the app version
number in the URL of your remote resource that points to your file, or replace
labels, image tags, and other YAML file pieces in your Kubernetes resources.

1. Create a configuration file for your mustache template.

   ```yaml
   apiVersion: "deploy.razee.io/v1alpha1"
   kind: MustacheTemplate
   metadata:
     name: <mustache_template_name>
     namespace: <namespace>
   spec:
     env:
     - name: sample-app-version
       value: "3.0"
     - name: prod-label
       valueFrom:
         configMapKeyRef:
            name: myconfigmap
            key: prod
     templates:
     - apiVersion: "deploy.razee.io/v1alpha1"
       kind: RemoteResource
       metadata:
         name: <remote_resource_name>
         namespace: <namespace>
       spec:
         requests:
         - options:
             url: https://mysourcerepo.com/{{sample-app-version}}-sample-app.yaml
   ```

   <table>
   <thead>
   <th colspan=2>Understanding the YAML file components</th>
   </thead>
   <tbody>
      <tr>
         <td><code>metadata.name</td></td>
         <td>Enter a name for your mustache template resource. </td>
      </tr>
      <tr>
         <td><code>metadata.namespace</code></td>
         <td>Enter the namespace where you want to deploy your mustache
         template. You can deploy your mustache template to any namespace in
         your cluster. </td>
      </tr>
      <tr>
         <td><code>spec.env.name</code></td>
         <td>Enter the name of the environment variable that you want to specify
         in your mustache template. If you define a name, you must define a
         value at the same time. You can use the name of your environment
         variable in the <code>spec.templates</code> section of your mustache
         template to replace a variable with the environment variable's value.</td>
      </tr>
      <tr>
         <td><code>spec.env.value</code></td>
         <td>Enter the value of the environment variable. You can choose to enter
          the value directly as shown in this example, retrieve the value from a
          Kubernetes secret, or reference a Kubernetes config map or Razee
          FeatureFlagSetLD.  </td>
      </tr>
       <tr>
         <td><code>spec.env.valueFrom.configMapKeyRef.name</code></td>
         <td>Required for config maps only. Enter the name of the config map
         that holds the information that you want to retrieve.
         </td>
      </tr>
       <tr>
         <td><code>spec.env.valueFrom.configMapKeyRef.namespace</code></td>
         <td>Required for config maps only. Enter the namespace of the config
           map that holds the information that you want to retrieve.
         </td>
      </tr>
      <tr>
         <td><code>spec.env.valueFrom.configMapKeyRef.key</code></td>
         <td>Required for config maps only. Enter the key of the key-value pair
         that you want to retrieve from your config map. In this example, the
         mustache template retrieves the value of the <code>prod</code> key from
         your config map. You can use this value to replace any variable with
         the name <code>prod-label</code> in the YAML files that you added to
         the <code>spec.templates</code> section of your mustache template. </td>
      </tr>
      <tr>
         <td><code>spec.templates</code></td>
         <td>Specify any YAML file that you want to deploy in your cluster and
         where you want to replace variables with the value of the environment
         variables that you defined in your mustache template. For example,
         specify your remote resource and use the environment variable of your
         mustache template to replace the version number of the app so that you
         point to the URL that is specific to the app version. Every YAML file
         that you specify in this section is automatically created when you
         create the mustache template.    </td>
      </tr>
   </tbody>
   </thead>
   </table>

2. Create the mustache template in your cluster. When you create the mustache
template, the values for all environment variables are automatically retrieved
and replaced in the YAML files that you listed in the `spec.templates` section.
Then, these YAML files are applied to your cluster.

   ```bash
   kubectl apply -f mustachetemplate.yaml
   ```

3. Verify that your mustache template is created successfully. If an error
occurs, you can review the error message in the **Status** section of your CLI output.

    ```bash
    kubectl describe mustachetemplate <mustache_template_name> -n <namespace>
    ```

    Example output:
    <!--Markdownlint-disable MD013-->

    ```yaml
    Name:         mymustachetemplate
    Namespace:    razee
    Labels:       <none>
    Annotations:  kubectl.kubernetes.io/last-applied-configuration:
                  {"apiVersion":"deploy.razee.io/v1alpha1","kind":"MustacheTemplate","metadata":{"annotations":{},"name":"demo-mustachetemplate","namespace...
    API Version:  deploy.razee.io/v1alpha1
    Kind:         MustacheTemplate
    Metadata:
      Creation Timestamp:  2019-05-14T20:55:46Z
      Finalizers:
        children.mustachetemplate.deploy.razee.io
      Generation:        5
      Resource Version:  37762378
      Self Link:         /apis/deploy.razee.io/v1alpha1/namespaces/razee/mustachetemplates/demo-mustachetemplate
      UID:               a53e82c8-768a-11e9-8e55-26f9979820ea
    Spec:
      Env:
        Name:  sample-app-version
        Value: "3.0"
        Name: prod-label
        Value: myapp-prod
      Templates:
        API Version:  deploy.razee.io/v1alpha1
        Kind:         RemoteResource
        Metadata:
          Name:       myremoteresource
          Namespace:  default
        Spec:
          Requests:
            Options:
              URL:  https://mysourcerepo.com/{{sample-app-version}}-app.yaml
    Status:
      Children:
        /Apis/Deploy.Razee.Io/V1Alpha1/Namespaces/Default/Remoteresourcess3/Cos:
        Deploy.Razee.Io/Reconcile: true
    Events: <none>
    ```
    <!--Markdownlint-enable MD013-->

4. Verify that your remote resource is created successfully and that variables
are successfully replaced by the mustache template.

   ```bash
   kubectl describe rrs <remote_resource_name> -n <namespace>
   ```

5. Verify that the Kubernetes resource from your source repository is created or
updated. For example to verify a deployment, run the following command.

   ```bash
   kubectl describe deployment <deployment_name> -n <namespace>
   ```

**Note**: If you delete a mustache template, all resources that you defined in
the `spec.templates` section are removed at the same time. To keep the
Kubernetes resources, add the `deploy.razee.io/Reconcile: false` label to all
your YAML files.

### Controlling deployments with FeatureFlagSetsLD

Connect a feature flagging service to your cluster so that you can pull
environment variables and version control information into your mustache
template to control the deployment of Kubernetes resources based on the feature
flags that you enable.

Razee FeatureFlagSetLD is a custom resource definition and controller that are
designed to connect and retrieve feature flag information from
[Launch Darkly](https://launchdarkly.com). But you can use the resources in the
Razee project as a template to connect to your own feature flagging service.

1. Create a [Launch Darkly trial account](https://launchdarkly.com). The trial
account lets you try out the Launch Darkly features for 30 days for free. When
you start your trial version, Launch Darkly is automatically launched and a
`test` and `production` project are set up for you.
2. [Create your first feature flag](https://docs.launchdarkly.com/docs/creating-a-feature-flag).
3. [Enable targeting for your feature flag](https://docs.launchdarkly.com/docs/the-kill-switch#section-turning-flags-on).
Feature flags cannot be retrieved by Razee if targeting is disabled.
4. Retrieve the Launch Darkly SDK key.
   1. From the Launch Darkly console, click **Account settings**.
   2. Note the **SDK key** of your production project.

5. Create a configuration file for your feature flag set.

   ```yaml
   apiVersion: deploy.razee.io/v1alpha1
   kind: FeatureFlagSetLD
   metadata:
     name: <name>
     namespace: <namespace>
   spec:
     sdk-key: "<launch_darkly_sdk_key>"
   ```

   <table>
   <thead>
   <th colspan=2>Understanding the YAML file components</th>
   </thead>
   <tbody>
   <tr>
   <td><code>metadata.name</code></td>
   <td>Enter a name for your feature flag set. </td>
   </tr>
   <tr>
   <td><code>metadata.namespace</code></td>
   <td>Enter the namespace where you want to deploy your feature flag set. The
   feature flag set must be deployed in the same namespace as your mustache
   template so that the mustache template can retrieve information from Launch
   Darkly.  </td>
   </tr>
   <tr>
   <td><code>spec.sdk-key</code></td>
   <td>Enter the Launch Darkly SDK key for your production project that you
   retrieved earlier. </td>
   </tr>
   </tbody>
   </table>

6. Create the feature flag set in your cluster.

   ```bash
   kubectl apply -f featureflagset.yaml
   ```

7. Verify that your feature flag set is created successfully. When you create
the feature flag set, a connection to your Launch Darkly SDK is established. If
an error occurs, you can review the error message in the **Status** section of
your CLI output.

   ```bash
   kubectl describe featureflagsetsld <feature_flag_name> -n <namespace>
   ```

   Example output:

   ```bash
   Name:         myfeatureflag
   Namespace:    razee
   Labels:       client=<launch_darkly_sdk_key>
   Annotations:  kubectl.kubernetes.io/last-applied-configuration:
                {"apiVersion":"deploy.razee.io/v1alpha1","kind":"FeatureFlagSetLD","metadata":{"annotations":{},"name":"myfeatureflag","namespace":"razee...
   API Version:  deploy.razee.io/v1alpha1
   Data:
     Razee:  3
     Test:   false
   Kind:     FeatureFlagSetLD
   Metadata:
     Creation Timestamp:  2019-05-15T17:03:19Z
     Finalizers:
       client.featureflagset.deploy.razee.io
     Generation:        2
     Resource Version:  37760364
     Self Link:         /apis/deploy.razee.io/v1alpha1/namespaces/razee/featureflagsetsld/myfeatureflag
     UID:               56d90220-7733-11e9-9100-66cbb576408c
   Spec:
    Sdk - Key:  <launch_darkly_sdk_key>
   Status:
   Events:  <none>
   ```

8. Use your existing Razee mustache template to replace the value of your
environment variables with the values of your Launch Darkly feature flags.

   ```yaml
   apiVersion: "deploy.razee.io/v1alpha1"
   kind: MustacheTemplate
   metadata:
     name: <mustache_template_name>
     namespace: <namespace>
   spec:
     env:
     - name: sample-app-version
       valueFrom:
         genericKeyRef:
           apiVersion: deploy.razee.io/v1alpha1
           kind: FeatureFlagSetLD
           name: myfeatureflag
           key: version
     templates:
     - apiVersion: "deploy.razee.io/v1alpha1"
       kind: RemoteResource
       metadata:
         name: <remote_resource_name>
         namespace: <namespace>
       spec:
         requests:
         - options:
             url: https://mysourcerepo.com/{{sample-app-version}}-sample-app.yaml
   ```

   <table>
   <thead>
   <th colspan=2>Understanding the YAML file components</th>
   </thead>
   <tbody>
      <tr>
         <td><code>spec.env.name</code></td>
         <td>Enter the name of the environment variable that you want to specify
         in your mustache template. If you define a name, you must define a
         value at the same time. You can use the name of your environment
         variable in the <code>spec.templates</code> section of your mustache
         template to replace a variable with the environment variable's value.</td>
      </tr>
      <tr>
         <td><code>spec.env.valueFrom.genericKeyRef.name</code></td>
         <td>Enter the name of the feature flag set that you created earlier.   </td>
      </tr>
      <tr>
         <td><code>spec.env.valueFrom.genericKeyRef.key</code></td>
         <td>Enter the key of the feature flag for which you want to retrieve
         the value from Launch Darkly. In this example, the mustache template
         retrieves the value of the <code>version</code> feature flag in Launch
         Darkly. You can use this value to replace any variable with the name
         <code>sample-app-version</code> in the YAML files that you added to
         the <code>spec.templates</code> section of your mustache template. </td>
      </tr>
   </tbody>
   </table>

9. Apply the change to your mustache template.

   ```bash
   kubectl apply -f mustachetemplate.yaml
   ```

10. Verify that the mustache template successfully retrieved the values from
Launch Darkly. If errors occur, you can see them in the **Status** section of
your CLI output.

    ```bash
    kubectl describe mustachetemplate <mustache_template_name> -n <namespace>
    ```

11. Verify that your remote resource is created successfully and that variables
are successfully replaced by the mustache template.

    ```bash
    kubectl describe rrs <remote_resource_name> -n <namespace>
    ```

**Note**: If you delete a mustache template, all resources that you defined in
the `spec.templates` section are removed at the same time. To keep the
Kubernetes resources, add the `deploy.razee.io/Reconcile: false` label to all
your YAML files.

### Bundling Kubernetes resources in a ManagedSet

Use ManagedSets to group all the Kubernetes resources that you want to deploy or
remove at the same time in one list. You can include all Razee deployment
components that you used in previous steps and combine them with other
Kubernetes resources, such as config maps, PVCs, or secrets.

1. Create a configuration file for your managed set and define all Kubernetes
resources that you want to create with Razee.

   ```yaml
   kind: ManagedSet
   apiVersion: deploy.razee.io/v1alpha1
   metadata:
     name: <managed_set_name>
     namespace: <namespace>
   spec:
     resources:
       - apiVersion: deploy.razee.io/v1alpha1
         kind: FeatureFlagSetLD
         metadata:
           name: <feature_flag_set_name>
           namespace: <namespace>
         spec:
           sdk-key: "<launch_darkly_sdk_key>"
       - apiVersion: "deploy.razee.io/v1alpha1"
         kind: MustacheTemplate
         metadata:
           name: <mustache_template_name>
           namespace: <namespace>
         spec:
           env:
           - name: <env_name>
             valueFrom:
               genericKeyRef:
                 apiVersion: deploy.razee.io/v1alpha1
                 kind: FeatureFlagSetLD
                 name: <feature_flag_set_name>
                 key: <launch_darkly_feature_flag>
           templates:
           - apiVersion: "deploy.razee.io/v1alpha1"
             kind: RemoteResourceS3
             metadata:
               name: <remote_resource_name>
               namespace: <namespace>
             spec:
               auth:
                 hmac:
                   access_key_id: <cos_access_key_ID>
                   secret_access_key: <cos_secret_access_key>
               requests:
               - options:
                   url: https://<cos_bucket_public_url>/<bucket_name>/{{<env_name>}}-app.yaml
   ```

   <table>
   <thead>
   <th colspan=2>Understanding the YAML file components</th>
   </thead>
   <tbody>
   <tr>
         <td><code>metadata.name</code></td>
         <td>Enter the name your managed set. </td>
      </tr>
       <tr>
         <td><code>metadata.namespace</code></td>
         <td>Enter the namespace where you want to deploy your managed set. The
         managed set can be deployed to a different namespace than the resources
         that you want to create with it.  </td>
      </tr>
      <tr>
         <td><code>spec.resources</code></td>
         <td>Add the YAML file configuration of each Kubernetes resources that
         you want to create with the managed set.    </td>
      </tr>
   </tbody>
   </table>

2. Create the managed set in your cluster.

   ```bash
   kubectl apply -f managedset.yaml
   ```

3. Verify that your managed set is created successfully. If errors occur, you
can see them in the **Status** section of your CLI output.

   ```bash
   kubectl describe managedset <managedset_name> -n <namespace>
   ```

   Example output:

   ```bash
   Name:         mymanagedset
   Namespace:    razee
   Labels:       <none>
   Annotations:  kubectl.kubernetes.io/last-applied-configuration:
                {"apiVersion":"deploy.razee.io/v1alpha1","kind":"ManagedSet","metadata":{"annotations":{},"name":"ms","namespace":"razee"},"spec":{"resou...
   API Version:  deploy.razee.io/v1alpha1
   Kind:         ManagedSet
   Metadata:
     Creation Timestamp:  2019-05-16T18:22:13Z
     Finalizers:
       children.managedsets.deploy.razee.io
     Generation:        1
     Resource Version:  37976193
     Self Link:         /apis/deploy.razee.io/v1alpha1/namespaces/razee/managedsets/ms
     UID:               87136536-7807-11e9-9159-42b4d0e9ec96
   Spec:
     Resources:
       API Version:  deploy.razee.io/v1alpha1
       Kind:         FeatureFlagSetLD
       Metadata:
         Name:       myfeatureflag
         Namespace:  default
       Spec:
         Sdk - Key:  <sdk_key>
   Status:
     Children:
    /Apis/Deploy.Razee.Io/V1Alpha1/Namespaces/Default/Featureflagsetsld/Ffs:
    Deploy.Razee.Io/Reconcile: true
   Events: <none>
   ```

4. Verify that all the Kubernetes resources that you defined in your managed set
are created successfully.

5. Delete the managed set. **Tip**: To keep Kubernetes resources of your managed
set, even after you delete the managed set, add the `deploy.razee.io/Reconcile:
false` label to Kubernetes resource configuration.

   ```bash
   kubectl delete managedset <managedset_name> -n <namespace>
   ```

6. Verify that all Kubernetes resources of your managed set are removed.

## Stay connected

If you encounter an issue with using Razee, or want to learn more about Razee
components and how to use them for your own Continuous Delivery pipeline, join
the Razee development team in the [IBM Cloud Kubernetes Service Slack](https://ibm-container-service.slack.com)
and post your question in the `#razee` channel. Click [here](https://cloud.ibm.com/kubernetes/slack)
to request access to this Slack.

## License

All Razee components are licensed under the [Apache License 2.0](https://github.com/razee-io/RazeeDeploy-core/blob/master/LICENSE).
