using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai-filmes.Domains
{
    public class FilmeDomain
    {
        public int Id_Filme { get; set; }

        public string Título { get; set; }

        public int Id_Genero { get; set; }

        public GeneroDomain Genero { get; set; }
    }
}
