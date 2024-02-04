.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;
.super Ljava/lang/Object;
.source "TranThubColorDisplayManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

.field private mTranContext:Lcom/transsion/hubsdk/TranContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "color_display"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    .line 33
    return-void
.end method


# virtual methods
.method public isNightDisplayActivated()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 47
    .local v1, "nightDisplayActivated":Z
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 52
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1
.end method

.method public setNightDisplayActivated(Z)Z
    .locals 5
    .param p1, "activated"    # Z

    .line 62
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    return v1

    .line 66
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->setNightDisplayActivated(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNightDisplayActivated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    .line 79
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    .line 80
    return-void
.end method
