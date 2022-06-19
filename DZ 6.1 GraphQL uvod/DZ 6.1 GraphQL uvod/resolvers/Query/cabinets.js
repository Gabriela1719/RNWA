const { GraphQLList } = require("graphql");
const { dbQuery } = require("../../database");
const { CabinetType } = require("../../types");

const fieldsCabinets = {
  type: new GraphQLList(CabinetType),
  async resolve(_, {}) {
    let res = await dbQuery(`SELECT * FROM cabinet`);
    return res;
  },
};

module.exports = fieldsCabinets;
