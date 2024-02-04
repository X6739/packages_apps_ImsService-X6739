.class public Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;
.super Ljava/lang/Object;
.source "TranThubBackgroundThread.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic lambda$getHandler$0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/transsion/hubsdk/internal/os/TranBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 4

    .line 31
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 34
    .local v0, "mHandler":Landroid/os/Handler;
    sget-object v1, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHandler mHandler:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-object v0
.end method
