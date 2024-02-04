.class public Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;
.super Ljava/lang/Object;
.source "TranAospServiceManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;


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
.field private mMethodName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->mMethodName:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public listServices()[Ljava/lang/String;
    .locals 5

    .line 23
    const-string v0, "listServices: "

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->mMethodName:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 24
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "listServices"

    invoke-static {v1, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->mMethodName:Ljava/lang/reflect/Method;

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 28
    .local v1, "mServices":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->mMethodName:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 29
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->mMethodName:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->sClassName:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 30
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 31
    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    .line 33
    :cond_1
    sget-object v3, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    nop

    .end local v2    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v2

    .line 35
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method
