.class public Lcom/transsion/hubsdk/core/os/TranThubTraceManager;
.super Ljava/lang/Object;
.source "TranThubTraceManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/os/ITranTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "trace"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const-string v0, "trace"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 26
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/os/ITranTrace$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/ITranTrace;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mService:Lcom/transsion/hubsdk/os/ITranTrace;

    .line 27
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$traceBegin$1(JLjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mService:Lcom/transsion/hubsdk/os/ITranTrace;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/os/ITranTrace;->traceBegin(JLjava/lang/String;)V

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->TAG:Ljava/lang/String;

    const-string v1, "traceBegin"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$traceEnd$2(J)Ljava/lang/Object;
    .locals 2
    .param p0, "traceTag"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->mService:Lcom/transsion/hubsdk/os/ITranTrace;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/os/ITranTrace;->traceEnd(J)V

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->TAG:Ljava/lang/String;

    const-string v1, "traceEnd"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public traceBegin(JLjava/lang/String;)V
    .locals 3
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;)V

    const-string v2, "trace"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public traceEnd(J)V
    .locals 3
    .param p1, "traceTag"    # J

    .line 44
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda1;-><init>(J)V

    const-string v2, "trace"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->exceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    return-void
.end method
