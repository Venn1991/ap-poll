module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "mandals",
      {
        mandal_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        consistency_id: DataTypes.INTEGER,
        mandal_name: DataTypes.STRING,
      },
  
      {
        tableName: "mandals",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };