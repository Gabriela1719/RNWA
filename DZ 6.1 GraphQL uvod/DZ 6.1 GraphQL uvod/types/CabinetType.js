const {
  GraphQLObjectType,
  GraphQLInt,
  GraphQLString,
  GraphQLList,
} = require("graphql");

const CabinetType = new GraphQLObjectType({
  name: "Cabinet",
  fields: {
    cabinet_UID: { type: GraphQLInt },
    label: { type: GraphQLInt },
    panelCapacity: { type: GraphQLString },
  },
});

module.exports = CabinetType;
