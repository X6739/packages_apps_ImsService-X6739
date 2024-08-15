.class public Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;
.super Ljava/lang/Object;
.source "TranBackgroundThread.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mBackgroundThread:Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->mBackgroundThread:Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;

    .line 29
    sget-object v0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->TAG:Ljava/lang/String;

    const-string v1, "TranThubBackgroundThread"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->mBackgroundThread:Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->TAG:Ljava/lang/String;

    const-string v1, "TranAospBackgroundThread"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->mBackgroundThread:Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;
    .locals 1

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->mBackgroundThread:Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;

    return-object v0
.end method
