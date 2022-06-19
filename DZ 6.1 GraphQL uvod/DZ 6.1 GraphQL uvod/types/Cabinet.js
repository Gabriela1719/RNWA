const {
  GraphQLObjectType,
  GraphQLInt,
  GraphQLString,
  GraphQLList,
} = require("graphql");
const { dbQuery } = require("../database");
const CabinetType = require("./CabinetType");

const PostType = new GraphQLObjectType({
  name: "Post",
  fields: () => ({
    cabinet_UID: { type: GraphQLInt },
    label: { type: GraphQLInt },
    panelCapacity: { type: GraphQLString },
    user: {
      type: UserType,
      resolve: async (post) => {
        let res = await dbQuery(
          `SELECT * FROM cabinet WHERE cabinet_UID = ${parseInt(
            post.cabinet_UID
          )}`
        );
        return res[0];
      },
    },
  }),
});

module.exports = CabinetType;
