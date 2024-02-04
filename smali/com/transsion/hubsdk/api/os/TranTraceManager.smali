.class public Lcom/transsion/hubsdk/api/os/TranTraceManager;
.super Ljava/lang/Object;
.source "TranTraceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/hubsdk/api/os/TranTraceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    .line 27
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubTraceManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    .line 30
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospTraceManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    return-void
.end method


# virtual methods
.method protected getService()Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    return-object v0
.end method

.method public traceBegin(JLjava/lang/String;)V
    .locals 2
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;->traceBegin(JLjava/lang/String;)V

    .line 50
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TranTraceService is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public traceEnd(J)V
    .locals 2
    .param p1, "traceTag"    # J

    .line 63
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;->traceEnd(J)V

    .line 67
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TranTraceService is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
