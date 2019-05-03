load("@io_bazel_rules_docker//container:container.bzl", "container_push")

def container_push_official(name, image, component):
    container_push(
        name = name,
        format = "Docker",
        image = image,
        registry = "us.gcr.io",
        repository = "eng-prod-237922/" + component,
        tag = "{BUILD_SCM_TIMESTAMP}-{BUILD_SCM_REVISION}",
    )
