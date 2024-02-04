.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.super Ljava/lang/Object;
.source "TranThubActivityManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/app/ITranActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "activity"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    .line 36
    return-void
.end method

.method static synthetic lambda$getTopActivityInfo$0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTopActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public forceStopPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCurrentUser()I
    .locals 4

    .line 89
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getCurrentUser()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUser fail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 4

    .line 76
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "activity"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 82
    .local v0, "mActivityInfo":Landroid/content/pm/ActivityInfo;
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopActivityInfo mActivityInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v0
.end method

.method public inMultiWindowMode(I)Z
    .locals 4
    .param p1, "windowingMode"    # I

    .line 103
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->inMultiWindowMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inMultiWindowMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isInLockTaskMode()Z
    .locals 1

    .line 63
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isInLockTaskMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setService(Lcom/transsion/hubsdk/app/ITranActivityManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/app/ITranActivityManager;

    .line 117
    sput-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    .line 118
    return-void
.end method

.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # J
    .param p4, "pid"    # I
    .param p5, "externinfo"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_0

    .line 43
    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
