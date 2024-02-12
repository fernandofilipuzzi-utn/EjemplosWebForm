using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace IntegracionJavascript.Controllers
{
    [RoutePrefix("api")]
    public class EjemploController : ApiController
    {
        [HttpPost]
        [Route("MiMetodoPostCSharp")]
        public string PostMiMetodoPostCSharp([FromBody]string parametro)
        {
            return parametro + 1;
        }

        [HttpGet]
        [Route("MiMetodoGetCSharp")]
        public string GetMiMetodoGetCSharp(string parametro)
        {
            return parametro + 1;
        }

    }
}
