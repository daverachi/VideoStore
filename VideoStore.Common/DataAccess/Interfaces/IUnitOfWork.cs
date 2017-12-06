﻿using System.Threading.Tasks;

namespace VideoStore.Common.DataAccess.Interfaces
{
    public interface IUnitOfWork
    {
        int SaveChanges();
        Task<int> SaveChangesAsync();
        IRepository<T> Repository<T>() where T : class;
        IDbContext GetRepositoryContext<T>() where T : class;
    }
}
