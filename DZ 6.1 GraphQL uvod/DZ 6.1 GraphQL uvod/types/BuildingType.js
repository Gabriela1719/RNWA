const {
  GraphQLObjectType,
  GraphQLInt,
  GraphQLString,
  GraphQLList,
} = require("graphql");
const { dbQuery } = require("../database");
const BuildingType = require("./Airplane.js");

const BuildingType = new GraphQLObjectType({
  name: "BuildingType",
  fields: () => ({
    building_UID: { type: GraphQLInt },
    number: { type: GraphQLInt },
    name: { type: GraphQLString },
    building: {
      type: BuildingType,
      resolve: async (post) => {
        let res = await dbQuery(
          `SELECT * FROM building WHERE building_UID = ${parseInt(
            post.building_UID
          )}`
        );
        return res[0];
      },
    },
  }),
});

module.exports = BuildingType;
