using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai-filmes.Controllers
{
    public class IGeneroRepository
    {
    /// <summary>
    /// Lista todos os gêneros
    /// </summary>
    /// <returns>Retorna uma lista de gêneros</returns>
    List<GeneroDomain> Listar();
    }
}
