.class public Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;
.super Ljava/lang/Object;
.source "TranAospTraceManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mMethodNameBegin:Ljava/lang/reflect/Method;

.field private mMethodNameEnd:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "android.os.Trace"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    .line 20
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public traceBegin(JLjava/lang/String;)V
    .locals 7
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "traceBegin"

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v0, v3, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 30
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameBegin:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1

    aput-object p3, v2, v4

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traceBegin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public traceEnd(J)V
    .locals 5
    .param p1, "traceTag"    # J

    .line 39
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    aput-object v4, v3, v1

    const-string v4, "traceEnd"

    invoke-static {v0, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->mMethodNameEnd:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->sClassName:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traceEnd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
