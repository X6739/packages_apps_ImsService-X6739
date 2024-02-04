.class public Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;
.super Ljava/lang/Object;
.source "TranThubAppmServiceManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "appm_service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method static synthetic lambda$getPolicyVersion$4(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    const-string v0, "unkown"

    return-object v0
.end method

.method static synthetic lambda$new$0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const-string v0, "appm_service"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 30
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/appm/ITranAppmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/appm/ITranAppmManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    .line 31
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$notifyClient$5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->notifyClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$registerAppmCallback$2(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->registerAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    .line 51
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$sendEvent$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$unregisterAppmCallback$3(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->unregisterAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    .line 61
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    const-string v2, "appm_service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appm_service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 3
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 47
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    const-string v2, "appm_service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appm_service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/appm/ITranAppmManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/appm/ITranAppmManager;

    .line 91
    sput-object p1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->mService:Lcom/transsion/hubsdk/appm/ITranAppmManager;

    .line 92
    return-void
.end method

.method public unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 3
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 57
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    const-string v2, "appm_service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    return-void
.end method
