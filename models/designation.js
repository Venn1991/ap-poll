module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "designation",
      {
        designation_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        designation_name: DataTypes.STRING,
      },
  
      {
        tableName: "designation",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };