module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "page_access",
      {
        page_access_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        user_id: DataTypes.INTEGER,
        pagename: DataTypes.STRING,
      },
  
      {
        tableName: "page_access",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };