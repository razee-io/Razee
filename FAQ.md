1. "I deleted the a namespace but it is stuck in terminating because the razee components can't be deleted."
    - see next
1. "I can't delete a razee resource"
    - `kubectl patch <RemoteResource> <my-rr> --type='merge' -p '{"metadata":{"finalizers":null}}'`
    - If you are trying to clean up a cluster and you delete the razee controllers before cleaning up the custom resources,
    you are removing the code necessary to clean up your resources. We use `Finalizers` to manage resource lifecycle; if
    you delete the controllers before deleting the resource, our code is no longer running to remove the finalizer.
    - ie. You have the deployment `remoteresource-controller` running in the razee namespace, then you create custom resource
    RemoteResource `my-rr` in the razee namespace, then you delete the razee namespace. Kubernetes will delete all
    resources, it deletes the deployments first (like remoteresource-controller). Then it tries to delete `my-rr`; it
    gets stuck in terminating because the `remoteresource-controller` no longer exists to remove the finalizer from
    `my-rr`. Which in effect means the razee namespace gets stuck in terminating.
1. Kapitan-delta stopped updating my razee components.
    - `kubectl apply -f https://github.com/razee-io/Kapitan-delta/releases/latest/download/resource.yaml`
    - update kapitan delta to latest version
