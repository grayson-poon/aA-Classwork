import { connect } from 'react-redux';
import TodoList from './todo_list';
import allTodos from '../../reducers/selectors';
import { receiveTodo } from '../../actions/todo_actions';

const mapStateToProps = (state) => {
  return{
    todos: allTodos(state),
  }
}

const mapDispatchToprops = (dispatch) => (
  {
    receiveTodo: (todo) => dispatch(receiveTodo(todo)),
  }
)

export default connect(mapStateToProps, mapDispatchToprops)(TodoList);
