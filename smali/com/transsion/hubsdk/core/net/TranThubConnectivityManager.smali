.class public Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;
.super Ljava/lang/Object;
.source "TranThubConnectivityManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/net/ITranConnectivityManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/net/ITranConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "connectivity"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/net/ITranConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/net/ITranConnectivityManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;->mService:Lcom/transsion/hubsdk/net/ITranConnectivityManager;

    .line 26
    return-void
.end method

.method static synthetic lambda$startTethering$0(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .param p1, "showProvisioningUi"    # Z
    .param p2, "callback"    # Lcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;->mService:Lcom/transsion/hubsdk/net/ITranConnectivityManager;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/net/ITranConnectivityManager;->startTethering(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$stopTethering$1(I)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager;->mService:Lcom/transsion/hubsdk/net/ITranConnectivityManager;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/net/ITranConnectivityManager;->stopTethering(I)V

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public startTethering(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Lcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda1;-><init>(IZLcom/transsion/hubsdk/net/ITranOnStartTetheringCallback;)V

    const-string v2, "connectivity"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public stopTethering(I)V
    .locals 3
    .param p1, "type"    # I

    .line 40
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/net/TranThubConnectivityManager$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v2, "connectivity"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    return-void
.end method
