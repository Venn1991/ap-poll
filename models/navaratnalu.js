module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "navartnalu",
      {
        navaratnalu_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        navaratnalu_name: DataTypes.STRING,
      },
  
      {
        tableName: "navaratnalu",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };