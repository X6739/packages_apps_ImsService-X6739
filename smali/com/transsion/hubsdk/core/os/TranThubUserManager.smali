.class public Lcom/transsion/hubsdk/core/os/TranThubUserManager;
.super Ljava/lang/Object;
.source "TranThubUserManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/os/ITranUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "user_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/os/ITranUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/ITranUserManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    .line 29
    return-void
.end method


# virtual methods
.method public getCredentialOwnerProfile(I)I
    .locals 5
    .param p1, "userId"    # I

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34
    return v1

    .line 37
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->getCredentialOwnerProfile(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCredentialOwnerProfile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getProfileIdsWithDisabled(I)[I
    .locals 5
    .param p1, "userId"    # I

    .line 46
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return-object v1

    .line 50
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/os/ITranUserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCredentialOwnerProfile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method protected setService(Lcom/transsion/hubsdk/os/ITranUserManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/os/ITranUserManager;

    .line 63
    sput-object p1, Lcom/transsion/hubsdk/core/os/TranThubUserManager;->mService:Lcom/transsion/hubsdk/os/ITranUserManager;

    .line 64
    return-void
.end method
