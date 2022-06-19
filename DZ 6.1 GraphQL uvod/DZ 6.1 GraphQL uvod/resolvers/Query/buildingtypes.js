const { GraphQLList } = require("graphql");
const { dbQuery } = require("../../database");
const BuildingType = require("../../types/BuildingType");

const fieldsBuildingTypes = {
  type: new GraphQLList(BuildingType),
  async resolve(_, {}) {
    let res = await dbQuery(`SELECT * FROM building`);
    return res;
  },
};

module.exports = fieldsBuildingTypes;
