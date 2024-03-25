﻿using Domain.Entities;
using Domain.Repositories;
using Microsoft.EntityFrameworkCore;
using Persistence.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistence.Repositories
{
    public class FavouriteRepository : IFavouriteRepository
    {
        private readonly ApplicationDbContext _dbContext;

        public FavouriteRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }
        public void Add(Favourite favourite)
        {
            _dbContext.Favourites.Add(favourite);
            _dbContext.SaveChanges();
        }

        public void Delete(int id)
        {
            var fav = _dbContext.Favourites.Find(id);
            if (fav != null)
            {
                _dbContext.Favourites.Remove(fav);
                _dbContext.SaveChanges();
            }
        }

        public void Delete(Favourite entity)
        {
            throw new NotImplementedException();
        }

        public Favourite? Get(int id)
        {
            throw new NotImplementedException();
        }

        public List<Favourite> Get(string name)
        {
            throw new NotImplementedException();
        }

        public List<Favourite> GetAll()
        {
            throw new NotImplementedException();
        }

        public List<Favourite> GetByCustomer(int customerID)
        {
            throw new NotImplementedException();
        }

        public Favourite? GetByCustomerId(int customerId)
        {
            return _dbContext.Favourites.FirstOrDefault(f => f.CustomerId == customerId);
        }

        public Favourite? GetById(int id)
        {
            return _dbContext.Favourites.Find(id);

        }

        public List<Favourite> GetByProduct(int productID)
        {
            throw new NotImplementedException();
        }

        public void Update(Favourite fav)
        {
            _dbContext.Favourites.Update(fav);
            _dbContext.SaveChanges();
        }
    }
}