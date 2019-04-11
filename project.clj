(defproject some-app "0.1.0-SNAPSHOT"
  :dependencies [[org.clojure/clojure "1.9.0"]
                 [org.clojure/clojurescript "1.10.335"]
                 [reagent "0.8.1"]
                 [thheller/shadow-cljs "2.4.24"]
                 ;[thheller/shadow-cljs "2.8.29"]
                 [re-frame "0.10.6"]]

  :min-lein-version "2.5.3"
  :source-paths ["src/clj" "src/cljs"]
  :clean-targets ^{:protect false} ["resources/public/js/compiled" "target"])
