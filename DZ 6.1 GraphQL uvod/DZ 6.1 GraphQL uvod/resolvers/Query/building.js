const { GraphQLInt } = require("graphql");
const { dbQuery } = require("../../database");
const BulidingType = require("../../types/Building");

const fieldsBuildingType = {
  type: BuildingType,
  args: {
    building_UID: { type: GraphQLInt },
  },
  async resolve(_, { building_UID }) {
    let res = await dbQuery(
      `SELECT * FROM building WHERE building_UID = ${building_UID}`
    );
    return res[0];
  },
};

module.exports = fieldsBuildingType;
