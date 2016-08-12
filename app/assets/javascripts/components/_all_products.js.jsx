var AllProducts = React.createClass({
  handleDelete(id) {
    this.props.handleDelete(id);
  },

  render() {
    var products = this.props.products.map((product) => {
      return (
        <div key={product.id}>
          <h3>{product.name}</h3>
          <p>{product.content}</p>
          <button onClick={this.handleDelete.bind(this, product.id)} >Delete</button>
        </div>
      )
    });

    return (
      <div>
        {products}
      </div>
    )
  }
});
