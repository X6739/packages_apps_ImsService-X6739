.class public Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;
.super Ljava/lang/Object;
.source "TranTimeOutOrExceptionExecute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;,
        Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;,
        Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:J = 0xc8L


# instance fields
.field private mTranContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;, "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "tranContext"    # Landroid/content/Context;

    .line 37
    .local p0, "this":Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;, "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public exceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "runnable"    # Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;, "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute<TT;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;->run()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    invoke-static {v2, p2, v1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p2, v1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public recordTimeout(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "runtime"    # J

    .line 84
    .local p0, "this":Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;, "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute<TT;>;"
    const-wide/16 v0, 0xc8

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordTimeout(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordTimeout(Ljava/lang/String;J)V

    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method public timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "runnable"    # Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;, "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 71
    .local v2, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;->run()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 78
    goto :goto_0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 74
    iget-object v4, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    invoke-static {v4, p2, v3}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p2, v3}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, p2, v3, v4}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->recordTimeout(Ljava/lang/String;J)V

    .line 80
    return-object v2
.end method

.method public timeOutRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "runnable"    # Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;, "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 43
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 45
    .local v2, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;->run()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimeOutException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, p2, v3, v4}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->recordTimeout(Ljava/lang/String;J)V

    .line 50
    return-object v2
.end method
