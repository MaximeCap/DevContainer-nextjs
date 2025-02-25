import { db } from "../db";
import { usersTable } from "../db/schema";

export default async function UserPage() {
  const users = await db.select().from(usersTable);
  console.log(users);

  return (
    <div>
      <h1>Users</h1>
      <ul>
        {users.map((user) => (
          <li key={user.id}>
            {user.name} {user.firstName}
          </li>
        ))}
      </ul>
    </div>
  );
}
