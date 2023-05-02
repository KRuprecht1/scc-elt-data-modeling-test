from prefect import flow
from prefect.filesystems import GitHub
from prefect_dbt.cli.commands import DbtCoreOperation
from prefect_dbt.cli import DbtCliProfile
from prefect_dbt.cli.configs import BigQueryTargetConfigs


@flow
def trigger_dbt_flow() -> str:
    # github_block = GitHub.load("dbt")

    # bigquery_target_configs = BigQueryTargetConfigs.load("bigquery-configs")

    # dbt_cli_profile = DbtCliProfile(
        # name="scc-bigquery-db",
        # target="dev",
        # target_configs=bigquery_target_configs,
    # )

    result = DbtCoreOperation(
        commands=["dbt debug"],
        project_dir="../dbt/test_project",
        # dbt_cli_profile=dbt_cli_profile,
        # overwrite_profiles=True,
    ).run()
    return result


if __name__ == "__main__":
    trigger_dbt_flow()
