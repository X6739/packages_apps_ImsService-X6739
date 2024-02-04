.class public Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;
.super Ljava/lang/Object;
.source "TranThubStatusBarManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

.field private mTranContext:Lcom/transsion/hubsdk/TranContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "statusbar"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    .line 39
    return-void
.end method


# virtual methods
.method public disable(I)V
    .locals 4
    .param p1, "what"    # I

    .line 42
    iget-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->disable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    .line 58
    iput-object p1, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    .line 59
    return-void
.end method
