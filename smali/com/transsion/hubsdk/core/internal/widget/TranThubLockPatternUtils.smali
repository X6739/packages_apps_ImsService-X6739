.class public Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;
.super Ljava/lang/Object;
.source "TranThubLockPatternUtils.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "lockpatten_utils"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 37
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    .line 38
    return-void
.end method


# virtual methods
.method public getActivePasswordQuality(I)I
    .locals 5
    .param p1, "userId"    # I

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    return v1

    .line 56
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivePasswordQuality fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isSecure(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 74
    sget-object v0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    return v1

    .line 78
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;->isSecure(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecure fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method protected setService(Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    .line 91
    sput-object p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;->mService:Lcom/transsion/hubsdk/internal/widget/ITranLockPatternUtils;

    .line 92
    return-void
.end method
