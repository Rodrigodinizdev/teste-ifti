USE LocadoraIfti;
GO

UPDATE [dbo].[Reserva]
    SET DataAtendimento = '20260720',
        StatusReserva = 'Atendida'
    WHERE Id = 2;