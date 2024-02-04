.class public Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;
.super Ljava/lang/Object;
.source "TranThubTelecomManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/telecom/ITranTelecomManager;

.field private mTranContext:Lcom/transsion/hubsdk/TranContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "telecom"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/telecom/ITranTelecomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/telecom/ITranTelecomManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;->mService:Lcom/transsion/hubsdk/telecom/ITranTelecomManager;

    .line 39
    return-void
.end method


# virtual methods
.method public isRinging()Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;->mService:Lcom/transsion/hubsdk/telecom/ITranTelecomManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    return v1

    .line 46
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/telecom/ITranTelecomManager;->isRinging()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method protected setService(Lcom/transsion/hubsdk/telecom/ITranTelecomManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/telecom/ITranTelecomManager;

    .line 59
    iput-object p1, p0, Lcom/transsion/hubsdk/core/telecom/TranThubTelecomManager;->mService:Lcom/transsion/hubsdk/telecom/ITranTelecomManager;

    .line 60
    return-void
.end method
