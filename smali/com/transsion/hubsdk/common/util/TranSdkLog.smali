.class public Lcom/transsion/hubsdk/common/util/TranSdkLog;
.super Ljava/lang/Object;
.source "TranSdkLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;
    }
.end annotation


# static fields
.field private static sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 69
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 86
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 51
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setImpl(Lcom/transsion/hubsdk/common/util/ITranLogger;)V
    .locals 2
    .param p0, "iLogger"    # Lcom/transsion/hubsdk/common/util/ITranLogger;

    .line 26
    if-eqz p0, :cond_0

    .line 29
    sput-object p0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    .line 30
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logger must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setLogLevel(I)I
    .locals 1
    .param p0, "level"    # I

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->setLogLevel(I)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 60
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 78
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
