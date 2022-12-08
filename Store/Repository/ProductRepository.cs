using Store.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Store.Repository
{
    public interface IProductRepository : IDisposable
    {
        IEnumerable<Product> GetProduct();
        Product GetProductByID(int Id);
        void InsertProduct(Product store);
        void DeleteProduct(int ProductId);
        void UpdateProduct(Product store);
        void Save();
    }

    public class ProductRepository: IProductRepository
    {
        private StoreDbEntity _context;
        public ProductRepository(StoreDbEntity context)
        {
            this._context = context;
        }
        public IEnumerable<Product> GetProduct()
        {
            return _context.Products.ToList();
        }
        public Product GetProductByID(int ProductId)
        {
            return _context.Products.Find(ProductId);
        }
        public void InsertProduct(Product store)
        {
            _context.Products.Add(store);
        }
        public void DeleteProduct(int ProductId)
        {
            Product store = _context.Products.Find(ProductId);
            _context.Products.Remove(store);
        }
        public void UpdateProduct(Product store)
        {
            _context.Entry(store).State = EntityState.Modified;
        }
        public void Save()
        {
            _context.SaveChanges();
        }
        private bool disposed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}