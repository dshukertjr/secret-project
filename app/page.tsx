import {
  createServerActionClient,
  createServerComponentClient,
} from "@supabase/auth-helpers-nextjs";
import { cookies } from "next/headers";
import Link from "next/link";
import LogoutButton from "../components/LogoutButton";
import { Database } from "@/lib/database.types";
import { revalidatePath } from "next/cache";

export const dynamic = "force-dynamic";

export default async function Index() {
  const supabase = createServerComponentClient<Database>({ cookies });

  const {
    data: { user },
  } = await supabase.auth.getUser();

  const { data: shoppingLists } = await supabase
    .from("lists")
    .select("*, items(*)")
    .order("created_at", { foreignTable: "items" });

  const markAsBought = async (formData: FormData) => {
    "use server";
    const itemId = formData.get("item_id");
    const haveBought = formData.get("have_bought");
    console.log({ itemId, haveBought });
    const supabase = createServerActionClient<Database>({ cookies });
    const { data, error } = await supabase
      .from("items")
      .update({ have_bought: haveBought === "true" })
      .match({ id: itemId })
      .select()
      .single();
    if (error) console.log(error);
    console.log(data);

    revalidatePath("/");
  };

  const addItems = async (formData: FormData) => {
    "use server";
    const name = String(formData.get("name"));
    const listId = String(formData.get("list_id"));
    const supabase = createServerActionClient<Database>({ cookies });
    const { data, error } = await supabase
      .from("items")
      .insert({ name, list_id: listId })
      .select();

    revalidatePath("/");
  };

  return (
    <div className="w-full flex flex-col items-center">
      <nav className="w-full flex justify-center border-b border-b-foreground/10 h-16">
        <div className="w-full max-w-4xl flex justify-between items-center p-3 text-sm text-foreground">
          <div />
          <div>
            {user ? (
              <div className="flex items-center gap-4">
                Hey, {user.email}!
                <LogoutButton />
              </div>
            ) : (
              <Link
                href="/login"
                className="py-2 px-4 rounded-md no-underline bg-btn-background hover:bg-btn-background-hover"
              >
                Login
              </Link>
            )}
          </div>
        </div>
      </nav>
      <div>
        {shoppingLists?.map((list) => {
          return (
            <div key={list.id} className="text-white">
              <div>{list.title}</div>
              <form action={addItems}>
                <input name="name" />
                <input type="hidden" name="list_id" value={list.id} />
              </form>
              <ul>
                {list.items.map((item) => {
                  return (
                    <li key={item.id}>
                      <form action={markAsBought}>
                        <button
                          className={`hover:cursor-pointer ${
                            item.have_bought ? "line-through" : ""
                          }`}
                        >
                          {item.name}
                        </button>
                        <input type="hidden" name="item_id" value={item.id} />
                        <input
                          type="hidden"
                          name="have_bought"
                          value={String(!item.have_bought)}
                        />
                      </form>
                    </li>
                  );
                })}
              </ul>
            </div>
          );
        })}
      </div>
    </div>
  );
}
