var Body = React.createClass({
  getInitialState() {
    return { products: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/products.json', (response) => { this.setState({ products: response }) });
  },

  handleSubmit(product) {
    var newState = this.state.products.concat(product);
    this.setState({ products: newState })
  },

  render() {
    return (
      <div>
        <NewProduct handleSubmit={this.handleSubmit} />
        <AllProducts products={this.state.products} />
      </div>
    )
  }
});
