module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "ticket_escalation",
      {
        ticket_escalation_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        ticket_master_id: DataTypes.INTEGER,
      },
  
      {
        tableName: "ticket_escalation",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };