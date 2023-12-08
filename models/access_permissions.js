module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "access_permissions",
      {
        access_permissions_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        user_id: DataTypes.INTEGER,
      },
  
      {
        tableName: "access_permissions",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };