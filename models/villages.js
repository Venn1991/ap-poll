module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "villages",
      {
          village_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        village_name: DataTypes.STRING,
        part_no: DataTypes.INTEGER,
      },
  
      {
        tableName: "villages",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };