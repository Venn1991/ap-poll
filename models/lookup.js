module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "lookup",
      {
        lookup_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        lookup_name: DataTypes.STRING,
        lookup_valuename: DataTypes.STRING,
      },
  
      {
        tableName: "lookup",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };