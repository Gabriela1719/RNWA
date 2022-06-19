const { GraphQLObjectType, GraphQLInt } = require("graphql");

const Building = new GraphQLObjectType({
  name: "Building",
  fields: () => ({
    building_UID: { type: GraphQLInt },
    number: { type: GraphQLInt },
    name: { type: GraphQLString },
  }),
});

module.exports = AirplaneType;
