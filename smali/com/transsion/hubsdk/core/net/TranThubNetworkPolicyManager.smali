.class public Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;
.super Ljava/lang/Object;
.source "TranThubNetworkPolicyManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/net/ITranNetworkPolicyManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "netpolicy"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;->mService:Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager;

    .line 29
    return-void
.end method


# virtual methods
.method synthetic lambda$setRestrictBackground$0$com-transsion-hubsdk-core-net-TranThubNetworkPolicyManager(Z)Ljava/lang/Object;
    .locals 1
    .param p1, "restrictBackground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;->mService:Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager;->setRestrictBackground(Z)V

    .line 46
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .line 42
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;Z)V

    const-string v2, "netpolicy"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "setRestrictBackground"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager;

    .line 37
    iput-object p1, p0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;->mService:Lcom/transsion/hubsdk/net/ITranNetworkPolicyManager;

    .line 38
    return-void
.end method
