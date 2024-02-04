.class public Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;
.super Ljava/lang/Object;
.source "TranThubRoleManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/role/ITranRoleManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "role"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/app/role/ITranRoleManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    .line 29
    return-void
.end method

.method static synthetic lambda$addRoleHolderAsUser$0(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;
    .locals 1
    .param p0, "roleName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/role/ITranRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;II)V

    .line 46
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 42
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v2, "nvram"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->TAG:Ljava/lang/String;

    const-string v1, "addRoleHolderAsUser success!"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/app/role/ITranRoleManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    .line 37
    sput-object p1, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;->mService:Lcom/transsion/hubsdk/app/role/ITranRoleManager;

    .line 38
    return-void
.end method
