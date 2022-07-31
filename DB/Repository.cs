using ProvaEsame.DB.Entities;
using ProvaEsame.Models;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ProvaEsame.DB
{
    public class Repository
    {
        private CrocieraDBContext crocieraDBContext;
        private UserDBContext userDBContext;
        public Repository(CrocieraDBContext crocieraDBContext, UserDBContext userDBContext)
        {
            this.crocieraDBContext = crocieraDBContext;
            this.userDBContext = userDBContext;
    }

        // Query per crociera

        public List<Evento> GetEventi()
        {
            List<Evento> result = this.crocieraDBContext.Eventi.ToList();
            return result;
        }

        public List<Replica> GetRepliche()
        {
            List<Replica> result = this.crocieraDBContext.Repliche.ToList();
            return result;
        }

        public List<Locale> GetLocali()
        {
            List<Locale> result = this.crocieraDBContext.Locali.ToList();
            return result;
        }
        public List<Locale> GetLocaliByID(string CodLocale)
        {
            List<Locale> result = this.crocieraDBContext.Locali.Where(l => l.CodLocale == CodLocale).ToList();
            return result;
        }

        public List<Evento> GetEventiByID(string CodEvento)
        {
            List<Evento> result = this.crocieraDBContext.Eventi.Where(e => e.CodEvento == CodEvento).ToList();
            return result;
        }

        public List<Prenotazione> GetPrenotazioni()
        {
            List<Prenotazione> result = this.crocieraDBContext.Prenotazioni.ToList();
            return result;
        }

        public void InserisciPrenotazione(Prenotazione prenotazione)
        {
            try
            {
                if(this.crocieraDBContext.Prenotazioni.Where(p => p.CodReplica == prenotazione.CodReplica).FirstOrDefault() == null)
                {
                    this.crocieraDBContext.Prenotazioni.Add(prenotazione);
                    this.crocieraDBContext.SaveChanges();
                }
                else
                {
                    Prenotazione toUpdate = this.crocieraDBContext.Prenotazioni.Where(p => p.CodReplica == prenotazione.CodReplica).FirstOrDefault();
                    toUpdate.Quantita = toUpdate.Quantita + prenotazione.Quantita;
                    this.crocieraDBContext.Prenotazioni.Update(toUpdate);
                    this.crocieraDBContext.SaveChanges();
                }
            }
            catch (Exception ex)
            {

            }
        }

        //public string GetUserId(string name)
        //{
        //    string result = this.userDBContext.Where(e => e.CodEvento == CodEvento).ToList();
        //    return result;
        //}



    }
}
