.class public Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;
.super Ljava/lang/Object;
.source "TranAospBackgroundThread.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "com.android.internal.os.BackgroundThread"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;->sClassName:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 5

    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "handler":Landroid/os/Handler;
    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;->sClassName:Ljava/lang/Class;

    const-string v2, "getHandler"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    .local v1, "getHandlerMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 27
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 29
    move-object v3, v2

    check-cast v3, Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 33
    .end local v1    # "getHandlerMethod":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHandler fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
