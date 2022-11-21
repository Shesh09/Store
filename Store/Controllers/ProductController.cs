using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Store.Models;
using Store.Repository;
using System.Data;
using System.Linq;
using Microsoft.AspNetCore.Mvc;

namespace Store.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductRepository _productRepository;

        public ProductController()
        {
            _productRepository = new ProductRepository(new StoreDbEntities());
        }

        public ProductController(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }

        // GET: Product
        public ActionResult Index()
        {
            var Products = _productRepository.GetProduct();
            _productRepository.Save();
                /*from product in _productRepository.GetProduct() select product;*/
            return View(Products);
        }
        public ViewResult Details(int id)
        {
            Product store = _productRepository.GetProductByID(id);
            return View(store);
        }
        public ActionResult Create()
        {
            return View(new Product());
        }
        [HttpPost]
        public ActionResult Create(Product store)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    _productRepository.InsertProduct(store);
                    _productRepository.Save();
                    return RedirectToAction("Index");
                }
            }
            catch (DataException)
            {

                ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your administrator");
            }
            return View(store);
        }
        public ActionResult Edit(int id)
        {
            Product store = _productRepository.GetProductByID(id);
            return View(store);
        }
        [HttpPost]
        public ActionResult Edit(Product store)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    _productRepository.UpdateProduct(store);
                    _productRepository.Save();
                    return RedirectToAction("Index");
                }
            }
            catch (DataException)
            {

                ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");            
            }
            return View(store);
        }
        public ActionResult Delete(int id, bool? saveChangesError)
        {
            if (saveChangesError.GetValueOrDefault())
            {
                ViewBag.ErrorMessage = "Unable to save changes. Try again, and if the problem persists see your system administrator";
            }
            Product store = _productRepository.GetProductByID(id);
            return View(store);
        }
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                Product store = _productRepository.GetProductByID(id);
                _productRepository.DeleteProduct(id);
                _productRepository.Save();
            }
            catch (DataException)
            {

                return RedirectToAction("Delete",
                    new System.Web.Routing.RouteValueDictionary {
                    { "id", id
                    },
                    { "saveChangesError", true} });
            }
            return RedirectToAction("Index");
        }
    }
}