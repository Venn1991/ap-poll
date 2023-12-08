module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "states",
      {
        state_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        state_name: DataTypes.STRING,
      },
  
      {
        tableName: "states",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };