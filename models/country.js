module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "country",
      {
        countryid: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        countryname: DataTypes.STRING,
        state_name: DataTypes.STRING,
      },
  
      {
        tableName: "country",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };
  