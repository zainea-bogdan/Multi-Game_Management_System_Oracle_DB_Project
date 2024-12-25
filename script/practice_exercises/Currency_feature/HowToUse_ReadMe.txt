### README: Currency Feature for Multi-Game Management OracleDB

#### **Overview**
This script introduces a currency feature to our multi-game management OracleDB, designed to enhance regional gameplay mechanics. It also serves as a learning milestone to document SQL concepts such as triggers, savepoints, and rollbacks.

---

### **Story Behind the Update**
- While designing the database, I realized that each quest (main or side) takes place in a specific region. I thought: *"Why not give each region its own currency?"* This idea inspired the creation of this feature.
- I also wanted to explore SQL triggers and document my learning journey as part of this project/feature.

---

### **Restrictions/Conventions**
- **Currency Scope**:
  - Main quest, side quest, and item prices are stored in their respective region's currency upon insertion.
  - The global currency is associated with **region 5103 - Verdant Hollow**.

- **Item Region Logic**:
  - Each item is linked to a specific merchant.
  - Merchants belong to a single guild.
  - Each guild corresponds to one region.

---

### **How It Works**
1. **Cleanup**: 
   - Run the initial cleanup queries (drops) to remove any leftover elements from previous implementations.
2. **Setup**:
   - Execute the queries to create sequences and the `currency` table.
3. **Data Population**:
   - Populate the `currency` table with regional currency data.
4. **Step-by-Step Updates**:
   - Execute update queries for tables like `main_quest`, `side_quest` (rewards), and `item` (item prices) one at a time. Observe how the updates propagate through the tables.
5. **Trigger Implementation**:
   - Create and test the SQL triggers. These automate currency conversions and enforce regional constraints.
6. **Validation**:
   - Perform updates to test the triggers. See how the automated logic maintains consistency.
7. **Bonus**:
   - Savepoints and rollback commands are included in the script for error handling. If something goes wrong, you can safely revert to a stable state.

---

### **Notes**
- The script is designed to provide a step-by-step learning experience. Run each part incrementally to understand how the feature integrates into the database.
- Savepoints and rollbacks offer flexibility for troubleshooting during implementation.
