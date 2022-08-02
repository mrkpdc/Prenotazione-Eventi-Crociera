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

        public List<Prenotazione> GetPrenotazioniByID(string CodReplica)
        {
            List<Prenotazione> result = this.crocieraDBContext.Prenotazioni.Where(p => p.CodReplica == CodReplica).ToList();
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
                this.crocieraDBContext.Prenotazioni.Add(prenotazione);
                this.crocieraDBContext.SaveChanges();
            }
            catch (Exception ex)
            {

            }
        }

        //Funzione che recupera tutte le prenotazioni
        public List<PrenotazioneModel> GetListaPrenotazioniAdmin()
        {
            List<Prenotazione> result = this.crocieraDBContext.Prenotazioni.ToList();
            result = result.ToList();
            List<PrenotazioneModel> model = new List<PrenotazioneModel>();
            foreach (Prenotazione p in result)
                model.Add(new PrenotazioneModel()
                {
                    CodPrenotazione = p.CodPrenotazione.ToString(),
                    CodUtente = p.CodUtente,
                    CodReplica = p.CodReplica,
                    Quantita = p.Quantita.ToString()
                });
            return model;
        }

        //Funzione che recupera le prenotazioni di un utente specifico
        public List<PrenotazioneModel> GetListaPrenotazioniUser(string userID)
        {
            List<Prenotazione> result = this.crocieraDBContext.Prenotazioni.ToList();
            result = result.Where(p => p.CodUtente == userID).ToList();
            List<PrenotazioneModel> model = new List<PrenotazioneModel>();
            foreach (Prenotazione p in result)
                model.Add(new PrenotazioneModel()
                {
                    CodPrenotazione = p.CodPrenotazione.ToString(),
                    CodUtente = p.CodUtente,
                    CodReplica = p.CodReplica,
                    Quantita = p.Quantita.ToString()
                });
            return model;
        }


    }
}
