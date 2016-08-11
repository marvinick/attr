var AllProducts = React.createClass({
  getInitialState() {
    return { products: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/products.json', (response) => { this.setState({ products: response }) });
  },

  render() {
    var products = this.state.products.map((product) => {
      return (
        <div key={product.id}>
          <h3>{product.name}</h3>
          <p>{product.content}</p>
      )
    });

    return (
      <div>
        {products}
      </div>
    )
  }
});
