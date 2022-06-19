const { GraphQLObjectType } = require("graphql");

const fieldsCabinet = require("./cabinet");
const fieldsCabinets = require("./cabinets");
const fieldsBuildingTypes = require("./buildingtypes");
const fieldsBuildingType = require("./building");

const Query = new GraphQLObjectType({
  name: "Query",
  fields: {

    country: fieldsCabinet,
    countries: fieldsCabinets,

    buildingTypes: fieldsBuildingTypes,
    // one airplanetype
    building: fieldsBuildingType,
  },
});

module.exports = Query;
