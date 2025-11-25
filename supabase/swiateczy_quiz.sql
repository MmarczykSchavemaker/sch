
-- Insert Schavemaker Christmas Quiz
-- insert into public.quiz_sets
--     (id, name, description)
--     values ('2837f576-4712-4e3b-b014-3dcfa3ba860a', 'Schavemaker Christmas Quiz', 'Quiz świąteczny dla pracowników Schavemaker');

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Jak prawidłowo czytamy nazwę firmy?'::text,
    "order" => 0,
    choices => array[
      '{"body": "Szejwmejker", "is_correct": false}'::json,
      '{"body": "Schavemaker", "is_correct": true}'::json,
      '{"body": "Szachermacher", "is_correct": false}'::json,
      '{"body": "Szawemaker", "is_correct": false}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Który pokój w biurze ma status „słodkiej dziurki"?'::text,
    "order" => 1,
    choices => array[
      '{"body": "Sala konferencyjna", "is_correct": false}'::json,
      '{"body": "Kuchnia", "is_correct": false}'::json,
      '{"body": "Magazynek", "is_correct": true}'::json,
      '{"body": "Kantyna", "is_correct": false}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Co najczęściej pojawia się w firmowych mailach przed świętami?'::text,
    "order" => 2,
    choices => array[
      '{"body": "Zamykamy rok!", "is_correct": false}'::json,
      '{"body": "Proszę o zatwierdzenie budżetu", "is_correct": false}'::json,
      '{"body": "Wesołych Świąt i... załącznik np. z kolorową kartką świąteczną!", "is_correct": true}'::json,
      '{"body": "Informacja o premii Mikołajkowej", "is_correct": false}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Co jest bardziej magiczne: święta czy dział planowania?'::text,
    "order" => 3,
    choices => array[
      '{"body": "Dział planowania – tam cuda dzieją się codziennie", "is_correct": true}'::json,
      '{"body": "Święta – przynajmniej są raz w roku", "is_correct": false}'::json,
      '{"body": "Różnie, w zależności od pogody", "is_correct": false}'::json,
      '{"body": "Remis", "is_correct": false}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Czego najczęściej szukamy w pracy?'::text,
    "order" => 4,
    choices => array[
      '{"body": "Długopisu", "is_correct": false}'::json,
      '{"body": "Kasku", "is_correct": false}'::json,
      '{"body": "Karty dostępu", "is_correct": false}'::json,
      '{"body": "Cierpliwości", "is_correct": true}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Najczęściej padające zdanie w poniedziałek:'::text,
    "order" => 5,
    choices => array[
      '{"body": "Co ja tutaj robię?", "is_correct": false}'::json,
      '{"body": "Najgorsze po weekendzie jest pierwsze 5 dni", "is_correct": false}'::json,
      '{"body": "Kawa się skończyła!", "is_correct": true}'::json,
      '{"body": "Jak dobrze, że już po weekendzie", "is_correct": false}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Jak rozpoznać nową osobę na terminalu?'::text,
    "order" => 6,
    choices => array[
      '{"body": "Ma czystą kamizelkę odblaskową", "is_correct": false}'::json,
      '{"body": "Pyta, gdzie jest biuro", "is_correct": false}'::json,
      '{"body": "Nie wie, co to reachstacker", "is_correct": false}'::json,
      '{"body": "Wszystkie powyższe", "is_correct": true}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Gdyby firma była postacią świąteczną, kim by była?'::text,
    "order" => 7,
    choices => array[
      '{"body": "Mikołajem z planem dostaw", "is_correct": false}'::json,
      '{"body": "Elfem od optymalizacji tras", "is_correct": false}'::json,
      '{"body": "Rudolphem z GPS-em", "is_correct": false}'::json,
      '{"body": "Wszystkimi naraz", "is_correct": true}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Ile lat firma działa już na polskim rynku?'::text,
    "order" => 8,
    choices => array[
      '{"body": "10", "is_correct": false}'::json,
      '{"body": "15", "is_correct": false}'::json,
      '{"body": "20", "is_correct": true}'::json,
      '{"body": "25", "is_correct": false}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Zanim pojawiły się kontenery i suwnice, co było najbardziej widoczne na horyzoncie terminala?'::text,
    "order" => 9,
    choices => array[
      '{"body": "Wysoki komin – lokalny punkt orientacyjny", "is_correct": true}'::json,
      '{"body": "Stado kontenerów z przyszłości", "is_correct": false}'::json,
      '{"body": "Wiatrak, który generował dobre pomysły", "is_correct": false}'::json,
      '{"body": "Makieta terminala z klocków LEGO", "is_correct": false}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Ile filiżanek kawy wypijamy dziennie w biurze?'::text,
    "order" => 10,
    choices => array[
      '{"body": "10", "is_correct": false}'::json,
      '{"body": "25", "is_correct": false}'::json,
      '{"body": "50", "is_correct": false}'::json,
      '{"body": "Lepiej nie liczyć", "is_correct": true}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Co jest największym wyzwaniem w kuchni biurowej?'::text,
    "order" => 11,
    choices => array[
      '{"body": "Rozładowanie zmywarki", "is_correct": false}'::json,
      '{"body": "Tajemnicze znikanie sztućców", "is_correct": false}'::json,
      '{"body": "Mikrofalówka, która żyje własnym życiem", "is_correct": false}'::json,
      '{"body": "Wszystko powyższe", "is_correct": true}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Co najbardziej lubią pracownicy na firmowym spotkaniu świątecznym?'::text,
    "order" => 12,
    choices => array[
      '{"body": "Prezentację", "is_correct": false}'::json,
      '{"body": "Przemowy Prokurentów", "is_correct": false}'::json,
      '{"body": "Jedzenie", "is_correct": true}'::json,
      '{"body": "Zdjęcia na ściance", "is_correct": false}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Ile osób w firmie ma staż powyżej 10 lat?'::text,
    "order" => 13,
    choices => array[
      '{"body": "2", "is_correct": false}'::json,
      '{"body": "5", "is_correct": false}'::json,
      '{"body": "10", "is_correct": false}'::json,
      '{"body": "Więcej niż myślisz!", "is_correct": true}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Kto obecnie na sali ma … ?'::text,
    "order" => 14,
    choices => array[
      '{"body": "Asia", "is_correct": false}'::json,
      '{"body": "Basia", "is_correct": false}'::json,
      '{"body": "Karol", "is_correct": false}'::json,
      '{"body": "Michał", "is_correct": true}'::json
    ]
  );

select
  add_question (
    quiz_set_id => '2837f576-4712-4e3b-b014-3dcfa3ba860a'::uuid,
    body => 'Co najczęściej słychać w biurze na Popiełuszki?'::text,
    "order" => 15,
    choices => array[
      '{"body": "Klikanie klawiatury", "is_correct": false}'::json,
      '{"body": "Znowu ciasto?", "is_correct": false}'::json,
      '{"body": "Dźwięk syreny z autostrady", "is_correct": true}'::json,
      '{"body": "Czy ktoś widział mój kubek?", "is_correct": false}'::json
    ]
  );