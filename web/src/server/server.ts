import express from 'express';
import http from 'http';
import { Server } from 'socket.io';
import { createServer as createViteServer } from 'vite';

async function startServer()
{
    const app = express();
    const server = http.createServer(app);

    // Initialize Socket.io on the same HTTP server
    const io = new Server(server);

    io.on('connection', (socket) =>
    {
        console.log(`User connected: ${socket.id}`);

        socket.on('message', (data) =>
        {
            io.emit('message', data); // Broadcast message
        });
    });

    // Integrate Vite Dev Server as Middleware
    const vite = await createViteServer({
        server: { middlewareMode: true },
        appType: 'spa',
    });

    app.use(vite.middlewares);

    const PORT = process.env.PORT;
    server.listen(PORT, () =>
    {
        console.log(`Server is running at http://localhost:${PORT}`);
    });
}

void startServer();
