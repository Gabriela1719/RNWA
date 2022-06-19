const { GraphQLString } = require("graphql");
const { dbQuery } = require("../../database");
const { CabinetType } = require("../../types");

const insertCabinet = {
  type: CabinetType,
  args: {
    label: { type: GraphQLString },
    panelCapacity: { type: GraphQLString },
  },
  async resolve(_, { label, panelCapacity }) {
    let res = await dbQuery(
      `insert into cabinet (label, panelCapacity) values ('${label}', '${panelCapacity}')`
    );
    return { id: res.cabinet_UID, label, panelCapacity };
  },
};

module.exports = insertCabinet;
