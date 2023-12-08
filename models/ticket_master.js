module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "ticket_master",
      {
        ticket_master_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        voter_pk: DataTypes.INTEGER,
        volunteer_id: DataTypes.INTEGER,
        navaratnalu_id: DataTypes.INTEGER,
        reason: DataTypes.STRING,
      },
  
      {
        tableName: "ticket_master",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };