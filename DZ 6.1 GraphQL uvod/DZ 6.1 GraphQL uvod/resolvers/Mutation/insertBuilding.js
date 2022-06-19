const { GraphQLString } = require("graphql");
const { dbQuery } = require("../../database");
const BuildingType = require("../../types/BuildingType");


const insertBuilding = {
  type: BuildingType,
  args: {
    number: { type: GraphQLInt },
    name: { type: GraphQLString },
  },
  async resolve(_, { number, name }) {
    let res = await dbQuery(
      `insert into building (number, name) values ('${number}', '${name}')`
    );
    return { id: res.building_UID, number, name };
  },
};

module.exports = insertBuilding;
