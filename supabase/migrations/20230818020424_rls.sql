create policy "any signed in user can view the items"
on "public"."items"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT 1
   FROM lists l
  WHERE (l.id = items.list_id))));


create policy "aughenticated users can update their list items"
on "public"."items"
as permissive
for update
to authenticated
using ((EXISTS ( SELECT 1
   FROM lists l
  WHERE ((l.user_id = auth.uid()) AND (l.id = items.list_id)))))
with check ((EXISTS ( SELECT 1
   FROM lists l
  WHERE ((l.user_id = auth.uid()) AND (l.id = items.list_id)))));


create policy "anyone can read the lists"
on "public"."lists"
as permissive
for select
to authenticated
using (true);



