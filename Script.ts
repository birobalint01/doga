import express, { Request, Response } from 'express';
import { PrismaClient, Dock, Sailboat } from '@prisma/client';

const prisma = new PrismaClient();

const app = express();
const PORT: number = 3000;

app.use(express.json());

// Kikötők API végpontjai

app.get('/Dock', async (req: Request, res: Response) => {
  const Dock: Dock[] = await prisma.Dock.findMany();
  res.json(Dock);
});

app.post('/Dock', async (req: Request, res: Response) => {
  const { name, address, capacity, description }: Dock = req.body;
  const Dock: Dock = await prisma.Dock.create({
    data: {
      name,
      address,
      capacity,
      description,
    },
  });
  res.json(Dock);
});

app.get('/Sailboat', async (req: Request, res: Response) => {
    const Dock: Dock[] = await prisma.Dock.findMany();
    res.json(Dock);
  });
  
  app.post('/Sailboat', async (req: Request, res: Response) => {
    const { owner, dockId, length, isActive }: Dock = req.body;
    const Dock: Dock = await prisma.Dock.create({
      data: {
        owner,
        dockId,
        length,
        isActive,
      },
    });
    res.json(Sailboat);
  });