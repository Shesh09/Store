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
        IEnumerable<StoreDB> GetProduct();
        StoreDB GetProductByID(int ProductId);
        void InsertProduct(StoreDB store);
        void DeleteProduct(int ProductId);
        void UpdateProduct(StoreDB store);
        void Save();
    }

    public class ProductRepository: IProductRepository
    {
        private StoreDbEntities _context;
        public ProductRepository(StoreDbEntities context)
        {
            this._context = context;
        }
        public IEnumerable<StoreDB> GetProduct()
        {
            return _context.StoreDBs.ToList();
        }
        public StoreDB GetProductByID(int ProductId)
        {
            return _context.StoreDBs.Find(ProductId);
        }
        public void InsertProduct(StoreDB store)
        {
            _context.StoreDBs.Add(store);
        }
        public void DeleteProduct(int ProductId)
        {
            StoreDB store = _context.StoreDBs.Find(ProductId);
            _context.StoreDBs.Remove(store);
        }
        public void UpdateProduct(StoreDB store)
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