(ns some-app.events
  (:require
   [re-frame.core :as re-frame]
   [some-app.db :as db]
   ))

(re-frame/reg-event-db
 ::initialize-db
 (fn [_ _]
   db/default-db))
