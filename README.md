# EvershopInstall

# PostgreSQL Installation and Configuration Script

This script automates the installation and initial configuration of PostgreSQL on Debian-based systems. It also includes instructions for setting the password for the `postgres` user, creating a database, and creating an Evershop app using `create-evershop-app`.

## Usage

1. Clone this repository or download the script `install_postgresql.sh`.
2. Open a terminal and navigate to the directory containing the script.
3. Make the script executable by running:

    ```bash
    chmod +x install_postgresql.sh
    ```

4. Execute the script with root privileges:

    ```bash
    sudo ./install_postgresql.sh
    ```

5. Follow the prompts to edit `pg_hba.conf` and `postgresql.conf`. Press Enter after finishing each editing session.
6. Once the script completes, PostgreSQL will be installed, configured, and ready for use.
7. Additionally, an Evershop app will be created in the `my-app` directory.

## Creating an Evershop App

After running the script, follow these steps to create an Evershop app:

1. Navigate to the `my-app` directory:

    ```bash
    cd my-app
    ```

2. Use the `create-evershop-app` command to create a new Evershop app:

    ```bash
    npx create-evershop-app my-app
    ```

3. Follow the prompts to configure your Evershop app.

## Important Note

This script assumes that you're running it on a Debian-based system and that you have appropriate permissions to execute the commands with `sudo`. Additionally, ensure that you review and understand the changes made by the script before proceeding.

## License

This script is provided under the [MIT License](LICENSE).
