using Microsoft.AspNetCore.Mvc;
using Store.Controllers;
using Store.Models;
using Store.Repository;
using System;
using System.Collections.Generic;
using System.Text;
using Xunit;

namespace ProductsTest
{
   public class ProductControlerTest
    {
        ProductController _productControler;
        IProductRepository _productRepository;

        public ProductControlerTest()
        {
            _productControler = new ProductController(_productRepository);
            
        }

        [Fact]
        public void AddTest()
        {
            //Arrange
            var result = new StoreDB()
            {
                Id = 3,
                Product = "Apple",
                Quantity = "2",
                Price = "2",
                Date = new DateTime(2022, 11, 1),

            };
            //Act
            var CreatedProduct = _productControler.Create(result);

            //Assert
            Assert.IsType<CreatedAtActionResult>(CreatedProduct);
        }
    }
}
