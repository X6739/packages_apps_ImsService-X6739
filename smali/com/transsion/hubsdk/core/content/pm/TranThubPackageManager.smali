.class public Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;
.super Ljava/lang/Object;
.source "TranThubPackageManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "package"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    .line 35
    return-void
.end method


# virtual methods
.method public getAllHiddenApps()[Ljava/lang/String;
    .locals 4

    .line 75
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;)V

    const-string v2, "package"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 81
    .local v0, "result":[Ljava/lang/String;
    sget-object v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllHiddenApps result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 63
    .local p1, "outHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/util/List;)V

    const-string v2, "package"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 69
    .local v0, "mComponentName":Landroid/content/ComponentName;
    sget-object v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHomeActivities mComponentName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 51
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;II)V

    const-string v2, "package"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 57
    .local v0, "mPackageInfo":Landroid/content/pm/PackageInfo;
    sget-object v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo mPackageInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v0
.end method

.method synthetic lambda$getAllHiddenApps$3$com-transsion-hubsdk-core-content-pm-TranThubPackageManager()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getAllHiddenApps()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$getHomeActivities$2$com-transsion-hubsdk-core-content-pm-TranThubPackageManager(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "outHomeCandidates"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$getPackageInfo$1$com-transsion-hubsdk-core-content-pm-TranThubPackageManager(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$setHomeActivity$0$com-transsion-hubsdk-core-content-pm-TranThubPackageManager(Landroid/content/ComponentName;I)Ljava/lang/Object;
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/content/pm/ITranPackageManager;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setHomeActivity(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 39
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;I)V

    const-string v2, "package"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->TAG:Ljava/lang/String;

    const-string v1, "setHomeActivity"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/content/pm/ITranPackageManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    .line 91
    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->mService:Lcom/transsion/hubsdk/content/pm/ITranPackageManager;

    .line 92
    return-void
.end method
