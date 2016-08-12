var NewProduct = React.createClass({
  handleClick() {
    var name = this.refs.name.value;
    var content = this.refs.content.value;
    $.ajax({
      url: '/api/v1/products',
      type: 'POST',
      data: { product: { name: name, content: content } },
      success: (product) => {
        this.props.handleSubmit(product);
      }
    });
  },

  render() {
    return (
      <div>
        <input ref='name' placeholder="Enter ther name of the product" />
        <input ref='content' placeholder='Enter a content description' />
        <button onClick={this.handleClick}>Submit</button>
      </div>
    )
  }
});
