# Multi-Game_Management_System_Oracle_DB_Project

## **Table of Contents:**

1. [Project Overview](#project-overview)
2. [Motivation Behind This Project Idea](#motivation-behind-this-project-idea)
3. [Database Design Diagrams](#database-design-diagrams)
4. [Technologies Used](#technologies-used)
5. [Prerequisites](#prerequisites)
6. [Steps for Creating Database Tables and Loading Mock Data](#steps-for-creating-database-tables-and-loading-mock-data)
7. [Micro-Functionalities](#functionalities)
   - [Functionality #1: Add Difficulty Column and Assign Rewards](#functionality-1-add-difficulty-column-and-assign-experience-and-coin-rewards-based-on-region-and-difficulty-for-each-main-quest)
   - [Functionality #2: Completion Status and Team Rewards](#functionality-2-setting-completion-status-of-main-quest-and-calculates-coin-rewardsexperience-and-level-for-each-team)
   - [Functionality #3: Minimum Level Requirement and Validation](#functionality-3-setting-minimum-level-requirement-for-each-main-quest-and-check-if-the-teams-respect-it)
   - [Functionality #4: Guild Taxation System](#functionality-4-creating-a-taxes_collected_total-column-and-apply-guild-taxes-accordingly)
   - [Functionality #5: Allocated Random Items for Each Inventory's Slot and Nullify the Incompatible Ones](#functionality-5-allocated-random-items-for-each-inventorys-slot-and-nullify-the-incompatible-ones)

## **Project overview**

This project is a relational database designed to manage data for a game company with multiple games that share a similar structure. The database supports key game elements such as player accounts, guilds, main and side quests, an inventory/shop system and other addional elements, while allowing for future scalability and feature expansion.

## **Motivation behind this project idea:**

The main idea for this project was born out of a personal interest for creating a practical and cost-effective database solution tailored for small to medium-sized game studios. More precisely, these companies have in common the tendency to develop games, that share common structural features, such as player accounts, guilds system, maine & side quests, inventory systems, and many more.

By designing a reusable and adaptable relational database that addresses these shared needs, I aim to provide a foundation that can accelerate development and ensure consistent data management.

A key focus of this project is optimizing for performance and universal functionality, offering a solution that balances affordability and scalability. While vertical scaling has its limits, especially when it comes to increased data volume and processing demands, the proposed design can serve as a viable interim solution. For studios at an early or moderate scale, this approach might provide the flexibility to launch and iterate quickly, with the option to evolve infrastructure as requirements grow.

> **Notes**: This project is a continuous work in progress. I am actively working to improve its efficiency, scalability, and functionality. Accordingly, this repository serves as both a progress tracker and a documentation space, as I explore database design principles, query optimization techniques, and best practices in database administration and development.

## **Database Design Diagrams:**

First of all, let's checkout the database design diagrams.

- **dbdiagram** design pdf: `Database_Schemas\updated_schema_dbgrm.pdf`
- **Sql data modeler** design pdf: `Database_Schemas\updated_multigame_schema.pdf`

## **Technologies used:**

- Database Engine: **Oracle RDBMS**
- Tools:
  - **Code editors**: Oracle SQL Developer and Visual Studio Code (with the official extension from Oracle, called: Oracle SQL Developer Extension for VSC)
  - **Database Design**: Oracle SQL Data Modeler & dbdiagram.io

## **Prerequisites:**

- An Oracle server must be available, either installed locally or accessible remotely with proper configuration.
- SQL Developer or other Code Editors(ex: Visual Studio Code with the right extensions).
- A basic understanding of SQL querying and PL/SQL "scripting" might help you understand things faster, but it is not mandatory.

## **Steps for Creating Database Tables and Loading Mock Data:**

1. Run the SQL file `Scripts_for_creating_tables_+_mockdata\Create_empty_tables_vers2.1.sql` to create the database tables along with their interdependencies.

2. Run the SQL file `Scripts_for_creating_tables_+_mockdata\Create_empty_tables_vers2.1.sql` to populate the database with mock data using _INSERT_ statements. This dataset represents a single game that follows the proposed database structure.

3. After succesfully creating and loading the mock data from steps 1 and 2, down below will be detailed some functionalities that can be runned and used in order to enrich the database design and utility.

4. Feel free to send me recommandation of what kind of features you might wanna see in the future updates.

## **Functionalities:**

> **Note** the code for all functionalities can be found in the folder called: `PlSQL+SQL_micro-functionalities`, but I will list each functionalties relative path for easier identification.

### **Functionality #1: Add Difficulty Column and Assign Experience and Coin Rewards Based on Region and Difficulty for Each Main Quest**

> **Task description:**  
> The core concept involves building a package that encapsulates the following procedures and functions:
>
> - A procedure that creates a `difficulty` column for main quests (if not already present) and assigns random difficulty values.
> - A procedure that assigns experience points to the team based on a formula that factors in quest difficulty and region.
> - A procedure that assigns coin rewards to the team using a similar formula.
> - A procedure that calls the above three procedures and displays the results.
> - A function that calculates the value for experience/coins based on the difficulty and region formula from above.
> - After verifying functionality's procedures and function separately, I dropped and re-created them in a package for reuse and organization.
>   -!!! Important: first of all run at least once the first procedure before creating the package cause otherwise, it won't work

- Source code: [click here](PlSQL+SQL_micro-functionalities/Functionality_01_Difficulty_column_and_generating_random_exp_coins.sql)

- <details>
    <summary>Expected Results:</summary>
    <br>
    <img src="Media_Functionalities_Results_PLSQL/difficulty_column_gen.png" alt="" width="600">
    <img src="Media_Functionalities_Results_PLSQL/random_values_for_difficulty.png" alt="" width="600">
    <img src="Media_Functionalities_Results_PLSQL/running_through_pkg_exp_coin_lvl_gen.png" alt="" width="600">
  </details>

---

### **Functionality #2: Setting completion status of main quest and calculates coin rewards,experience and level for each team**

> **Task description:**  
> Core concept: Building a package of procedures and functions that perform the following:
>
> - A procedure that updates the mission status column to mark quests as completed (1) or incomplete (0), randomly.
> - A procedure that verifies and creates (if necessary) three columns in the `character_party` table:
>   1. `exp_echipa` (team experience)
>   2. `coins_echipa` (team coins)
>   3. `lvl_echipa` (team level), which is calculated based on total experience.
> - A procedure that calculates experience per team, stores results in an indexed table, and updates the database accordingly.
> - A similar procedure that calculates and stores coin rewards per team.
> - A function that calculates the team level based on the total experience.
> - Finally, all logic is encapsulated into a package for reuse and modularity.
> - Before proceeding, ensure Functionality #1 has been run at least once, as this functionality somehow depends on columns and values created earlier.
> - After verifying the first two procedures work independently, drop them and recreate their logic inside the package for modularity and reuse (more precisely after running the first 2 procedure you can create the package afterwards).

- Source code: [click here](PlSQL+SQL_micro-functionalities/Functionality_02_Setting_completion_status_calculate_team_exp_coins_lvl.sql)

- <details>
    <summary>Expected Results:</summary>
    <br>
    <img src="Media_Functionalities_Results_PLSQL/random_completion_status.png" alt="" width="600">
    <img src="Media_Functionalities_Results_PLSQL/creating the column for exp coins and lvl.png" alt="" width="600">
    <img src="Media_Functionalities_Results_PLSQL/calculation fo exp lvl and coins teams.png" alt="" width="600">
  </details>

---

### **Functionality #3: Setting minimum level requirement for each main quest and check if the teams respect it**

> **Task description:**  
> Core concept: Ensure that main quests enforce a minimum level requirement for teams, by building a package of procedures that perform the following:
>
> - A procedure that calculates and assigns a minimum level to each quest, based on the current average team level.
> - A procedure checks if any team completed a quest without meeting the required level. If so:
>   - The quest completion is revoked.
>   - Half of the quest's coin reward is deducted from the team's total coins.
> - After revoking quest completions, it is recommended to re-run the relevant procedures from the package defined in Functionality #2's package, such as:
>   - `EXECUTE team_progression_package.calculare_exp_echipa;`
>   - `EXECUTE team_progression_package.lvl_procedure;`
> - This ensures that team experience and levels are recalculated correctly, especially since penalizing coin rewards may also affect progression logic.

- Source code: [click here](PlSQL+SQL_micro-functionalities/Functionality_03_Setting_minimum_lvl_requirment_and_check_teams_integrity.sql)
- <details>
    <summary>Expected Results:</summary>
    <br>
    <img src="Media_Functionalities_Results_PLSQL/setting min lvl for each main quest.png" alt="" width="900">
    <img src="Media_Functionalities_Results_PLSQL/debifare mis min lvl check.png" alt="" width="600">
  </details>

---

### **Functionality #4: Creating a `taxes_collected_total` Column and apply guild taxes accordingly**

> **Task description:**  
> Core concept: Apply and collect guild taxes for completed quests. Create the following procedures and include them in a package
>
> - A procedure to ensure the `taxes_collected_total` column exists in the `guild` table.
> - A procedure that calculates and applies guild taxes for completed quests, where the quest's guild is different from the team's origin guild.

- Source code: [click here](PlSQL+SQL_micro-functionalities/Functionality_04_Creating_Collected_Taxes_Column_and_apply_guild_taxes.sql)

- <details>
    <summary>Expected Results:</summary>
    <br>
    <img src="Media_Functionalities_Results_PLSQL/creating guidl taxes column.png" alt="" width="600">
    <img src="Media_Functionalities_Results_PLSQL/applying guild taxes.png" alt="" width="900">
  </details>

  ***

### **Functionality #5: Allocated Random items for each inventory's slot and Nullify the incompatible ones**

> **Task description:**  
> Core concept: Randomize item allocation in player inventories and ensure items match the character's class. Create a package with the following procedures and functions:
>
> - A procedure that populates item slots 1–3 with random items.(the columns `item_available_1 to 3`)
> - Functions to retrieve player and item class IDs.
> - A procedure to validate item-class compatibility and nullify mismatched items.

- Source code: [click here](PlSQL+SQL_micro-functionalities/Functionality_05_Setting_Random_items_in_each_slot_Nullify_the_invalid_ones.sql)

- <details>
    <summary>Expected Results:</summary>
    <br>
    <img src="Media_Functionalities_Results_PLSQL/gen random item available.png" alt="" width="600">
    <img src="Media_Functionalities_Results_PLSQL/nullifying incorrect items from each slot.png" alt="" width="600">
  </details>

### **Automating some procedures from above - Triggers**

> **Task description:**
>
> For Functionality 5:
> Ensures that each item assigned to an inventory slot (1–3) matches the class
> of the character who owns the inventory. If there is a mismatch, the item is
> automatically removed (set to NULL) before the insert or update is committed.
>
> For Functionality 2:
> Automatically recalculates the level of each team (party) whenever any
> update is made to the main_quest table. It calls the level calculation
> procedure from the team progression package after the update.
>
> For Functionality 3:
> After updating the `main_quest_status`, this trigger ensures that the quest
> remains valid for the team by checking if the team meets the minimum level
> requirement. If not, the quest is automatically invalidated.

- Source code: [click here](PlSQL+SQL_micro-functionalities/Functionalities_Triggers.sql)
