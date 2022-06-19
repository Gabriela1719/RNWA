const { GraphQLObjectType } = require("graphql");
const insertAirplaneType = require("./insertBuilding");
const insertCabinet = require("./insertCabinet");
const insertBuilding = require("./insertBuilding");

const Mutation = new GraphQLObjectType({
  name: "mutation",
  fields: {
    // Insert a new Cabinet
    insertCabinet: insertCabinet,
    // insert new Building
    insertBuilding: insertBuilding,
  },
});

module.exports = Mutation;
