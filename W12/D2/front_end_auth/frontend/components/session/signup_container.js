import { connect } from "react-redux";
import { createNewUser } from "../../actions/session";
import Signup from "./signup";

const mapDispatchToProps = (dispatch) => ({
  createNewUser: (formUser) => dispatch(createNewUser(formUser)),
});

export default connect(null, mapDispatchToProps)(Signup);
// mSTP is null because we don't need to rely on any slices of state