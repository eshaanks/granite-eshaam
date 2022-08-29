import axios from "axios";

const list = () => axios.get("/users");

const signup = payload =>
  axios.post("/users", {
    user: payload,
  });

const usersApi = {
  list,
  signup,
};

export default usersApi;
