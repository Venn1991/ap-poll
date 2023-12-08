module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "ticket_attachments",
      {
        ticket_attachment_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        ticket_master_id: DataTypes.INTEGER,
        attachment_name: DataTypes.STRING,
        attachment_type: DataTypes.STRING,
        attachments_discription: DataTypes.STRING,
        attachments_url: DataTypes.STRING,
      },
  
      {
        tableName: "ticket_attachments",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };