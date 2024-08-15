.class public Lcom/transsion/hubsdk/bp/TranThubBpManager;
.super Ljava/lang/Object;
.source "TranThubBpManager.java"


# static fields
.field private static final EXCPC_TID:J = 0xd96e64c116L

.field private static final EXCP_INFO_TAG:Ljava/lang/String; = "thub_excp_info"

.field private static final EXCP_INFO_TID:J = 0xd96e740369L

.field private static final MAX_EXCP_INFO_LEN:I = 0x7d0

.field private static final STACK_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final THUB_CORE_VERSION_KEY:Ljava/lang/String; = "c_v"

.field private static final THUB_MP_VERSION:I = 0x1

.field private static final THUB_SDK_VERSION_KEY:Ljava/lang/String; = "s_v"

.field private static final TRACE_INFO_KEY:Ljava/lang/String; = "t_i"

.field private static final TRACE_TIMESTAMP_KEY:Ljava/lang/String; = "s_t"

.field private static mContext:Landroid/content/Context;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static mService:Lcom/transsion/hubsdk/bp/ITranThubBp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    .line 62
    const-string v0, "thub_bp"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/bp/ITranThubBp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/bp/ITranThubBp;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 65
    .end local v0    # "serviceIBinder":Landroid/os/IBinder;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sput-object p1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private static getExcpInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 269
    const-string v1, ""

    return-object v1

    .line 271
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 272
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 273
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 275
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 277
    .end local v1    # "stringWriter":Ljava/io/StringWriter;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getStackTrace(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 9
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "stackCount"    # I

    .line 282
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 283
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "message":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 285
    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 286
    .local v5, "element":Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 287
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 288
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 v2, v2, 0x1

    .line 290
    if-lt v2, p1, :cond_0

    .line 291
    goto :goto_1

    .line 285
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 294
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 295
    .end local v0    # "ste":[Ljava/lang/StackTraceElement;
    .end local v1    # "message":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStackTrace Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method static synthetic lambda$recordException$0(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 86
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch Thub-sdk Exception form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "catchEnable":Z
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordExcp(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    .end local v1    # "remoteException":Landroid/os/RemoteException;
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordException.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 97
    .local v2, "timestamp":J
    const v4, 0x1f7b21b

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "sdkVersion":Ljava/lang/String;
    sget v5, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "coreVersion":Ljava/lang/String;
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "eStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " eStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v5, v4, v2, v3, v6}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 104
    .end local v2    # "timestamp":J
    .end local v4    # "sdkVersion":Ljava/lang/String;
    .end local v5    # "coreVersion":Ljava/lang/String;
    .end local v6    # "eStr":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->tneLog()V

    .line 105
    return-void
.end method

.method static synthetic lambda$recordException$1(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 126
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch Thub-sdk Exception form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "catchEnable":Z
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordExcp(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v1    # "remoteException":Landroid/os/RemoteException;
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordException.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 137
    .local v2, "timestamp":J
    const v4, 0x1f7b21b

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "sdkVersion":Ljava/lang/String;
    sget v5, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "coreVersion":Ljava/lang/String;
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "eStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " eStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {v5, v4, v2, v3, v6}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 143
    .end local v2    # "timestamp":J
    .end local v4    # "sdkVersion":Ljava/lang/String;
    .end local v5    # "coreVersion":Ljava/lang/String;
    .end local v6    # "eStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic lambda$recordTimeout$2(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "timeoutException"    # Ljava/util/concurrent/TimeoutException;

    .line 166
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thub-sdk Timeout from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "catchEnable":Z
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordTimeout(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 174
    .end local v1    # "remoteException":Landroid/os/RemoteException;
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordTimeout.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 178
    .local v1, "timestamp":J
    const v3, 0x1f7b21b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "sdkVersion":Ljava/lang/String;
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "coreVersion":Ljava/lang/String;
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "eStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_0

    .line 184
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 187
    :cond_0
    invoke-static {v4, v3, v1, v2, v5}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 190
    .end local v1    # "timestamp":J
    .end local v3    # "sdkVersion":Ljava/lang/String;
    .end local v4    # "coreVersion":Ljava/lang/String;
    .end local v5    # "eStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->tneLog()V

    .line 191
    return-void
.end method

.method static synthetic lambda$recordTimeout$3(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "timeoutException"    # Ljava/util/concurrent/TimeoutException;

    .line 213
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thub-sdk Timeout form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "catchEnable":Z
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordTimeout(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 221
    .end local v1    # "remoteException":Landroid/os/RemoteException;
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordTimeout.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 225
    .local v1, "timestamp":J
    const v3, 0x1f7b21b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "sdkVersion":Ljava/lang/String;
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "coreVersion":Ljava/lang/String;
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "eStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_0

    .line 231
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 234
    :cond_0
    invoke-static {v4, v3, v1, v2, v5}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 236
    .end local v1    # "timestamp":J
    .end local v3    # "sdkVersion":Ljava/lang/String;
    .end local v4    # "coreVersion":Ljava/lang/String;
    .end local v5    # "eStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "className"    # Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 256
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "MM-dd HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 257
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "format":Ljava/lang/String;
    invoke-static {p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->getExcpInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  \r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x7d0

    if-le v5, v6, :cond_0

    .line 261
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 75
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string v1, "recordException fail, incompatible version"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 80
    :cond_0
    const-wide v0, 0xd96e64c116L

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string v1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 85
    :cond_1
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 106
    return-void
.end method

.method public static recordException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 115
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string v1, "recordException fail, incompatible version"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 120
    :cond_0
    const-wide v0, 0xd96e64c116L

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string v1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 125
    :cond_1
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 144
    return-void
.end method

.method public static recordTimeout(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 154
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string v1, "recordException fail, incompatible version"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_0
    const-wide v0, 0xd96e64c116L

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string v1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "timeoutException":Ljava/util/concurrent/TimeoutException;
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v0}, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 192
    return-void
.end method

.method public static recordTimeout(Ljava/lang/String;J)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "time"    # J

    .line 201
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string v1, "recordException fail, incompatible version"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 206
    :cond_0
    const-wide v0, 0xd96e64c116L

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string v1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 210
    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "timeoutException":Ljava/util/concurrent/TimeoutException;
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 237
    return-void
.end method

.method private static tneLog()V
    .locals 6

    .line 249
    new-instance v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    .line 250
    .local v0, "tranActivityManager":Lcom/transsion/hubsdk/api/app/TranActivityManager;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v1, "0x01010001"

    const-wide/16 v2, 0x200

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V

    .line 251
    return-void
.end method

.method private static trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p0, "coreVersion"    # Ljava/lang/String;
    .param p1, "sdkVersion"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "eStr"    # Ljava/lang/String;

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "c_v"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "s_v"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "s_t"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 244
    const-string v1, "t_i"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-wide v1, 0xd96e740369L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "thub_excp_info"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 246
    return-void
.end method
