.class public Lcom/transsion/hubsdk/core/os/TranThubServiceManager;
.super Ljava/lang/Object;
.source "TranThubServiceManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/os/ITranAospServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "aosp_service"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/os/ITranAospServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/ITranAospServiceManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;->mService:Lcom/transsion/hubsdk/os/ITranAospServiceManager;

    .line 26
    return-void
.end method


# virtual methods
.method public listServices()[Ljava/lang/String;
    .locals 4

    .line 30
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;->mService:Lcom/transsion/hubsdk/os/ITranAospServiceManager;

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/os/ITranAospServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listServices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
