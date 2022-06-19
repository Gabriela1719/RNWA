const { GraphQLInt, GraphQLString, GraphQLList } = require("graphql");
const { dbQuery } = require("../../database");
const { CabinetType } = require("../../types");

const fieldsCabinet = {
  type: CabinetType,
  args: {
    id: { type: GraphQLInt },
  },
  async resolve(_, { id }) {
    let res = await dbQuery(
      `SELECT * FROM cabinet WHERE cabinet_UID = ${cabinet_UID}`
    );
    return res[0];
  },
};

module.exports = fieldsCabinet;
