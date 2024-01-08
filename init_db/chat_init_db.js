db = new Mongo().getDB('chat-db');

db.createUser(
    {
        user: "chat-db",
        pwd: "1234",
        roles: [
            {
                role: "readWrite",
                db: "chat-db"
            }
        ]
    }
);

db.chat-db.createCollection('user_data', { capped: false });
db.chat-db.createCollection('chat', { capped: false });
db.chat-db.createCollection('message', { capped: false });
db.chat-db.createCollection('pinned_chat', { capped: false });