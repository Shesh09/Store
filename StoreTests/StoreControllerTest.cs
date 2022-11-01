using System;
using System.Collections.Generic;
using System.Text;
using Xunit;
using Store.Controllers;
using Store.Models;
using Store.Repository;
using Moq;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;

namespace StoreTests
{
    public class StoreControllerTest
    {
        private Mock<IProductRepository> mockProductRepository;
        private ProductController _productController;

        public StoreControllerTest()
        {
            mockProductRepository = new Mock<IProductRepository>();
        }

        public StoreControllerTest(ProductController productController)
        {
            _productController = productController;
        }

        [Fact]
        public void Should_Return_Ok_OnGetProduct()
        {

            //arrange
            //act
            var result = _productController.Index();
            //Asert
            Assert.IsType<OkObjectResult>(result.Result);
            //arrange
            //mockProductRepository.Setup(x => x.GetProduct())
            //    .Returns(new List<StoreDB> { new StoreDB() { } });

            //var controller = new ProductController(mockProductRepository.Object);

            //act

            //var response = controller.Index();

            //var result = response.Result as OkObjectResult;
            //var actualData = result.Value as IEnumerable<StoreDB>;

            //assert

            //Assert.IsType<OkObjectResult>(response);
            //Assert.IsType<List<StoreDB>>(actualData);
        }
    }
}
