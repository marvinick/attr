var AllProducts = React.createClass({
  render() {
    var products = this.props.products.map((product) => {
      return (
        <div key={product.id}>
          <h3>{product.name}</h3>
          <p>{product.content}</p>
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
