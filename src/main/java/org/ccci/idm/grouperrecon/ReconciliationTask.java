package org.ccci.idm.grouperrecon;



public abstract class ReconciliationTask implements Runnable
{
    protected ReconcileFlatList reconProc = null;

    @Override
    public void run()
    {
        System.out.println("RUNNING ReconciliationTask "+this.getClass().getSimpleName());
        if(reconProc==null)
        {
            openConnection();
        }
        try
        {
            reconProc.reconcileExternalGroups();
        }
        catch(Exception e)
        {
            e.printStackTrace();
            // try a second time
            closeConnection();
            openConnection();
            try
            {
                reconProc.reconcileExternalGroups();
            }
            catch (Exception e1)
            {
                e1.printStackTrace();
            }
        }
        finally
        {
            closeConnection();
            reconProc = null;
        }
    }
    

    protected abstract void closeConnection();
    protected abstract void openConnection();

}
