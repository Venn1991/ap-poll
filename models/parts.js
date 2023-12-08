module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "parts",
      {
        part_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        part_no: DataTypes.INTEGER,
        male_votes: DataTypes.INTEGER,
        female_votes: DataTypes.INTEGER,
        other_votes: DataTypes.INTEGER,
        sachivalayam_id: DataTypes.INTEGER,
      },
  
      {
        tableName: "parts",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };